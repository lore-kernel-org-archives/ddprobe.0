Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AFB524F
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732276554; cv=none; b=H/w+nmeqx8LBaV68T8WgReCwvNySGtd0jS5OZKzWDvS2lCWH2g3la/S3G/Vx9zbcM5gzlHoOE1XFWJ8Qo3Y0XL6loNtVqDNAGroJhdT1RK0rLwdzms58s7i3P2sKK3D4MXNP5TtW5T9G/U5pyBNCW3RKe31FBzYtYFI1vqV9Nvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732276554; c=relaxed/simple;
	bh=vhv2LdoSLmm28R3a9zJIusCvzu/f51gST9BMsZ1Bjfs=;
	h=To:Subject:From:Message-Id:Date; b=IeKxSOL/PHB3AfV2deoZYSttZYyydAEULN01ZwRzqUU3GCSb76FozZvJ4mJzDdRMMYR+/ZCIGrdkRqGAfHJ7aa6myuey8SE0WPhEfq0PI3YKif/8n0aYhU0Q+pg7h/5SIFiU3sKz/deYmNgr4O6uZQOhxjMGRjqBLZ9jvrLB3ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRTpXHW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRTpXHW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4DEC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732276553;
	bh=vhv2LdoSLmm28R3a9zJIusCvzu/f51gST9BMsZ1Bjfs=;
	h=To:Subject:From:Date:From;
	b=bRTpXHW+3tlivF4qhOaV5KU1/xA/MjYSjnQaXTO9OmZzbQ6fPP7YflLJddBDpZFu1
	 rbhi49VSQcTrubLo3r05BdJdCV5Nkc/cCGbLeSfaFQIPJIqY0cfklWD36WRd/M1c7L
	 9emHLNXvb5x5gjmmFxYASaa9gB70Y5bzyTsExubd0OMG4j4gaIge7XbRL/OaIrWtNL
	 TBMQX1zZZtpUC36eZHYpbDX31mx9pr5es3iFVjXC4PUS9CYGcCrFsJqdOQJCLynEb8
	 DD6jLp+iN8NThy1fFH1MRSjDqaJ4rMzAimuFvMjZj/uAIrr5Wgh1b3AttZonfmVpXJ
	 /DJRNZtu9pi+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFAAD75E2D
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173227655365.21424.951891321213072474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6991ae2625f1144783227bd60d1ffa81a218a1438194544e6b2e8d6ba0ce23a
Date: Fri, 22 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732276553
