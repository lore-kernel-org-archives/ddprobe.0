Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136622C1AC
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721389554; cv=none; b=J1LgbVyo2QfFVGfqLG5r0190+de+CyqKfSoS3e/vx6flu6k/5L9DFLpump9g8sXmvBq6RkckZoJ3jlF/FDkjkMJjgGdlxzIJVR28KU39cSDsiUZtSIlRdPShtZSD0dtDTMG22kVQoWprSou0PQYGRucDOY0m//QZ724yGSY298I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721389554; c=relaxed/simple;
	bh=21rJgPktooc03+wrWgVcq1YcbaC0QQwQnzp5LGwf+EY=;
	h=To:Subject:From:Message-Id:Date; b=tovWZWG6Xu8m5luEWXLCx5j3ULfBxoR2enKFdZGCPxIu1eSPBX8K0TP/xVhsTS/Tv0bjyEfnTgltbTpXUFdsqCFsHRTxk668mLv/3hJAFapefNNpm/CncvMqM4c4i8lePbmxtKGBvaLJR1nCe+qEYKUzK2W1/TWHKDTRGj2VYD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rE+jUVOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rE+jUVOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC12C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721389553;
	bh=21rJgPktooc03+wrWgVcq1YcbaC0QQwQnzp5LGwf+EY=;
	h=To:Subject:From:Date:From;
	b=rE+jUVOYaqBV2WR2oDPLd34POMZX8dm/w1lZiBHnTT8bK8CSBB6VaXrFMghPFiJdq
	 WQXXIXY9MIt3kbbLlJ14AgGRy2Pi/sjMks32nHWspj0H3TX1Sc3zjIBPHif0q726s+
	 FYFw0IV85NB6ioMVWdUpQwwkptdpNjaWuIP8jaGGyzUh7RUaWiqJJ6smiPlxsaqkPR
	 LDg+oroyO0gvufQgtpUUdDqwd9fyJgRrZrUUfD92hjmluiAnObKpyvr2Nssz3FFjpD
	 /ypswCxPCf1Vi5FuIz0QDt9nm8pX1X2q2Uj4jxSq9C2M8S7p3CkB4rkfH7XH6tLc0q
	 X/FkjfQZBKgRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988D2C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172138955361.19410.12224350675380353454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e588072a00e188f2f63f5f5bfc50b8b35f5197b0d293fc7a41e481e37a51be2f
Date: Fri, 19 Jul 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721389553
