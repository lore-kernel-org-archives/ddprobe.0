Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FC13D3D19
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770303234; cv=none; b=oQLFgf672k45achtN+/P/D+adgkejKBvXiCvBb39RJF79yF3DCmNh/6MTOqe5hOoZ4XBgvFI9lSniRA44RwQRxK8Wc8DeKwXh/HbYHyboRt9tWqDl2qTpfDjG90Yk/F0aMG0Ez+cmjZlzE/aITM9jchVv6XhCG8Q18kLHjwmrzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770303234; c=relaxed/simple;
	bh=ADcyUdVzUq5g/e7nOqIV1xZk/rljeq/xcZIrPViNbyA=;
	h=To:Subject:From:Message-Id:Date; b=Lgo0HN2vBdvIngMCTOH45nPV9ZSxEDWsGWMjekkqRubVD1mhLUO6FnmQcu1KgLAj9rkNvTS6Sdf7QDWJVBqhEyseDmAJl11v751YeufBtN0SDuKYpHaFM9Mrhmccahvkoej3MTnGJbNJxADBrzJiGb/ky9D2eX7W2LYKe4h5r7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSGMC3I+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSGMC3I+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EABC116D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770303233;
	bh=ADcyUdVzUq5g/e7nOqIV1xZk/rljeq/xcZIrPViNbyA=;
	h=To:Subject:From:Date:From;
	b=jSGMC3I+OgFUOBxJ8mqvId1pOsxm1v0nTHAscA9m8MyPsd+FplWMxRTD0ctM00cBa
	 +WO5ZVCeehaHq0x2vuUN+1q79vKGRUn5nxhuvj68SBAbX5L38+IEGrNBe5yET//L8i
	 0n1V0Oy1TvP8Aeu3YgATTrhAa7d3kyjeDCRySMIQP1Gf/mlZbPfrh1eFR+MYVNk0bR
	 qDeweyn2plaghW2IY4bCGcmOaygLg88FiE4YzaaGWeu/DpBqKJqjLco4EpKdgK5yIA
	 ujc0ZgV0KFPgcB/8Qpf4IwkJAl3EzdvFlJf42bbuAIIVQE+TuyFv731rTmmkVAx9oi
	 juupZz6ySI2bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C74E9129A
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030323360.14648.6426306125162229884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de6d56e4e60680ef11e715141d75bd3f6c64483cedc6fb61b735248b5250f92
Date: Thu, 05 Feb 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770303233
