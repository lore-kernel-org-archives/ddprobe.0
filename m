Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D17223DEF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754888994; cv=none; b=A57mTbhBwgNDFA5fWP3+2D1hgUXQK+UvKwgQMNWcZpkHFZhrgaAtal7dVCToJpN18ByyofydeJSfZCA1LIM+6ft4l94xWFZe4F/sVmAmOj/sYS77vNg4EWjPGyvaorwTsPiRta28QE+Pig0Bn7VpNBqppI8n5Ssv8z0PZTfBBJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754888994; c=relaxed/simple;
	bh=yoLwR3dEVkZR/Nv9RoCmljxzXxCWFswfAjTEPn8dd2w=;
	h=To:Subject:From:Message-Id:Date; b=CpKmq17bSORDub/Bf4qgkFNGsi1LnmF13z/ZlYNyPHkvk9stfaBAWLuYa2L1Pval930kD0L/yEDuR2uZGxNDdsCi/KT0Y5w09CO6vFGUBX1s9RCltZfrn9CSB1BKMcAnpo3s9BrP/VQkotn48worgAXVJdZ8CcgzYuByqoikMG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/sdVKfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/sdVKfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4377C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754888993;
	bh=yoLwR3dEVkZR/Nv9RoCmljxzXxCWFswfAjTEPn8dd2w=;
	h=To:Subject:From:Date:From;
	b=T/sdVKfxNPei0tCLHqoUk/Tfg32BN1j8+j3c3U1LkoENYyhgG6f1CWrXN9kFK62Ol
	 MJUgsX7049N3zxiGDa7lre202fmoKGKxds0FoPNKJhPFVLpBiPInVosAOFf2WaTip/
	 aku3Z47Cblh/KBQO6o/IE7gV2/7/4emTDY5VjQMZJ4Tp9W2Pr1EW2m9vBHceKX4W0U
	 TSOuczdvTXqS39XlehjeCsswGioXQldP58rIdOTnlNJ9i6fIRg0xuQj8/n7tdYD5+Y
	 vPPEL6TZEEv/WadoIayOGG5Z1SJhwiExkoz3w34jHN3E3WcM7l1WgfiPzmW7eEfiYt
	 pQMinvCuPrEjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9262AC87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175488899357.6537.7245933954584565103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f6857d6e6bdf32a5b208f938948ff05cf8a6ba44ee4dc903f775583fd0cc44
Date: Mon, 11 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754888993
