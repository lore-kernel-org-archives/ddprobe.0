Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417AB35294E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782968914; cv=none; b=Hg0tF+EKDco/DWfBlIKVUudAOxBQJRORI94X54G2uzkpn9K6eXoFjXk+weVM6DT+UMqacPitvlT8ItV8b4+vky1ZEmcP9cYSS45P3T6pWlSH/m2z7xB72cLLB97so6w5fnQi6K/o31LhD5aMcQuNQQCbQ7ixcgyp99LMt50C4KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782968914; c=relaxed/simple;
	bh=DBEeFXh21wqEl7pb/R2a0Url/UzqYP8MadIYwrJ4YzM=;
	h=To:Subject:From:Message-Id:Date; b=roXcRaICTEfrrvSXj4yC0BntePQ0owczgLyAQA187xRcyoTB20USNvY23zdBY75/wfObl43EJhdeQjT1OmBvK/jN68wBqdNyY5bcqnjeNpBHB2eWwfhmonZdJtAAgddfK0hZXHJRe8WHgYWEEKZ1NBGIj4oV9cu89CQR9bmhnvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GekTNbC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GekTNbC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26E2C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782968913;
	bh=DBEeFXh21wqEl7pb/R2a0Url/UzqYP8MadIYwrJ4YzM=;
	h=To:Subject:From:Date:From;
	b=GekTNbC+D2WWmVohPR2PScuwKNAjz7dQiiXhBdp1VEZXNC2FDOB+2TFW7jJrYuL5u
	 LCf2iEPnWkikRAE8mfqFCNkb9ZFZyPS/SJmrvUu9cHDv9jDJ3dCCaRAamq2naHVBov
	 3x3KazSxe1lrLTHmk6kOjZr58MLRYnyG6bu0xdogMU8qxuLs2FAlGK3AT9H046/eXe
	 8gbeAm/r10znjLRm8/r3cIBeCdkqDmH/zx2YiBtiQizVZPma6O3wI+qscSev+4k5Yv
	 g0aNnG7alhnbCDQqJYTg5/DQAWZlKfBMv8Z9TRGwYBlAY2gcOuTkxcKAF41F9yJv3B
	 eG1J1qq/Qsz5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0899C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296891369.2094.18165906099559886083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818f9e4b1bc486bb7d4d2f3c9d4b3a1f957ec5ee5f8dfbe06bc8b6fe14ba88af
Date: Thu, 02 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782968913
