Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8AD501291
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791570034; cv=none; b=nmxY+iLNcIU5J/tzqwsNK2KOocsNLXvBrwpQI9MhCG1FM0zWYvYFB83xC1Sn4KARaqcoZcd6/O3/YQJDP4q0mDcv1BDOSx3jz/jYjZTkMis60MiAx8qugz2eeFsOS3ffADOrfKner9iQ4KY5avowYEubhl26ToVZe8VGcCCr7eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791570034; c=relaxed/simple;
	bh=C70vYVPq67uuBuVvvtdpshGOlTEql4q68Jh0EQHtd9g=;
	h=To:Subject:From:Message-Id:Date; b=VgPqZ2C9wmiZxlC2du4Tj4bWKUmLvxJ4ELrMC5Zvp2akqAc2pJglvd/kPjCUfFCD81H14O41/x1nPrrCgtU75g5DZo6D6bxA69i/af02Y/QqKnK89Ul35WY49kD4ynteoW/EdVft5gtY3l2DIw+CRR+b6N2HpRuY+PhIm+kyYzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibKu4agb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibKu4agb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3713C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791570033;
	bh=C70vYVPq67uuBuVvvtdpshGOlTEql4q68Jh0EQHtd9g=;
	h=To:Subject:From:Date:From;
	b=ibKu4agbrwoIj87LlmTM50mJuRE2SB7SdrniL83P61RR+Z5u05dR08j2QqAiXYyvq
	 my0Ys4Xvd39AlgV/tVi1ilSN7xEVHCij/+jK5+g7iHXTiWtZ1fIOKGb8n5TLcEMcwd
	 ruuFxYygjhnyUJOYr32g8X+vjUJWKOSymXxGqTXRWwPmHuSZ15vLASbhRPe1qAVz7X
	 nZUjYo8GTzJmzc6MfXm0DBizdtGnJ3l3bNWhMBjW074WVmhvmPlXZAvle5dTVjRSPX
	 bkQyoTuI5Hrb8Msii7WSHyVJBnlkrB3Th6plYXBjH7qHy09vMSrQbYlv0kDm5RIn5p
	 AZQKCT1ivjO8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA187CA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157003368.13810.1900686167800826958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b55ccb31f93feab39c368cb1df52c439a866d261f7eb8d402aa5b9d435db213
Date: Fri, 09 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791570033
