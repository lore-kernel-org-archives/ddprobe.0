Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE9F78F26
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772586894; cv=none; b=Lx4ba9f3fwQ38FJujjYr3NkD/TCvJjeB9kO1leODJRm39j5gtEgM0XXBtR0ND7eYPsSHEDEidRYRI8AqMoz7Gsqu+N486CMULM4DeN46v3wRHQksiufjIXDq3ICWM7I4JrL94g/lPTljfaPU3Jd5h90gqHZ7jsuRq4pdwhsitNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772586894; c=relaxed/simple;
	bh=RUanWP49Z4sPyXqFK9kVM4KBC0kzAJIJZoyYpNNPMRI=;
	h=To:Subject:From:Message-Id:Date; b=tDipQQ4rs61nsO9Q1R2x6azVBDT5FpRz6NF1tsLZOlT9kdEtdt1173d4xiQPrUcqpKO8fJYvpQ03i1/e/6JtEFGTPRDzw2q5TReuRjinMe4NUTdnjDt9w6pk+GPOihwj6cgMvEQ9C/XiovYAKB3bRA7tdlnxFL21hEJ80Z+MxsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNJAWZ5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNJAWZ5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D8BC116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772586893;
	bh=RUanWP49Z4sPyXqFK9kVM4KBC0kzAJIJZoyYpNNPMRI=;
	h=To:Subject:From:Date:From;
	b=PNJAWZ5f/Z+aL/F4rRIaoYvdqh72nMX5xFzky9X3r1PiC2y/S3pmC5S7B98BQf65k
	 9/hnb3kGzVZWVOSCmDoRTG+3lkwQp8wNdD9rLZioLhw6c1xBgRWOhH3Pn1xALaFqLG
	 2p2jOH1tY2rhmXzgfahOA6C2EGOsL9bxRqfViQppjKB8MVjOdWUx3j83N8hHZvDR6N
	 Nfyo4v8st5ogxOK7it3dvTbrIa3fXlxw17SRVRBSdDuyp8gQ7Nf4+vnn6zsfHM4Op4
	 2Hw8dOHhCBBrrsclCvb/WQbTH5bbX7oG8jO9twHyioOrP5cfQk8BitAoDQedyL6mcO
	 WCEOlNDMHcFMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A2DEDEBFF
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258689359.1720.3346663069243941507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ef3a07da00d92b76c91e7218fcf4fe49ec658c4f6bbfe2af70a2638f05d98c
Date: Wed, 04 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772586893
