Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438E319E97B
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789348234; cv=none; b=iueIMOJq+bwQJMxxVh26BgFuV10W9hdr0mRtTUGGKeAOstgE/JMwToHRfPBqS7jhBCSAwomm52g1pvWnnKTfIA1TqaimiKU+Dl/eaL1n7LQ95EhzPmwYzBOdC5kslCTfGRh238WLXW+kwbnp4iJWbM0BnnVEq9gdmevcQK3ZBQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789348234; c=relaxed/simple;
	bh=TGH27bbPA/Hrz8r0/QO5/0vyoGHMkwkDb+EgmpSsd20=;
	h=To:Subject:From:Message-Id:Date; b=C35cuoIMm/W0dMCYJLgso/YuszV7uTmaPae6wEMQ7KfnnNQKkeamacZpvKiZXZZQn70MdHmm1p5z5P+j4ukHjShqDIGsXO7VMAy1eFVA/asofy3aQ2NgI2C1IPzuWJND2EPmnS9e9/eAumUGdNpyd8W+C7w4RpHDz5h0s/pzHLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siNNHvdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siNNHvdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB4AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789348233;
	bh=TGH27bbPA/Hrz8r0/QO5/0vyoGHMkwkDb+EgmpSsd20=;
	h=To:Subject:From:Date:From;
	b=siNNHvdHSln5iFmsvHxutTlo+Lw5CrMZby91XE7C2I57/QlQN0OORBrEu3VVTILDM
	 C+XyXgHLLNrYDpQ9XFi+9XRY0ljsZx0yzJzrKU2dtJy4OqpyYilFMTftQ1hct7Ai5u
	 lbEh37r6Z0Fi/yX8+7FDotQM2K2NStGW5fAqRcczr7Ji5Mey/kaA2h4fGmveIEbM3M
	 ZX7+EEKzMGYCHC+4UAUDZiYZjNBGeZRRaO1m/ygewtGVLOQG0juAK9VnQ9AuDMffhp
	 zrYwmDaB+lM0gPYMTUTsKjjIxbEilRcraV6v3B/fvkdyfMJgnWjJVufrhMGixmdO0t
	 jN4mtce38ykeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97E4C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934823368.14366.9614402471688753254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb4396c5df29ff38f48435d9f4d76475d0cf0b728dfdfcb930dfce74e1d60d5
Date: Mon, 14 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789348233
