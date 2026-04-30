Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4EC2335564
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777578453; cv=none; b=SS7ZQTyoLA8YBwIkQEAgiZ+8rvgnErlqvmw+UkwJsG3wq7AJV90AZtyEbX+4d/QSLNTVMR/DfpcIXe0Zt+hp+V74GgFomU/QU59aXQR3BeysA6830yGEuljQPFmlQbalg5mhwxmz/TFL/Dt0HeC/dm3a0lANf3vIC4ElSoarmMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777578453; c=relaxed/simple;
	bh=8lF0MJJf0qvbMut3R2hiHvqaay3peTSUOzMDI/Zm/Qg=;
	h=To:Subject:From:Message-Id:Date; b=a1cw4nUg9iDYvroV7ktf80hzBEVXbYnAyKYaJLc9qrid6zYFbM5uC8BsYanYYomnyM1zblLlVgOtjVd8FVsOEtaHcgqa0ccsCXHOQUGABAbM49BSlSBt8GjSMLxVcqOHoZjhwUCScJY6HMFgp1wPcCR/bKe6sordSQIlZ5Mru78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBkNekmV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBkNekmV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8767C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777578453;
	bh=8lF0MJJf0qvbMut3R2hiHvqaay3peTSUOzMDI/Zm/Qg=;
	h=To:Subject:From:Date:From;
	b=pBkNekmVQGF66qEFnWowZdvmPTfQrSZfkVVYuJbVwBRT4pR+7ziAbjhf9U2d7Bulo
	 HxFX6BQPhjjbp668mX6eXxeISTCGGC72aeN7YpqwyLTVcj1w/HmsLR113clmg3PQtJ
	 YxijZtfiyKcLviazY+p2VP2tnOD3ZhpjfzgkNLemMstLaD4HeiYnbbyqRfe6n2AECK
	 xFiCL0I8i8fHtXn6NhtzT3cDaWaAWCN49C4s8BjuSqEO1j4d2vBvYMTl7i1vRZvySD
	 dlyiCBUqAPXyaRSmruo9TNeoVSUsTYXW9/AY0G6kS4Ya8Lb/YV6M7D8knAkAygvEwF
	 8Q1w8G1h14m6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9293CD13DA
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757845368.29644.1209887182771993423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8088c91e543779cf376bf68baa90416123f26abd422ea3a6d81ae3d0973f7d90
Date: Thu, 30 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777578453
