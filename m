Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA7D34BA34
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760246994; cv=none; b=ApMhD39hKmIB5m1MRDRbz+H4BdxJtGLnTM98c7TbvNvNpBqGTFM/khVapRYiPaDrwCMeUhMw55WJE0/vTufOfUu51Qd1ZKv6ZjYemVxZDj88DvyO52QEidGccFbWlz6Yluuk/LjieDZWoLnFiZhOMa8DrD1dhfGOKB5BW7uj02A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760246994; c=relaxed/simple;
	bh=BFDRj1ojfkSpZbJMgslTFLsS+bR2iTYdwAbXXmUMgOA=;
	h=To:Subject:From:Message-Id:Date; b=Oh8q//dRh9FSr8ZV9K14AIHZCGy34x0AMFnFC/lHUEMpEdfysRu/5hVeYu9u6z2rWcYOzhaQB5BEFCuqVx0CNVTysE5+MzB49x3qrqhc28xK/jRFO2EG65yJt8doJQkECUBoYgcGrUQwpUQzuTAKXCyheS7fTV6OTaNPcGNfSuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nG8MZ8fJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nG8MZ8fJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7367C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760246993;
	bh=BFDRj1ojfkSpZbJMgslTFLsS+bR2iTYdwAbXXmUMgOA=;
	h=To:Subject:From:Date:From;
	b=nG8MZ8fJljr2rUILIp3w4K3H7dLK5yOmDCOJ3/32VaxQhp2ZyMGAG2tDOL3cNkTTb
	 OoNqac1sIkB+XvSFRe389XwxeHtDfoM+IOopzYuFm2vuf46kzJMjWkgVUfI2zTgMYk
	 XW62uwxjKXv6hNA3muNZoZZSeeXj4AQuDRHO/Lp45Py/4dJO33UEI8b7HwSf1quOIY
	 XJXyow6kyPPB9aGMVMIFlAa1o+B0QwgecjnzJeIzj4+WbaNbsLv6dmTWYRP/Yol8gY
	 asLWry3OHdaRXlouJxLpIeltj83mvy4JTfMQPPOIqlG9EOhUjlCV8bg2ztBBNQ0dsx
	 q8ZhUHphNVDYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DA1CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024699357.10253.3847724527646409494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df83b587c5f2e438dd8163aabf2c43e6cdf7a345c5107ed3d371453532cf7203
Date: Sun, 12 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760246993
