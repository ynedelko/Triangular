class Triangle
  define_method(:initialize) do | side_moe, side_larry, side_curly |
    @side_moe = side_moe
    @side_larry = side_larry
    @side_curly = side_curly
    @triarray = [@side_moe, @side_larry, @side_curly]
    @triarray.sort!()
  end

  define_method(:triangular) do

    ## Triangle Legend
    #  0 = Go home triangle, you're drunk (and not even a triangle)
    #  1 = Equilateral, 2 = Isosceles, 3 = Scalene

    if (@triarray[0] + @triarray [1]).>=(@triarray[2])
      if @triarray.uniq().count() == 1
        1
      elsif @triarray.uniq().count() == 2
        2
      else
        3
      end
    else
      0
    end
  end
end
