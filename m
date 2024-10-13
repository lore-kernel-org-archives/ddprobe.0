Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DEA2AF1E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728820554; cv=none; b=BPdL3vPvLHFZD2j77wuazBHlicePB7ru0nQeQWm3YtRm0k4DIq0ebS/2gy1/FgRQDsqqbSHmjbeJb+pg/u1TRW2qH/AAOQ9wh7ZT/d9e1OpaUHwBLAQMgZfUfRQalApE4QhvCnwbnVvYPJvQrfJzy1fMWcOnuspcbsJ2dX+GI2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728820554; c=relaxed/simple;
	bh=E+9ksFZ6PzDbUTRE99xj5MlEwvaqAmc06VkM2gQMEPE=;
	h=To:Subject:From:Message-Id:Date; b=AzZDCr+1SbXavH0hYXA/hpq7HQIjwOSfviiIi6afW/Po19+yGorZo75/nurK2zpQGq+xHdiis/jqh4uy9tU98jB//qWbaG94oqSwqYRNB08oCf5cykYElMOFwJM+otyxTxDuuPLgsYl26c+HelfLFt3Fx+of/Q5obmk+xhHLkYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEwtvmLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEwtvmLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A0D6C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728820553;
	bh=E+9ksFZ6PzDbUTRE99xj5MlEwvaqAmc06VkM2gQMEPE=;
	h=To:Subject:From:Date:From;
	b=XEwtvmLjPCDsm5rmxIzb9b9wub1nZu9jbMNbtmNQ86yKOuM2XDNI7nbhagvP4idUL
	 vKV8hnHFEyd8ekFTAHCLCWbDAOadBXjowQwurPOZJRi/nTS/CHV1bH41Ap/HrOB2OH
	 OoDQKUA6u8U+1UHSuY0hM9Dslhlyg3hZyyhOpcKfrNMpMl3AnTG+lTnAz0Rn03cGV/
	 IpKEt0TWiug8zfqFMwXBzIkRq0Izmo3OIPpgs+61bbXVPEkByUgeBYGPxc41OfPxPA
	 t403j9bANcPtaLykSOkHYXIu3cWFsTC11714l5WU9oJ1eevRRPv9owduqBSw3qpnpe
	 2E+vhXSqAT03g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9172CCF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172882055358.24547.6276906213239459958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a9afa7abfd007e13fa19b1baaac746e0762e2fcb0135cd95da2a47da7fd096
Date: Sun, 13 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728820553
