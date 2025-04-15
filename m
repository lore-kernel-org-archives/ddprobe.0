Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BAA8633F
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744717794; cv=none; b=mCK++Ce/xEBsHrHl8eTY7hCMzC+h59s4BTRJRywlQcinTyhmjigo17qQMcXA6EFA4NQEbqjZN2w0XCTHHY09AkDfFVRp1dK0bw0uDB62TOW6bMevDeZxDdkgLlRr+rRNDGEZzRy+do97Z5jTvfD1qSSeOFLFJREavM/T9X0nqPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744717794; c=relaxed/simple;
	bh=vWxCIiOd9aIiDv3jA+JbsDrzdreEZvdp8ovs1Z04SzE=;
	h=To:Subject:From:Message-Id:Date; b=ZQGfjeT7/pq9geS4r0ux/kRa+pMbqe9xcWdn+Sr9YdTV+FUqvD2egauon5/RHIjOpdZPRDMc2cn7Q9X7rkWpMsJH/8xwzzSvPReF70esqXiVgVYE7fny0GhOFbE3mA2coQg+Rnw73cZURzljH3pdIXoYgIONNLLOkJA9D6m2dDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/DBQzF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/DBQzF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCADCC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744717793;
	bh=vWxCIiOd9aIiDv3jA+JbsDrzdreEZvdp8ovs1Z04SzE=;
	h=To:Subject:From:Date:From;
	b=c/DBQzF+JEYzAsCvXA7t3DUXpCBxNH1T/jnWAdk1r0SwLPciB0FrXrYSXcvmLZIUR
	 WTNRF6ifyzm1vpEXSH1RqycwquKM0iI8njX4pgezj0gaVWcLPRFJKZk13UFm6ZRJk5
	 KzUq6T6pgxcsgoprqy0QKaFhZ5+YXuFB2xuRzJ/UT17WaBV0waQeVAvnYfZKR9U19+
	 VAk+DPbRwcusdROn2bhRvr3W96A8vtjeiqBR89otIbSHmFYYQk/jkZpT0S8yT+1L2b
	 wv7g2X1erAx4GTEToz+angC623JZd+I4JZM0ZUoNPadjULFbEF73CHJIa7Q8yXQJRy
	 nEIIjIN4D693A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43C1C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471779365.22965.12492921382577005246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0becf033cab92135b6f2a920be1c606ceea8f7e6ab272d2ec4ad55ba635f18f
Date: Tue, 15 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744717793
