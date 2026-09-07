Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230FF517BD2
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788798037; cv=none; b=jqb9rh9ZBzQyutZZklYgr5v5YAI5FkfQk4GKA1rRrQE79Jxy3joTzBGObKtK0rUcf4SUwFREsCR2kK1hye2KuB5G3FIo54Na8zm4u48niiJNzw5XBvFPI7luFaUpnmScnyXYkdQAxy2daILRzND8G8bbjyEwLLBEP4sR686bnp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788798037; c=relaxed/simple;
	bh=0Yj8YmwkT5B/qjW44RnrIGlnsLMDb0fnBUIOSM2VyjU=;
	h=To:Subject:From:Message-Id:Date; b=F/ZX1Nukpy2xFkC+zhxgno5mdTd8GnG6OC2HSgRoB54St9yGTo1xHsWVS1clBUx0T0puc4UY9zlkF0kZJ/QbEecpkSJCQTGMpUhKYgCAmD+pIUtkn7bjxdrzBk3hqiTLA2wtcix8B17r0LBIl1ra6muxxtv/Rgs+tHuxmTw/TcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSfrqxh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSfrqxh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69ABC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788798033;
	bh=0Yj8YmwkT5B/qjW44RnrIGlnsLMDb0fnBUIOSM2VyjU=;
	h=To:Subject:From:Date:From;
	b=aSfrqxh/D6T4KFp3GkxyvK6zcgVsZ/blRogHs08sad+mHUHV87fkWXzbPsamslBTd
	 QtqaZnyTqSNlYQxuIUDnu0EvDMSuz2gq9i2YC4/HGD3zHGhvurajg7lPLZq21SAOLl
	 4H8opWK50gGhR1ZGsZbIoljbnxrSrbO4pfwvwhIAiDaDcaJKA1lvhz3hpIWjDjeG0f
	 TO2pwCV3cyUR3MnB2rTcn8cAXk2zc83/2xRTFgezSMlU6yGDGvsU8lRtQ+8UYrajUM
	 Jq0xqscS/+XcVuwbk34xGBGM5bCYAhkWYf/QEht0gw5Cb/8rbnS3gDF1O16PtIlNEJ
	 QecGV7Cu8ZLPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19B8C79FA1
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879803370.8592.13658358063527731968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd6c1ea74823b74ceaa90113830cd0d981ccf238299cfe4a4d3bd0d04d3a83c
Date: Mon, 07 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788798033
