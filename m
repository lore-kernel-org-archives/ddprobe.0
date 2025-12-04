Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46692398FB6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764833574; cv=none; b=g4++qHjGp+/CEUdDuBoJZHhQ05n8uSLwFkiDX+jA6ZI8Y4YOq1eWRNJiVndpUwkKv0l2ejVPZeA1TCCDo2ZTPOamvloupTdMY1rf3qCy8EFhI0XP6hA1bcyo+VVQhFDHrcxW7CnC8l3uCkQnp61e7Qrz8zfsdV/J6y/zOKSPRHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764833574; c=relaxed/simple;
	bh=L7FUjMHHsXPrYAPJgtel92Hm8dy55peiNvQVt8oZDBE=;
	h=To:Subject:From:Message-Id:Date; b=SA4b6K6IxO4u5F5XREAE2PuD2lgCZbsqMuB35eVqCW8b5uQKx8POUcfc5DD8Sn59E/BksQ2C+JJLQX+/8X2lBgSsJ6aN1r/94V6MyUaft9eeFFnctqMsL9IUSDssFO0/r212GeTLpvzzOZ6qfL6fw1H0b/djWs7JEatPQ67HTC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f66mfM59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f66mfM59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11D4C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764833573;
	bh=L7FUjMHHsXPrYAPJgtel92Hm8dy55peiNvQVt8oZDBE=;
	h=To:Subject:From:Date:From;
	b=f66mfM59JWswar1bhZDEr6yNFVEBIqbgEVXIztJ7pNeA6wNeJ6VdtemVGIIWMaGel
	 frymA5DcXP96Ne3T64NGP3VkYQDq/P7BRBXbN4S8Z9yDH+A39zxhGsff14IqEh4m7A
	 QJjJ/HQz9hOQKA6NLStRLq+9VjYf4VVyAhNYzi4uWMc23M3xZwu1fo/IM3iXSGyqrS
	 NBqC8S78OfguYkkGgjmp7q89njZLvVrqntFDq3LMSxj0oS22WxuKsUyTmBt9+OijYg
	 gLsOfMvphFoX70dmeaO0dJ5WBfYNRCMbnMPFTOhMqlgNa6/+BqW7L1Ukx2fRLk1s8Z
	 258xPDz8cE/kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60F5D1D878
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483357366.5657.2941860441531872299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d754286bfa8b13fcd0b49c44aeebb511c3fd2ed61ec5e47c348e74fdd1829a2d
Date: Thu, 04 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764833573
