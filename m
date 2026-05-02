Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294E9231A21
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777727254; cv=none; b=nrBlMrcVWlvvonNV7TQyupG8qmFSCpCb3NfwXah1AMsdyqgspeHkotmuI5d6oyTZnTchHb+7ayNyDPfID2CNC2dWDx2AOMkCD//CnKq4UwiM8WvnZOri35QYlTue7vTsNXZreKZsuqhgQiHUO4d0PfCsDs8dja5KqAAPyR6xKag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777727254; c=relaxed/simple;
	bh=gTrksr8bLLyaSk6WzdwqkfJEp4Q+wL7MdbkoRHOvPS4=;
	h=To:Subject:From:Message-Id:Date; b=YIYYGlya9kOY/5HiRiLmQNY3w1+b/KJhalLCPhJVZ+2rFUgFWKUotdfjvgApyWuCuol10fEWvqaf7fEx7MbrN16J1TcPVxWvhGOE0tXh7q4T3ey7l5NBmjevTzZxgeQqj5alUOtz1tFeLM5r5Whdh8eHgMSMfr5D3jmHXZVmAD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gN0bxctw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gN0bxctw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B78C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777727253;
	bh=gTrksr8bLLyaSk6WzdwqkfJEp4Q+wL7MdbkoRHOvPS4=;
	h=To:Subject:From:Date:From;
	b=gN0bxctw/85G8pnwSKqa5eoNVaMn2PMvoVsiI5x1llwN1Xjvi1tqb44R0fXYfPCOi
	 Rq6Kpsy5FrZXBKjgg8X3BPyM0YmqRH8E1JOAAf5wOScADyjhQas8hrbAo1reL9Ixuc
	 XPUqBRQtKSlnX92fKfaC1yABLgE+4K7OJqfD8veHMbgdg1AslixFT4EECX98jv6gFy
	 2eH36D59O+PyGGWgofjACDQ1Lb+pxX0KJ8yR4pxeyejkno/5I22LpwYNZ0eD6kxMEJ
	 y8uqundDV2DiJOB8o5bIWFLT2WDkb0iEBxi08aLVPkcjVpS3pDjH1KpeXIq21y2Tao
	 XD+9bwP19An3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D2CCD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772725370.29833.17786217680988083389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29941527971dad56735cb7aea662bc4df33b02cdfa1cb05c35ccefaf9e4af71
Date: Sat, 02 May 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777727253
