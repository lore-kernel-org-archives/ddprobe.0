Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EA71A3178
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756436394; cv=none; b=F0ws2naOixrJdXOrem2HvBQRizQOxhqKRwu5njTBa3RIOL9FySZL34IGp3DO72nHIxSWGhKCfCDaeQxzBi53AtZQebeeOWHWq+WROHeCLqzId8jhy/8NG1JMrTPg5vpmQwMUs8HyNvUXf7kni0yy6pw1DwtB5I/7LNFMar5X0Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756436394; c=relaxed/simple;
	bh=5ZRCXT4QFnu5FRcAKiiPQfeibMBqdfZ0sdAG4XSVV+c=;
	h=To:Subject:From:Message-Id:Date; b=Mg62gYO5ameLasu8If8EjbXRiBDEkrr/oehTdO0Drmm1k2hfgdLOQ9o+SipWJvY4NjY58xTlxXDVeBAdKN/iDc3VUcNQnsVm2nmzFLwhoK3V1gnG0CsL5gm8lxEd3RainFh91/QmUlL76ulX4Nptqe7nsOL4R/iKeHZ13X/xW70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaLqC3WM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaLqC3WM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1445C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756436393;
	bh=5ZRCXT4QFnu5FRcAKiiPQfeibMBqdfZ0sdAG4XSVV+c=;
	h=To:Subject:From:Date:From;
	b=eaLqC3WMu+vU3vUpE0VMUKK+pD8RSEF/yvgkd4jhOx6rcih+YdAGtNSCN8fTj0klJ
	 uaiJg7QGVmPEGduAdOgHkVeFVH6WFzZt3LJqISqGS5YN5OpRpPUon8eAEOgOeP1oUg
	 yuhci62i/DFQKzQxpsQMmljSaPKmPCXargQn9nYof0obOSRJ6++Fz89MJA0i32BPKS
	 RmIC+YqY63uZ3nGlhlxHyifut8O8y2MqV/3iNYEKQz8UYYQ+L1FYneCev4Vse1L5KP
	 VFZP5Up+VJnSAMXY0xxKD6EGfOSNtGiIMHrQrr/2BtKV9hY3eTWgA7SpUnB5Bs7xyb
	 Egpy3qquCmCVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDBDC8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643639357.2544.16431588289242510640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f43a827fed2e1fcfa31df43c20d310dd9a64f7c6f40f2457daa28a3a983106a1
Date: Fri, 29 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756436393
