@a = global i32 0, align 4
@b = global i32 0, align 4

; Function Attrs: noinline nounwind optnone
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 10, i32* @a, align 4
  store i32 5, i32* @b, align 4
  %0 = load i32, i32* @a, align 4
  %mul = mul nsw i32 %0, 2
  %1 = load i32, i32* @b, align 4
  %add = add nsw i32 %mul, %1
  %add1 = add nsw i32 %add, 3
  store i32 %add1, i32* %c, align 4
  %2 = load i32, i32* %c, align 4
  ret i32 %2
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Debian clang version 11.0.1-2"}
