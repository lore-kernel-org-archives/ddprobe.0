Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328F91DE4E0
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786290634; cv=none; b=BLrOpGXYApq2YAqQrZHGFvxE9WNLsAUBYU/5B3lD7MwWzo3dgTy+PUR09EkTZX6sRzbn0r7QM5tuPUiKPr+vLjeDpzzbu2jAgGnW/dEiUqAQ31xqB9Bw4dqzilNBNmG1tMNI+QuXRt/nzm4C6iI3AOULVOm8WVv5MAPfJFuqkPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786290634; c=relaxed/simple;
	bh=08Wy/lvSnf2V8YhhAxF5f1+9t2NCxPYvEF8SXp+NTBw=;
	h=To:Subject:From:Message-Id:Date; b=oMZDDIB8yHbk6ZH5P7RlpAW+2T6G4OkFTHRLD44S9vY/eKUt2Nzhc29i2v0HyvqJf/25SSWLE2PRCVFGnJgPbX7xt6RszyFTywu2B0oRI/fAGZLM8hwbHjHoIouYOZ25hzLjEU5s2qslDSFQLRPRVCyz+HPTn2/F9PR6l4ccSSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnKeG5NR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnKeG5NR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBF3C2BCF6
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786290633;
	bh=08Wy/lvSnf2V8YhhAxF5f1+9t2NCxPYvEF8SXp+NTBw=;
	h=To:Subject:From:Date:From;
	b=CnKeG5NRo2HaL3POVb1BuuiTyc6uTcZN1NtGaRNF7sC6TKU46G9ymv0nafB7X5okU
	 5Wq7TPNr6bdeC3z3fds0x7EBk2vLAd7a08lRf0lghNqNd1ilXocnDcbyFQlD9MGw4W
	 o79/ZoxtDO7jm0fMKvmLvGrA2DK6ovm0HGP7h75tK6yMhE/c5n1G5HDF2XHx0kvNkP
	 Kio72O8DSB6blcND3kBer6ArsmewM1h781NtzLcjT++uiwF+ETalnSePGvtMcZxIxm
	 ZhmjZTL9i8N5s6Y5JxDJau9+vSAn0t5rI9dbkRnEVsRcB4zCfqN0hyQFJ18Dek1Dbb
	 +RDJqBF6x6HjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07F1C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629063369.26400.6382052341626513585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234332747cd6298e02e11f396ad506199c6554a3f3fbb6c0de91d8e052e0fb54
Date: Sun, 09 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786290633
