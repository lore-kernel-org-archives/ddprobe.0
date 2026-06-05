Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CEE3BBFDF
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780620874; cv=none; b=j8kXZBIr3Dg1CUO6lI0qBWJDWTvZBB/bJvCSK16mscCJiiPjYPCdy1/PkHSMirtNCtEAyAgj/7S14MERm+sDzeRdSNORmYNfz8MEBUZBPwD4AMlXORy28aI1U6uFSWwe7TjodZSiSF7ChPGKz+ym0xO99zXKeJ2tcUORtL8M7bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780620874; c=relaxed/simple;
	bh=9eZkxK+TSpl7hqNKvCYbq3B5V+/R70gJ5Qqqcf2af8o=;
	h=To:Subject:From:Message-Id:Date; b=QMaFxVPZSPfyj0qng6YXKIvckQB4aznZxWo3x8yF1TS75OTaoU73HHRzEenBMCHwBiyjNyT+AEp/hSj4Mm9zUwErMwKoLtzRp9m1Xclv0wxl1VhjIxEx99+Bzh1aOJ9VrqUt29j6ifmRJUJQa4vOLa+OuIX1pf/NRb1yABLAR4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPJWnz65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPJWnz65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEFBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780620873;
	bh=9eZkxK+TSpl7hqNKvCYbq3B5V+/R70gJ5Qqqcf2af8o=;
	h=To:Subject:From:Date:From;
	b=YPJWnz65tYgFn3OpEKlHTV/dA6jbRNB4z6R29nhE3fSUrZ8Uyt5WnBjX6lDgze1m6
	 kjI//6NMNrltJDqntwRubi2p3ZcOiI3LWtpGvIPZQcRScDMCqX8RDpegCf0Dnjhvg6
	 Lh9lp17t+qFQ7cqstz8Erypxq7fbrC1MTUZwQFSWDY2yyKrlLF38uLtnwEpI/c9LS0
	 LlaSVeZ+AvL78EMiPlkwDx2a1XDDVopjnhOQYWQQNxMf4pBK/978hw15U2klHu3oZh
	 vNSPDi5OUxXjsNMvfM768BQGOkE93vmpAQt2y710VliVia5TJduIHEyZprdjdbgl78
	 0ArG76KsIfBaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE85CD6E6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062087369.17921.10815975931282469843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e914e3145179f340cc39b83fa91b068468cac3281a99ccc45c35ed5af6c8d44
Date: Fri, 05 Jun 2026 00:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780620873
