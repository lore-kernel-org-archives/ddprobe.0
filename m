Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D7E2FD7B1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784396314; cv=none; b=NmpkSkpRoQeyScl88pQRw+amlcuQAjY1b+sHHs7+TyJWpVnn69mxNTwm4QtGoRYBK8Yci4H0kZJaVZFFu5eGKJBKWTWrljS+7yMoVCMSQV+L0yw9V8PmdcAyjEiEVmJsjS5vbHoIflJb6gHdEmRHixAAksEPwrwD8AakSjL576Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784396314; c=relaxed/simple;
	bh=UqLCZKlXY8eESB1+R9w+bRkgtMF0mbEoIBCkAmjbCr0=;
	h=To:Subject:From:Message-Id:Date; b=cKQ5cC+vcUVVuk909KDKCgSZSoFuH2heNjs+0GGtLjCWr26qr4LwQlnPRKJAqXaq6cidCkV13Nxg5xMXxDStXq37+rs1SwHCMgAgoenO5zso1Ny/0pdB9TM30HAMLjT/lSD6WWNFArguiX6CQybbwFKkzAOUQvJny+tz2Uj0RFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiOpgq8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiOpgq8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE50CC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784396313;
	bh=UqLCZKlXY8eESB1+R9w+bRkgtMF0mbEoIBCkAmjbCr0=;
	h=To:Subject:From:Date:From;
	b=JiOpgq8G5rc0ZTByc0Opd7ShyRvLMh5gC1ShBDb1IMC2d9/NutPhOhTSWIfDunV9p
	 Y3cC5p67WIrRU9LD7A1j9jGxKaXmm9krtdIGcB1HqoJcb+qNqOFNJH+cN9C8Svr5Fi
	 P4G3IYvFT/g7EK9TToYz508jDDrh01mjhYmXqOu402X4mS14irvotkTdn+elYmcBWu
	 hVFIptVucKsgELNnKM1bvHwJDQAXCLGlcEfp4NEELP/T2Evb/hzCgtPs/3Y54moQFq
	 p87OLFKs3/lTM92dnEV9DEuKbUeHU0wNgEWZQ3lWGKKUy4uGyyxxJ6jIgRmr4o6K5m
	 t7Ktx5TprvSDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5354C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439631370.26740.16403595611576351572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 803f6e9698dcc4e5c1b2c4914026161ab03334d0cf39cd4d1ea12ca438fda0fd
Date: Sat, 18 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784396313
