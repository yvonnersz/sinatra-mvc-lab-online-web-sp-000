require 'pry'

class PigLatinizer

  def initialize(user_input)
    @user_input = user_input
  end

  def piglatinize
    string_array = @user_input.split()

    pig_array = string_array.map do |string|
      if string.start_with?("a","e","i","o","u") == true
        string + "way"
      elsif string.start_with?("bl", "br", "ch", "ck", "cl", "cr", "dr", "fl", "fr", "gh", "gl", "gr", "ng", "ph", "pl", "pr", "qu", "sc", "sh", "sk", "sl", "sm", "sn", "sp", "st", "sw", "th", "tr", "tw", "wh", "wr") == true
        string.slice(2..string.length) + string.slice(0) + string.slice(1) + string.slice(2) + "ay"
      elsif string.start_with?("a","e","i","o","u") == false
        first_letter = string.slice(0)
        string.slice(1..string.length) + first_letter + "ay"
      end
    end

    pig_array.join(" ")

  end

end
