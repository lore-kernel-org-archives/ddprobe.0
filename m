Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E67EA59
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749680394; cv=none; b=hj+8oL35B2B6gPvLEmmfkeY1U+fsVeRmymkunTCcSUgMC27o7SXYmzDdxsxoNOSeHdJAKNXrKoWvJ5ReIXjg4PqcgGWnqCqv1xmrVUI40i69JH4MufFEQ22HlTN33DCM1eA77oHvykrjeK6KBQdW+KilOBU8sKMhS3p0ou2McM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749680394; c=relaxed/simple;
	bh=hKL17UjOmfMHM22hKbgh2AeKDzZ6cn1eUtq2W0o7rjA=;
	h=To:Subject:From:Message-Id:Date; b=b91Lp3bFyDkywn1jFz6/6fRd/LAiPsNkXMyqxpw53HsmRHZwE40UI7TWPGR/L+vzMxP1wBX39eLYAoadOX7hMV/XUemsbwGq1QUlpiKayFVGhgPbhD/FVAvbut6BTD40S0zteOCVE8Zfb0vTUXahFmMwKqnNg9c/grUob+T4TL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzT9gfOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzT9gfOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64A6C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749680393;
	bh=hKL17UjOmfMHM22hKbgh2AeKDzZ6cn1eUtq2W0o7rjA=;
	h=To:Subject:From:Date:From;
	b=IzT9gfOHq1e8seGWugkUfhh4xjaxGU6sj7ZZvkqklVCHPtSSS0sdp7vA2bD/peRWK
	 u4slSrYX71REft2Hq5CMEufqBVL3yTTcXCgYVFaJZdPBUcZPjXE+Z69ITS7/kJvlLr
	 PwG4uVU0whHY6LeTsgDaK+HgbQqEbQ4boMD8zpzmIAv8VI9i5j60KVA1Wb6ycK/47G
	 XvJF8tcCm9thLMBoMslLai7m5m2E44lf3UXDNeLdvNSldwnLDH7RQ4eznYIDnE4TQ6
	 NsdTQIPh2IGepv7ZF12y7La/KqdpLDMnZgZH5fBTu/hTjy9v5Z2KCBBTmLPBUSwaS5
	 0UKZoi/PCuLtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90172C71135
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968039357.18643.7657347124372474399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe518b589eef71728320e3c55a9c99306f0196d83de401e737f078f2a66ca02
Date: Wed, 11 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749680393
