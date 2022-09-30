class StudentsController < ApplicationController

  def index
    
    first_name = params[:first_name]
    last_name = params[:last_name]

    students = if first_name
      Student.find_by(first_name: first_name)
    elsif last_name
      Student.find_by(last_name: last_name)
    else
      Student.all
    end
    render json: students
  end

    def show
      student = Student.find(params[:id])
      render json: student
  end

end
