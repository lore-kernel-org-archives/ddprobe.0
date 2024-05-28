Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A7031A60
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716926063; cv=none; b=dI+DdPYVoXOae3m4OSQbZa4YOC6y+H3s79X0rCbJoOKKBrczo/FtHwajd4DjbMLIoYd4PPrbLa01T6/Nnpm9j3jptZF1p2YtZv4uEVFYoFH0IB3U1+thBe398FBiStT1MV0/lZXJZ0I2Dbn2EAF73OmXtXRRTmryopSyqIRFlBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716926063; c=relaxed/simple;
	bh=6gq4bJ9bidaL8YRf+c69hinpSInSuWXE1Dnd5jgXnpA=;
	h=To:Subject:From:Message-Id:Date; b=jFxjIXnrdLr+GzGl1kAaB3a68cBmv3qlm0UjQGX0PwxVvabLblP79nKWsM86e8FLAvh4suplhrDfRqcHuoGPwOy6vJx3HCSHdZP60gr7oIuccqkB1kttXcdVs1DFz44fnEdYO0ZjBjN5DmYWLVhjst16/AzidxpteOBUrBRKCPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7XzbIgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7XzbIgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A8AC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716926062;
	bh=6gq4bJ9bidaL8YRf+c69hinpSInSuWXE1Dnd5jgXnpA=;
	h=To:Subject:From:Date:From;
	b=A7XzbIgKVH2Wgr/CHGdyeWoq4QbEBDN0XATTgrztvMMJfI+dJQmUn4ShFxvF3jsrr
	 H1reOOmCRN7uVvD33In8lC84wss27hVscRpObYn+MFw5pHezxbBzeyNR6ZA6sMm8KN
	 qKFdWbqw9OKjJIoSlJibfOEy3ylNm/I43+6TSVtO0FIXOgif1oPQ637Sy360MeCuDI
	 udkcRGp8YuG6HmRgVJ9m9pRyol2X+thPE1+LWnDgqQrCtPEwQJFjCh2Xq/hMvmxn5y
	 VdX7G7/CSgvmQLDMQ4bWhbvC+OeLsBZL9+D5EiTsR2CN/zfLWUyUDAjfJE2yD/PZG/
	 Fjq/Mz6dLGvzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7EDC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 19:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171692606276.15190.14797014486840242853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a8709fa27874bd70dd26581e1d7812fbc75ebec5f5cffc9ee918fff60657c47
Date: Tue, 28 May 2024 19:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716926062
