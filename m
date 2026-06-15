Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7722618FDBE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781544994; cv=none; b=EjGeUnX6EBjCnAsaxxNd6L434SGba7HcvsUIO5t95rGkc35cyAfphEsOINAMP3mF5iaP116abuHOo3TO2UOT70+iBAXhf0WoUgV8l+l7lPYFFckqJxbMrkkZ39Ik9ufapatdeWmEt6SWNvD83dfSRw1c8JEYMx2datpvYjjVVhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781544994; c=relaxed/simple;
	bh=6anSCmH1iOz8zof887nX8Yjhy7xfFyOnr/k4CpLYECQ=;
	h=To:Subject:From:Message-Id:Date; b=lEWCDGs9Nir1CMfyA+o3pmv6rnAHCt7/3PrHjVNvZoSIyU3QNI5pmUUGaxITf1MU/c0W8xSmugdgbnaXJpu9FvuljHY533Bcay5d4oMIxRUKqtc/KIQmmcjQOpZIDUS9bNtbhX+Rp2SfjrTt6jY+Iqm4VxURsgDJRkRIrlJaTU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeLEKxZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeLEKxZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13DFBC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781544994;
	bh=6anSCmH1iOz8zof887nX8Yjhy7xfFyOnr/k4CpLYECQ=;
	h=To:Subject:From:Date:From;
	b=oeLEKxZj3+YpQbHUnmpwkelx35Pg1Dbuqw4YHvsXoLCKO52T6wPl6go6zScUEsaNR
	 dRnj9eIa2fdLYb4g/mr37qQwnvUsnB8f3Pr5Zpx06GoZSw7kQh9/HV9myDij/O8T3s
	 9X2ddNMw4pyrl8Lbhfyimler9BLiwle5MY5Mwjx814H7Arfxpc36a+RdaITiVMgU16
	 1vm4bdDg/YXAQ8Y5oXs9tmc2tmmNVe1mu1ybXdh3i8C3S2mfnMa5LCwccFuvTkCWyO
	 dQQd0qMHhX3ezvFHMy1ie2t163pSPc4wh5moz42LJfN9IjD7pu58ZY3MYlIEOqRvcA
	 jnmwnhE0Uk/iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E45CD98E1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154499379.3155.7417718168957409699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3dd4906b074f76d1be2ffff6170db81d20bbfedd2e1d7260f1544339afe70de
Date: Mon, 15 Jun 2026 17:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781544993
