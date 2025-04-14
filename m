Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7DEC13D
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744598394; cv=none; b=VXJbMQ2zdZQxYrNLD8xRnUbg5ObfnbVADyV6bcP7r8cz0UaZ9gEZE4rtVMw2516Q8LAp7hTvJywZJi7kvPt0MBFy28nutAyeXtqJaX251J5wjU1tg+nb40PGjHeS2pbpDOYx86TASSuiGKzVvnnmWOjInqfHamuslKT3wX6RVv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744598394; c=relaxed/simple;
	bh=4pGt+KaA3yG01uvl55CeH788j44eUd6s2G/7kebEs7g=;
	h=To:Subject:From:Message-Id:Date; b=T43fej3sxNT3Dj6WNzYOVjLj74r898rtDpUNo+DAXcSHO4caaMXwKlSY/ec+YK2w4BeqP18retMWWm5/RtghcCx5aOmTK4ohHABkQi9ZPf2LgcqVcaFgvCfYg8TPe2Y3RIxKaOEtn/WJwikfjc3DJ1jhFLQMutv+oRIyFV9bCeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inqcsFXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inqcsFXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A645FC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744598393;
	bh=4pGt+KaA3yG01uvl55CeH788j44eUd6s2G/7kebEs7g=;
	h=To:Subject:From:Date:From;
	b=inqcsFXXM110FL79bCB/QeOYKK4t1vfvkuEoAQlMGZQuNqf7ZaZCSVe2Pkg+7cYFn
	 xrOD8L4iamOer8lasLvEjG08ml1jso2egqBmCSw5qyv8+Y1u0210WO66JH4nVaPE9X
	 oJi9H97vixXXLTLEiossBLxX2bWO/khwS85LrPZiu3ipq4qE0nuw/eLNL2IcZhTcBD
	 gH7rgTKoeRfJU+Fvj2+pNjLcmaou9UOxeB6lAl81RqSO1jW2+DDxGGDYV5sEQWsiLF
	 LDbaOnQ37Moe/XLCOR+jUxYOjPUfQJrgeWAs5dUwbKS+KLtEX8Zh0b9+7uPrGv2tl2
	 6njjoEKdwQvmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F53C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174459839359.5637.7880482563612970244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b024f61dff5b8e82992615d6ba2e58f55df3db91a7d5545aa51b12d505bf378
Date: Mon, 14 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744598393
