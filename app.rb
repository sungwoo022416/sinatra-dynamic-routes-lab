require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
  @name = params[:name]
  "#{@name}".reverse
  end

  get "/square/:number" do
  @number = (params[:number].to_i ** 2)
  "#{@number}"
  end

  get "/say/:number/:phrase" do
  @number = params[:number].to_i
  array = ' '
    @number.times do
      array += params[:phrase].to_s
    end
  array
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case params[:operation]
    when 'add'
      answer =  @num1 + @num2
      "#{answer}"
    when 'subtract'
      answer =  @num1 - @num2
      "#{answer}"
    when 'multiply'
      answer =  @num1 * @num2
      "#{answer}"
    when 'divide'
      answer =  @num1 / @num2
      "#{answer}"
    end
  end
end 