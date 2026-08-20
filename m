Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533A2442B2E
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787244634; cv=none; b=QKj/4llnooEzZNwCNsx3mcLog3+43OXtOBR73g6IyTQ3aXw3BCieL3hrlnH2vbLEwpB/wRgTMbPNRTRZG0kyuceVjVEWHyWAzA44OQMcmppG+cPqirFj5Mc9bLmDFaH3haeFT5hWZCH3ri8FRY0QvIiyGqzcUygQmA5i9pRQ9aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787244634; c=relaxed/simple;
	bh=8wiOyC0ruFg+2TcUAwc+l/fGDGVmcjjtMe/pFz56Cg0=;
	h=To:Subject:From:Message-Id:Date; b=CAtPj/vafGFB2vMvX9IEyVrdT2Q6AtoGOi8ZirDMX+KEY7TPX4W3kO6noBTc59gfJMbCeTOmI57CmLuHGpigM5fWIQHe+bVcRe7BV4giXSVG5ZSr2oQJZunEGUSqQqZ1TDQI2pzm2WPVzphqqN5VthWMgM8q/77Mxc+IzShfdOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9Q+BLZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9Q+BLZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6203C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787244633;
	bh=8wiOyC0ruFg+2TcUAwc+l/fGDGVmcjjtMe/pFz56Cg0=;
	h=To:Subject:From:Date:From;
	b=b9Q+BLZ259TivlXj3tNN6zxTVV9HKveN486ojFjlU1SomupNljFwsbcShscewGHlH
	 D0NJrHmVduoXAes52k5AF6+dW/g83pubocy8jwFTIeuaBF271tyaXSvnTQ1OdkQhsS
	 bc45gvpSnUssv3hB7KiRaBIy48vBAtlYzsMy1d1a1USwCO4dS3bMGX4MA43HJ62BIt
	 LxiMxxpTCaBW+SFEpM0uGEtJv4/o7QBkO4fsc3yF3HeIOAJpUB8BD77WvFEpOSfrSx
	 Fho2QdTtQ/7xt2KYVCtao2h5XHTJFBXwt6g6+KR5hN3NRPyTTvzEkd4Wfw61kZNeGS
	 /wfvZTu+YLs3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC90FC5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724463376.12295.17836349295373107492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db04824be74622ef1415ee819df4a845b046390d1cade7c58d5764ae7f60f76d
Date: Thu, 20 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787244633
