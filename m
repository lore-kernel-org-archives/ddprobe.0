Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367291BDCF
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724075754; cv=none; b=QrLSgxcr/hLev7iy4QNOm9zM/AuMWDDyF3/Y4twmFajfBszcZLErX92u2G0Ufcol/oMu4VaCDE+/OT8b6mHwvHko3CQBV+wz2s8YyLc5MuFfm8QQd0EP8VdQ43H6MejlQ+/16npIQVUAf4XVYbRsjMOtObe2+Z32ic2vBzPWDgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724075754; c=relaxed/simple;
	bh=OpVlrkDv0GJgPJuKCyTVw/QXKRdQFVoF2qlRNCkkzaA=;
	h=To:Subject:From:Message-Id:Date; b=mt3TXzp2zOaVdpiOxHH2BExyMcs9vBT/OLNHywpJpy/ziYCvu5BuS6zuF4T/0qCwxSKM3dSx8DVYSAIxCt54FU5S95p0ZptGEbjeVJMn3zIOrnh+QrWsCwK49CCmuy/RQ1RRtwfPJrhoSsXB7Jp1o3ZCmHNeuMPBEha02S88hbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6Y24+cz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6Y24+cz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A77C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724075753;
	bh=OpVlrkDv0GJgPJuKCyTVw/QXKRdQFVoF2qlRNCkkzaA=;
	h=To:Subject:From:Date:From;
	b=S6Y24+cz2CdN0BD08zv3i+NtDrCTHNokpGosa52oG/svEE1kgT7zta+6eliBHGSnS
	 oSc9ZJoSNiQAvIEx/XDVYuzBJWZJgzCAiIId0ourFGCt6Gt08FRY3MOE0CXxEk9cQX
	 CctSjnuma/i4qrWVrDBOPUWALAM7aiY/6WlwSQbfa1CcP+Fq8/0upq1NgjGgT47y+b
	 b5CLW7MdrSPowFd5fzS3Q+NRYajWqfETXpFCMd2gFYoSrFKKgpffWKLMEJboOotUxZ
	 4+bCpu85s6lDtgcN7vF8i5ZQzEmrgQzVCy56Z8T0J0S3p1ncyV/ZKpjlaTWPaCRsYQ
	 p9pWh4C/xrzdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FBBC52D6F
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172407575361.14809.2573773567197401502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b565651c1c6c49c13c237de1abc0fdd70c9acbeffcdff701a51a4216701c00e3
Date: Mon, 19 Aug 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724075753
