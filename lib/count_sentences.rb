require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count = 0
    self.split(" ").each { |word|
      if word.exclamation? || word.sentence? || word.question?
        count = count + 1
      end
    }
    count
  end
end
