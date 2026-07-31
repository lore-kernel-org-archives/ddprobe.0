Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4193E21255A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785463234; cv=none; b=LT1o8RPOu3Jy7dC/v0VvR1JrIFpRkP26IrxSU0PrOWkfqBkJC9svuzovzVjZut2C2k/uFoYENfpq3Y8UrTOU9Jgyl4b4kNzLpbN+jdmMgJMVmQv6spt/b64s2yOJoEh8wvEl508kURA3Li/2ZCbNTGOs0yWCcHYsiIxOeZLPZpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785463234; c=relaxed/simple;
	bh=aX5nsa0Zfhfc1VpTKiBhm5KfYUFX2A/h3wmx7+Fmg70=;
	h=To:Subject:From:Message-Id:Date; b=AQyuaCQ7Bze/7unbWUzD2TnUgLcSgtGOeQpyspCgfAJBSI6rzG1nJ4PemrJLS62SVrIjjiZLkJi7PQDTof48VYkofTFJKNhsGFOSTWesEXWNlT+8R067zJlDZ7XLflEJtFPZH937KhS7gX7wc8ciHgTvFTAJ5fyDIIWaSyKBPjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmJCOfDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmJCOfDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF672C19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785463233;
	bh=aX5nsa0Zfhfc1VpTKiBhm5KfYUFX2A/h3wmx7+Fmg70=;
	h=To:Subject:From:Date:From;
	b=VmJCOfDd8Nu0fjFoR731RGQg0AOBsMLyO5WrlVyTM5rAuvz6U+RhazH2qbUukfopP
	 KKCODfRV6vtd89kzBWVZxNGnS8SZbHH7//OFDEyR4bjDQia4W9TgBCi9bMOMXTIUDO
	 WjvYr1zrJVQvEiMGaYi89E78c77NLs6hyDr3n5Ca/nxAT+XVyLnALN24Q4Q9dwKIZt
	 R8XpZbkx8oOgYOlG+xLV0ffVY2OLRwWscXf0S5Ons/MwEr8MhR1p56zMnN1FJ1Pu+c
	 6qdQeF6oVoJIbZhds+QEP6qrp594Ft7WoHfdQJe618+DB9mm6yPJtavQkZukx/i53I
	 r2DMMP2L2qAmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8326C55162
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546323368.9285.17358984859180312936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa35a6b089e77fe5a8085a24d0e8443bba4bd00e316b3c3b13dc6443b8738c5
Date: Fri, 31 Jul 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785463233
