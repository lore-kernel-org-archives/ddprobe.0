Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93723A381D
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784384916; cv=none; b=Q36ZCUWfUZi9DPgrwxgV4PJF6u7CqLi0RnULweSUgq+mkDIXfo5VKFQ2SsupNH14jW85mZCDVsQNXXWhV3px4rKyK6eqHI5DGGOt1QCwdwSGoO2iXqsQcXmIQ0Q+JdU5IcKdrhX2PPnp69yih+oX2L0Hcx1ed9dj+bsdWWSSD9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784384916; c=relaxed/simple;
	bh=OG+gQan2WyuXEzMaJ/tigfHrF7pIoZERm0RO3PeLKSI=;
	h=To:Subject:From:Message-Id:Date; b=F3vX1UvSE/GPIqEtec5aGKsfozp80TXPSMx814EC00PkpyQjrsy2vKJJTzBU3ySGySNRk0AOHC8y3cGW/Pas4nbb1SUIr3FlTa7d1VooTNuR2BdtyXSnnlUbo6aD/w/EPSHPxHUXNUKyLxT3lUDDwxWHQQt3dQ/RrMuSKBhSdqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJ8thyPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJ8thyPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD13FC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784384913;
	bh=OG+gQan2WyuXEzMaJ/tigfHrF7pIoZERm0RO3PeLKSI=;
	h=To:Subject:From:Date:From;
	b=QJ8thyPxuqWJk6FrAfzjxFjqw9e9CN5+YTQ/AX6T+rd9/0eddQwdKyRgy5LckJyvs
	 MbptkmBTMr0CReD4G+0ZGoAbmX7tgUal0xGIOxyuuNLZpu3EoriFmW4FWr2QAutHGa
	 x7VdulduBj1EEnC5smgm8dXsnISqq3kJMSxcYpptb/5hTgtAgTNtZgh+uA1sGYLdHZ
	 4p0AcI8tQG39nPdtyzHr2ErYh+46uKqakbHNPxgAH+SVQpMzjBG16VveR8a6NBMnIH
	 32nw6yKGCm5C1uB2PNdg4bnUoxKHShVxsY3ydyIlpcaDkmGnj1FTvKTLckIPozdrhY
	 HbI0FjwkQQu2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D50C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438491368.14618.12597932585634076969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1c8e8dedfffffbe888c0f76a655e9fe0a677bf2e155ec968d96fb95e6ceb74
Date: Sat, 18 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784384913
