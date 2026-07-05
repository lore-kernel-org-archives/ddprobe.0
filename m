Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E14B2DC79B
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783291114; cv=none; b=XrT70Fuq/yuMpBk9pR5GB3Hc0/zrvWCnX8ldOXjn3u5cda3WtxzldE7/dfZwVrT+N+1huZYcEfxL6pe4pctNZGBr68Mz1ZMHQEaQG7EMdk7K/LY3fvR+UecHOWrKRUQPodvLGvEUfB5CsWQ9PdyO7OvXgCPXcCpbRxF1CLH25Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783291114; c=relaxed/simple;
	bh=Egwyw+lySdfSjDSXTmifby/6EjCogo9dAVhs6OPQadI=;
	h=To:Subject:From:Message-Id:Date; b=qKSM1x3RYjDCpMCIt1GNgCn69cD4CmDfL0fmQgnK+LC1vAKCoKCqj0nCYhwWHzJf3RU2pFryLNsFIay0iFcNuig5OHyY7NQG8XimFPv3dEWxow9Y0AJzgCHG1MIZZyGvaULJVw1OOtXeVUgy1KnzJSqjxGx9Wdx7FJ9hibLDi4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U21E1ddB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U21E1ddB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B2CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783291113;
	bh=Egwyw+lySdfSjDSXTmifby/6EjCogo9dAVhs6OPQadI=;
	h=To:Subject:From:Date:From;
	b=U21E1ddBJ2Hliqf/Sx6mKlFh+mRC+64CTvH43pYEd60r0VbpyVC++KlKysfESHfRR
	 PRt5Jd3UxiiaMJocowZfy3P6Zauys08Zj6FqbWwJga4jSLz4U12zmTwYorsZZcree+
	 KRv7dx4vzwIpPNRQIg9Z2TaLVgNSbJXzbB+aaOO5f1VryX7UpjwYTq/RsRiSWTY1ma
	 vkOLjvZPEsUPBBCgVsSfAOSh1og/zBE9QYmoxgFy3yaKGU7K6FL51GkdGD8eUddwKv
	 BqlA3CDqtro0W+wjn52uN1qkH3H7CFM5OKRJDasKphlKCCaIhQDhGXT6rNLAnnr4Jt
	 hbBi/F3uMed3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF81C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329111368.20390.12233399100989548391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b114938adc29b486f8076a2e02754165a5966ac1e79c5f4fa8916aa6548bda2c
Date: Sun, 05 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783291113
