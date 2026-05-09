Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DEC289340
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778311054; cv=none; b=CikObshnR80e1NWoCVksALUS86luhbFYRFS9CWXKGiw28a1bKZdbuFQOrdPsXB1huKYRYfvVOERNI8gexae228Wls7zyVMGPyybaABCp/uoAKE1UUQ7YypS305+tmeBq5LhkCNKJ7+OV2fzW2qfH1Dyjca9Rpan8ANWMyIxeDA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778311054; c=relaxed/simple;
	bh=h2txwZAUBvRoL/bXJuyKclTTTQ8T2gyIaxx2CQ6weHA=;
	h=To:Subject:From:Message-Id:Date; b=eCGFXYcnnqIE3fJMTwAa0GrQyJ6lqoQZKs83RG7ifptXPGvx33tTB6uLkh3UObcNqTrVaKJFRHNO/tal0CNmlVQpFiFue2vxs8z9dKTtt7FOoDqqLswVG68gCTD8RRc/jxP05+wUux37EGjkpQKHHczd3abDVSRhQNoYeA2XpOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dS29lhgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dS29lhgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D35C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778311053;
	bh=h2txwZAUBvRoL/bXJuyKclTTTQ8T2gyIaxx2CQ6weHA=;
	h=To:Subject:From:Date:From;
	b=dS29lhgbf4GXrQsgP63Ns5A83zCgCr5eyYpgSwo5FgHvp0ePT4goheznd9v1qctmE
	 av0vgTOU4mlDrBZ1T/f2P2OeX1qIfc7Iquol9y2p1sIHzCmcmobG5xU0Cut8HsAsJK
	 +dtjaBUjscnvSwZzBW+GuNh9s0HTFm8kS2a/8ECTNjtZH70+lCy5yETeQx/RL9dB0r
	 Nd1FQxvCp92Rzuw/19Vl3GpSWhweDe3uEzZhPa3gLWCSMyOU9sQYmoE5Dp4WdZuL1w
	 +GZEdtacmw7LCfwfvweybs9/iFNtx/ywOGTszN7k18Y7R4+xUkDFr1VxSOattCrdgX
	 wB2LuUYWYHyJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64EECD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831105371.28177.15394750162127180983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26dacc29aa3688c6f47d8c79791de85f981f25a8db5d9ded7c30e652c9156a18
Date: Sat, 09 May 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778311053
