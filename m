Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EFD1C4612
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723844154; cv=none; b=GJVVKMVdMbF8YvjYhmPHkkEjiYb/vktS2mxWFnBW5EYWah182fJhU/sK/GFTsIL74ejpEqCY4WhaCtPj0pUh7x+DHcVmY+dxR4pfsHTOXwCNOoPpE+2+04URbDfZM0OgJ0tgbQQNW+slOgBDFk8GKZ3mUEBHvfxy9kdKQl66ozc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723844154; c=relaxed/simple;
	bh=AlEvXLsdqUYhBlAEUbLtPx022jLVgLdAqIda+/8rt3k=;
	h=To:Subject:From:Message-Id:Date; b=rrs/dpqWL5tOKA456Zg6RvvHWoXBAN7elOzHkjgV7VWK6dMl4XIgmJDfDIStRNUGFOuOxtUpM6+aRl9Su5O4W4U28hWSonOtf2VN6yjYvDrmhEe7Z/XN6H9OW/8Iba13b/SxF29wazXO48dYAU0u++yC28EbwE7w8WQ8SJM24Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vsb0/Whf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vsb0/Whf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A168AC4AF0E
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723844153;
	bh=AlEvXLsdqUYhBlAEUbLtPx022jLVgLdAqIda+/8rt3k=;
	h=To:Subject:From:Date:From;
	b=Vsb0/Whf+92urjmBaLLQrdvGcPHjd/v/qnacaEFS3Kc2HqK5MVByGk1xAJ9BUqWh3
	 hhUVhTPn+JymrhT3n5bUV1H9kcuJBGH0iAnLz7EX6vFzwqsTEC5LDnqv3sshT+QfR3
	 vRVJcGbBsbREpR/padX08WyspUWkKVKFFA53Vl6MEqsoc7504YBF9EPanvlmoxeA/t
	 VxbeNb9flqn93v/kr/lPop4/gAWgcH5iT/EUcitlC2iWbmE73F2jBb+X3lST1hvBDk
	 vhONxIYnNIt/AZZ5ero5HhsDbCCEsVaQB4vLuJ1Yvo6X21NgT8AQdDzc09Y9mTMVc/
	 4rxCiC1pVPoiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94191C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172384415359.11331.17150868157115798334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae3b530e260c4b81c11cf9f9fd3183bd1e48ffacba32cc2a5b2d8aa9289ec5c
Date: Fri, 16 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723844153
