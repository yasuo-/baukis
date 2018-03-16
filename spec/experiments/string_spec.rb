require 'spec_helper'

describe String do
  describe '#<<' do
    it '文字の追加' do
      s = "ABC"
      s << "D"
      expect(s.size).to eq(4)
    end

    # 一時無効果
    xexample 'nilの追加' do
      s = "ABC"
      s << nil
      expect(s.size).to eq(4)
    end

    # Tagの追加 :exception
    # command: rails spec --tag=exception
    example 'nilを追加できない', :exception do
      s = "ABC"
      expect { s << nil }.to raise_error(TypeError)
    end
  end
end
