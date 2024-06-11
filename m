Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC804F883
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718126903; cv=none; b=m9qYyZzG1AM5I7fcxMq8zJKro6Pn5QNn6C/l0olaJbVM9tIPYqyu65Ne/wqxXR5/TmccV++8t2NQLY5b7bYZWhcrN8zzHPB1JH1Ugg1sGHNpz6/tFTH2yk1cqEbmYHLa+l0Nx1mCiX0pWy3Kl3j21cQVOGDX9H5M7wiEXklKjqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718126903; c=relaxed/simple;
	bh=Pr/Xj1uObmkTPg0nw3r5eeHRTUbD6frrr+ma9DB0Z+U=;
	h=To:Subject:From:Message-Id:Date; b=GGYwrPDcflir0z8jTwjhF4lulu6AFVbgPOowtNDw34EQSD2g6BN5zqAYwprJZPun8a6BK8HODDdbEdo/hKHTGx4SZ9jgXEIYUlRbzxzgmQcAhDs/xyfidYyLIoeXNV6F16S/CzRWgZ42wSZLYBm3lRheNWKDUHneVqUi9NlZ7Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9CApxRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9CApxRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD420C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718126902;
	bh=Pr/Xj1uObmkTPg0nw3r5eeHRTUbD6frrr+ma9DB0Z+U=;
	h=To:Subject:From:Date:From;
	b=o9CApxRDNCb1Iial7OYVx2pc/mHcMbuQIYOA1iyFiL4+2P+5wXJFIJMtvhmzDs2m5
	 pRscyqUQ8p6bhy7wuKmjGeioIv+yNMQE7d79FrUYklFLlDsq0apfUYYVU8ST2QrXnA
	 VSsl2nsCrm1C3jORPa+xZE1EgWzxLJttp70WhppG4NDzZdPiNGLtfFHCwyzfKsMmAl
	 gUOimSPEIeRmYvXfUTjkT1lVqCfCP17OuVFa4GC5Y3OU+5Gq4K6tx1OrfR4LR63pdW
	 9IiiTam4CfryfLleJLNbmDroo+8UWEYu4r21JPAIz6Sb5Ytug3qMsVYCu6vjTbaHYa
	 6uxsG2bAlckIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF12AC27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171812690277.32244.3866461022435178521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0591345dea8fddc523507bdc5f0774e5d5f3ceb25c33e4bdc7c921eb4441452e
Date: Tue, 11 Jun 2024 17:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718126902
