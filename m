Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A0C225779
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766316234; cv=none; b=QM84zTVjm4gKeBvP/dpZIVrWDX8X+uYkgc+XuqQ/UBUuSd6Yg3RhkDwewf1tK2ZpzeHmNsU/dtNjssYl2YgH4bT23tahVfD7/aLShv6KUqCcgp5LnMFAGgJCNvtizYm/ojnjQxsY2pxg1V1X2BLzUPsrXUurTdE7bgt8yYPiZG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766316234; c=relaxed/simple;
	bh=0wwQS+w/U/dZYfW3JpwLwGZIrBtHxR0WA2OITORwQV4=;
	h=To:Subject:From:Message-Id:Date; b=N03930Jy+Y6QwXxT17x2mo9MiovqBkR2o2MesiJoW2TY8ambzxbLdf/2c7VN7ks489N7gGi9x/UCrf4sOBmngMWWJz/XqggjoreW8k16tNKS3os/ojRrqv8KH/UV7MsVa4ghDFviEUxTqme2tBzWs30kVdnIDqMsmKUNjHf1jJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAMMv/15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAMMv/15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F96DC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766316233;
	bh=0wwQS+w/U/dZYfW3JpwLwGZIrBtHxR0WA2OITORwQV4=;
	h=To:Subject:From:Date:From;
	b=ZAMMv/155U+BBKPg8c+epixy/ygyUtbN8xoazkOxImbfx4GGSZXwBmHgOb5AJYqSP
	 1j93xRDufWAP+ZGno00K4LyDMraEOoFhoyFgN+MllcguiELTXUD9MyamypKBpKEyYA
	 6+iag98BZedBIAZ0WVO20xNFwgSx1gzZ6CQVwr/oian3wIYsz0ieNsuafW7hm29G4X
	 yirxcwiiayHsYCn8FgNTfmaHsqG6l1tIY2UvEVxuFQpeZHDK4s9HB9czCSLhQrbHcw
	 5qpXEBVALmySweJ9ua5I6hXMtVlMlBWWNEh8HCvpKzPPMcC/bJExtTCRXN+qwxWQ2Z
	 rLeFzUapICIug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F479E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631623357.22128.6847491519479268806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d731fdb3528a8fe5774874833389547a3eebad99d4fe62ddf63661ad5b83ce81
Date: Sun, 21 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766316233
