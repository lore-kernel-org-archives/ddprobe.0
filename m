Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C63B2DECD3
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777407454; cv=none; b=ZvwRBo75g2sv27t6SErojr9k42BUVZ7NxJQ/HPoT05RVcvaM4oFGniGatFxYKON57rErbmiFFKk7VKM/77TDxCDYZcumvlIrePaUmsZXosIN61t2YNxAOSiC7DemXVnJtGwlL0TGzjLmV9GklqVW5fc60EvGP9GvfIcqvojuKyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777407454; c=relaxed/simple;
	bh=8kfoaqmAU5oTu99vgNSZ3Nk3lckEJJUGj3n79W4Z2hY=;
	h=To:Subject:From:Message-Id:Date; b=R7mPClG4lx05CfNNSJlr+hT1SFenoC0yVwPWYbUl89cclkrN1oI28vEMPLlQR5AshVN/uz+NcFB+KnS1MUE+R2cAbxm9yf7A/PO3h/0E6bUfAGkGRbhWvFuN3VaP0bS++Qog9ooz4+KgOa9MWlOPh7wZhbVSCfggpYqFnAjkWtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qs5cVBX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qs5cVBX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9012C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777407453;
	bh=8kfoaqmAU5oTu99vgNSZ3Nk3lckEJJUGj3n79W4Z2hY=;
	h=To:Subject:From:Date:From;
	b=Qs5cVBX75UukpOF6uOsDIMUxKgl3SnZN90k/KfuWH/gZST6/oL7TDjbB1NGnUyzae
	 G58ZqVmhWIXyOGNyuJDkT1Mfx2j48Pv61La28UPKD+iBljwVNTqLImZLPutLmCVrP9
	 P73BytPrmLTrszwGHvcfOuuLASOxp1sFrAbnIeYYFFi+soCHWH5suB5SpkC0aUyCer
	 RQRQejyfFR1N0xgzy9piIX/YhjCOim4FLFHSclBGPFP5REMhbijeG2nGn7JLs9VrU3
	 96mfC5T5o6d3mxAOCFyc3eC2b00QnH037hrMvtsEnT1K9SVh6cz21pHshxSlrbKDLA
	 QJmqCWYb8IS4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4DBFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740745369.26571.15344817924646572624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41e60cd3eb0d62ea27593594e853f8d678b6c0e0b76e91de2e9b0d741369dbb
Date: Tue, 28 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777407453
