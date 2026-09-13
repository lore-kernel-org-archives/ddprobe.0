Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497BC32A3DA
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789268434; cv=none; b=XtbSr/nRjVer+wmbIgCih+BZ3r6INCgLR2jdck4lCuAAdZE4xml9Reoy5pQpw5YwPJqUlQL2Wgq1kIJP5C+vXL/i81IgDh9YtPtu1SUirIjKb7hTmTbD+LUcLMBcZ7kJtdKpEwBFTtXVYV9+3lhdUnRIksab+JKGntE0QUDMpGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789268434; c=relaxed/simple;
	bh=u1N7ZFhvpbyTCFkxCBalan+sJ/r7hTAlXtGPf17okUY=;
	h=To:Subject:From:Message-Id:Date; b=HOFtirEsZeNnhQ/3rKiwmHOeEPki6TwSN/5fXOjvpuCtxKNVsCfEYTnBtA1ob/dspi+FWyiXJLtNPk3g4xdj1jK3nOULAtcgglXM94TTg1/aenFHP7yDQJXLPiUPi3rxgS6wDk94q+QH0/kEu7fzzeCWQbA3RsVmzmIuRV4Nl1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfQsXbaq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfQsXbaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DD1C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789268433;
	bh=u1N7ZFhvpbyTCFkxCBalan+sJ/r7hTAlXtGPf17okUY=;
	h=To:Subject:From:Date:From;
	b=IfQsXbaq/xD7iYu32t7Ie1QEq5CVWUigD1M95qmgbtx6U9ZBpWbuOwz0MfnLHJrgW
	 npaGJ70XReX9tMgBB50JIVPlw4gWDJW6TFIBZKIIB3/9CKRobKlpmTijs+HWFYkZmH
	 btfoXKHSduXMdGHVQgzCPr7BXAV8r54EBXtlARgdStOrKcWoddZtQU2xpLIIbCK+6d
	 EDwD3j8t8TQLClWCSITYXlGSGOB9aC/gkoppL5vQBiNYI0EQG2Y8xixuG8Wc17VD0v
	 noZzBMMcYNpYv1CkGbBtrIZN4LAQWQZYsiP9mgDgig9RNeZ4WwIQtWca2xXEdkJ3wc
	 fek7sBbFCEUWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0422C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926843368.14841.7181458739363975351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87aa4c69a929138aa9385d433db480e76e420a57890602c0c109fa6640ed5fa8
Date: Sun, 13 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789268433
