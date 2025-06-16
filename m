Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126E2208994
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750084794; cv=none; b=TlaCpJdCAOK7aLKjfwIyubik2Z0SEDGy8bDQJOhUijPw07aBULfl7GrQUv0IhzlMtYB8mPNp8dsukjQADmw/8LR2UL6xiWoDVOyqEkckzgXlExkcImMS4YQCjH4y6/rD1/3kwWXS4SoPHQP4r5iFtyhks7zHUGdISQ2g2G1EB6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750084794; c=relaxed/simple;
	bh=uDEIBFahZddzPbVY2JlyFLQ2mgW7RrTnaKqFmwZFMTo=;
	h=To:Subject:From:Message-Id:Date; b=nQu03Xq84kU9HKVGxqdrawwof6k3jxm7dfcOyqmbn38B2tt1N4vWpB9yiP8jqerx6juue+WlShowoK3FJH0IA6xl/rMFJhjjIhVT0I2CP1ovX1y2xG6zkus8/vwB9t/1I9Lfg/ULOrO7xj1eKHCWCpav5NOcW40Nvr+xt3o+F6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnL65hm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnL65hm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE62C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750084793;
	bh=uDEIBFahZddzPbVY2JlyFLQ2mgW7RrTnaKqFmwZFMTo=;
	h=To:Subject:From:Date:From;
	b=mnL65hm1kdfAJjq5q//JsV6tjTEBzQrUVyU9j360HoaB2YrI4nOI5L+85/4Y52Ocz
	 BVYYB380QJw5OdXSk5v6Xq+dfWG/Jlm3dDlrCIxr/Yo5SGEfn1p1FN6z3Fu3MgPx6K
	 2/6Rv/wTXzBhwFMxbHNDy25I6HQmiZha2KYI2Lh27um+mv1DMUAl6rve1KwQutZO6r
	 cA9KUMAXXxuWwlN0V8ykdHcEgfozWTfx23chaEDOvfZi5BHQq4xoYT3iSBbJHflAmm
	 yIincKOczyexxU6ujeuTg8wMdCFbbUQL8iO+wyPLmP3kR5/zFCNKhdnq9l2rQMgVGo
	 p144S+CFFhmmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF22C71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008479357.22723.3216861564217085225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ffc00172d5e76afdfce6c3df40536d7275a4fc7e8d32b1b75fb401898f6f591
Date: Mon, 16 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750084793
