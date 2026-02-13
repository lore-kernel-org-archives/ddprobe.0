Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DFE285C91
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770969294; cv=none; b=CJxV39z3UGagvtgbYTb2sISQXKONeg1VdackOPt2eOtYqqSfrRaFfqasVHLyY5Zrjk/6crtNTbDLNBMICPLC2Q4Tq1bkRys7LQY9ooF1Fo5XBNqJmSUteyAOM0kVl35ge5nhvPTQORXqItP0DOYWyox6QedGYU5hHDUTsXso5qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770969294; c=relaxed/simple;
	bh=D/r5xJ667W0Wm1n0KiZkzPZeyl7PmuNRjBdaeV7/5UE=;
	h=To:Subject:From:Message-Id:Date; b=dxCBhJPU7opFzsDLo4XCUk57jOxidXxDn6Q5rWzWHaklNDgtHlekTwsbmX0YHBFSAInIbxBNLlaZSR4T42Akm5E73PQgnJcLke3Ml81vc90+uHVQfOKxrn/Z3FohxBQD13upSVrzsazg+zxcey0m64ljrzLDl1fZfwCm7gFVlWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+Q4TwC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+Q4TwC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D63C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770969293;
	bh=D/r5xJ667W0Wm1n0KiZkzPZeyl7PmuNRjBdaeV7/5UE=;
	h=To:Subject:From:Date:From;
	b=W+Q4TwC15CAN7ta3PLXQsfnt/eL+MMek3TMOvmJgny/o5/R5DS2jHfv2LSMdUp+il
	 b1VjI2IWjAHQDPbJPFwHdMg+bAlMIFGnmSWngaRQi18X3lPGgOVzZJ5w3+7C1+rODH
	 lqghd+wLky/lznNY3YhqnemZSMQSqactYXjJXEnEbmqyu0rUnSxx5WX9gNH2V07n8r
	 p991k6NcxPq8s1ETXFjjtoG/SX7OIPLPBvxoP/vfIadBzi0fmmukqSy524XMCu01FJ
	 2wqW/cractmt9KkNXXNBo8ws4MTLdng0Yeg5U7gb/L9fliRJRdveDP4wl9lI/p1tB2
	 D7THoxPnE60nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CB5EF48DC
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177096929367.27894.15372022006211596580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7fafd50eadc302ccf18f20c27eec1c5ba6e4107e18cff490a2dadb383377cb
Date: Fri, 13 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770969293
