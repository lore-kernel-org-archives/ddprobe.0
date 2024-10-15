Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB6B33EA
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728965754; cv=none; b=Wuuizt4OGktglSLsYM23GfkUFguXCM59IaPb+PKWrRovtVpHl/KiBnn7vk+SRwl+O3ym/rNorpJG/whhi8fsM1/n37OYE2QU2hr+/OPG6ImR2yCwQKVeXYh0gxwGlmkU+/SP2xAxJs/lJ2nfSLx/hezmAKHvnEtRAF/sTJpzUqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728965754; c=relaxed/simple;
	bh=KkgsHRz7tVpI1WvPO8o28fY8nF00ck1D7t3Ve2Glq8A=;
	h=To:Subject:From:Message-Id:Date; b=qkfnItetyFTE99pwtQjn0vwCB+choiFcSSVU37E52x/OS5ze23lSfbMefUjjp0ZIjJeWw7+jEOtDy2uLsRpzGabc/gI5OZWpBcmhIM6+u6W2DmHWu96bjIhfEYTWXcHcn7p1alsnT6S9FB6Sn6h/1NBHauWkHgmtc9+R0NaROi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMlxIAwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMlxIAwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BD7C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728965753;
	bh=KkgsHRz7tVpI1WvPO8o28fY8nF00ck1D7t3Ve2Glq8A=;
	h=To:Subject:From:Date:From;
	b=LMlxIAwp2RL/vM5dtGcnghyQsdFFt6LhSPKjqF1LeplaCGzPL0AgibzHcs7RiNGq5
	 L9dEkso+VHsQxHbRLx9wCFHqcVlqQijnN3TOSD4cRDZIxFN71Y2pGTpryNIq4bPKOe
	 O33cuPGamthtM7iaZXqUaDuSFSol03f0Ph5En2KYu2GKuNQTA7H/UuxgJ7W9o0UxBI
	 sktLsTwhsOOfBK/9uRztcCy4LhLCC7X9IdOE3Zub8Wc+BfjSkmbaZkE0OnAfAEn5U4
	 irDV2S9ra+cVzgGZvBipO//CClHglNxlKOWhiUsHl8w5K8UorP8OkRQCSt77e/TUq4
	 cQcE0rdnza33Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B767CFC263
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172896575360.10400.15068308968116235099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55fa4a824a8527a02e51ccbaa5b3ff1c2e2c2305d27eeb544860b9ee2022c59
Date: Tue, 15 Oct 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728965753
