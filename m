Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E237246336
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739017555; cv=none; b=AuQgVYgGeuzjNa5Xz8fLx7h5leJ4o+CBYsHDDKefjilG+6QYFwprLgo/blxJLOgpg80QnENraLx9nYF5N88KbI/61t9cCLfjMIdzpRxrgsc1bIXLHMQa8XcCPzyXHU1Vu3JviMiOyYFQstFnCNE0PX38KfeSgmsrX+cNA7SykBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739017555; c=relaxed/simple;
	bh=x8wObfrfsyx52XSRxQWBtDbvrBr7izgRTUCqt0ly6uI=;
	h=To:Subject:From:Message-Id:Date; b=l86OBk1D58vq/7flNTXI7cZD7kLhfSP7gUnh2bnV5UJ+cOS44PtVanQ7cMGvNtaf21KB16hJvL5opYplJLf3PKXITEmbdr0LTE4J7QEyA+2pF2KgfcoyAsOMTI/tCkHj4GfK+yBVHUxWXZqnG59iYkLVaRxxvLKZ3htTMSXAMuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkTMYzMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkTMYzMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3141C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739017553;
	bh=x8wObfrfsyx52XSRxQWBtDbvrBr7izgRTUCqt0ly6uI=;
	h=To:Subject:From:Date:From;
	b=rkTMYzMDOl+lcFyk4VMGbifM+eHjIHxu6W1iBcYagHtdHDer127Nyy1pMZRdhbWE0
	 0eD2GLnhAkbTfMzFusgzroKFm09gjndheauBZfgh/XNYR6MtTeWGBEvodKTU5TzS0D
	 9P6Fz/Y+/Ftf4qrlEOTn1SYug9h0b8v+vQAucf3r80SHOzSA7VE9V5IAVH1vZbKd/y
	 FZvFeGlz9HaVrOJIiVcI9N7tF0e40e/9jk/lMXjzF+xEFGVWQB1JjfsIpS61BCcsUH
	 aNsIzcHXVtrHo9fnytqincmr4c2UZ3nn+XTCQ/Ge9Bc4s62RyU4wabbmL76gAL1X5x
	 oKd/FTCmKqFIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1AA3C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173901755364.30078.14201130253857215011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48cf902600796ebf7fed7fe044243219fead6d3a1a035d5d4fd9607b5ad16f0c
Date: Sat, 08 Feb 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739017553
