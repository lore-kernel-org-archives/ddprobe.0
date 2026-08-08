Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FE82E7396
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786161634; cv=none; b=qt/7To5m7AZ9oUyz2ocmjTe1ljvEb6eb018wKihv8Ovz+BpBZWOOCePfZWvi5MEa/zv7FKTaGXWFC7F+p/yF7Ss/Btksx/t/TgwJHU9Ima2wxcuB7srZ1KS9ILjPR9Q0lsQM1Ml05aq/sQticg6SgqqbkZGc9CkVRTvtuZS0PEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786161634; c=relaxed/simple;
	bh=kKVL7au4Yau0ihB6Km2gl/YIv8qdBJBCWCXfbJkRMt4=;
	h=To:Subject:From:Message-Id:Date; b=ipqgv+qMov/A1MGhvmexQwtcyrVRvP6rQwF2r/hgX4WYu1tcuBWJHW75c0W58s5y6fA2dGePFeFPRgDCNdaIMKdRxLk5YIsP1C+UjUH1Fznuqb6Md35fetyIDO97Np4xnHGU64hyXjihiTOOTJbHZPPh2hUYf4I240t6Bb5cw0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6mpfcuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6mpfcuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AFAC2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786161633;
	bh=kKVL7au4Yau0ihB6Km2gl/YIv8qdBJBCWCXfbJkRMt4=;
	h=To:Subject:From:Date:From;
	b=M6mpfcuCq82uhMK1KQgWs/rZ5KF3qID/d34CneIJTCmVRh2mjPUj3pMBxAF6QgAXM
	 +WXv0++NzTfEU/siqSMOHtmwehJUAQoe5uVDUi3IUC3yKOWEB8p/GR+62RKtH7BSV0
	 tY1nD0aPyTlc6PszKuLdZJI8ULRM15zCnJXPy3oTqIJQzNBETyakrLFxtw/Qf7wrKV
	 NE2WWTj2QJBUprG+/THwSJPghPkM0ItC2wplN6YdlQ2AY13A4JktCnFKTLArbvacdx
	 8CdyYXTdYTgsF061+ExEaDJCNehiBurA3AmunMT8dy+1Sx9g6pS6Nw5WETSoXlR3+2
	 eO3EwvI1H3t3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA9DC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178616163369.3074.2449225222361175332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d64efe02bc8362452c902d9fd1eb2840acb8a0c59893649035b578fac3ee5e
Date: Sat, 08 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786161633
