Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118781FDD
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754569194; cv=none; b=WykYOr6wJN2MIu9ReJzzHZiiZMdxZeieHzcw1/Zxy4WgTD54lx9D5NZ0ENnZDO5bZjTqjLgA/v+0+EW+k2SKSdIKo87v3N3q//wR+uAxaBUzyszSHhuThY2Wj9VKJ1JlrWcDr6PgL6wEht5OMoRYonB4+ne3w9b0uzV8CxDHQGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754569194; c=relaxed/simple;
	bh=axM78+5XcGTWDGUiMaVN/AM3Y4KlNNLDLRxqnbZXMYQ=;
	h=To:Subject:From:Message-Id:Date; b=aIOUKhtLxhKjfrYNyBO+/AkJtOcJM72+gXKsMr9NgGVwaldHFN5z82PmylcowkxcLdhSn7k7+ZRc2FdxMRlG6gi9iWcYHtciRxLVT+QbGejc8tEPiSSSgSsjI83suVGssKO2CNHDVIdO9v5W2UDutn1iiWSS1cGErmFdNVabdXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujhGdz/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujhGdz/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD98C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754569193;
	bh=axM78+5XcGTWDGUiMaVN/AM3Y4KlNNLDLRxqnbZXMYQ=;
	h=To:Subject:From:Date:From;
	b=ujhGdz/uxLPsX3NTyAmMROCFZaiY7IQIhrIlRUUEXWeLFRhBMUZyBFQO+0baniIz8
	 WJz2m0nmwvZb3fV6yqXyu8I363F6l/GDk/+wR3RgJVhiH7ZAKi//f1GeEzAjKG8c58
	 kQm36NPig5XxGKE0lBigTPD1cjDf0vjQ9aidgHtYfMyh5abUpbkw5Tsb/YHfnGuRar
	 lV+IHkLn4O26rpZS0cP1rfJpPGWYn+TxA5jt07/SiwdxH6dnoTsG7DGTnypNMXNhaj
	 tgAzxLOVDkHI1h5FYPQ5AAPK2Vne0/5XbF6FDhT0YHee5mq7YPOtHVGKehfxKKjeK6
	 AaVrryErlX5RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F627C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456919358.17360.10866817021441243181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d64404ee89cfdb095c5f3a1fa8fd971cba29833e06cbb748240b5a8e30a2f9
Date: Thu, 07 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754569193
