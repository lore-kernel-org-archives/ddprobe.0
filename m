Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3548E33CD0
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707597497; cv=none; b=gDerJ9/CALFx2rm8HTTaqb+i3XKR5LlbnjHqknWtgbguxJnka2jUb2Jel6wRb1PhEFH5Vj8agHfnlW7jSq4RR6X3LUcnpjzjUxzdYIfd6r53uTYf/h2+jAWhEZjUaQXtbJoVn27PFR9qHQnFiXm2PG8nEQGT29zmaEVeBe33oVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707597497; c=relaxed/simple;
	bh=lrWDSHlzaKN4IeMqKNpcm+lNRhMS2eR78QJ+uq8K0u8=;
	h=To:Subject:From:Message-Id:Date; b=BzgDVVuTHjoOlkA2nna0r0Hde8rh9PLid98nOfC5BEhK8Tyf+vlOA03bli+9/EbZQuHeMFkSyyHHTD2601rNFBAwz1hNsWla9qXbX4KRO2V1BXJn0mca43caesqPJvKUT4/9y1kiBeDgiy0FOQnhK1UHb7mW9s9SInD+448+1Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzUy/HBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzUy/HBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80017C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707597496;
	bh=lrWDSHlzaKN4IeMqKNpcm+lNRhMS2eR78QJ+uq8K0u8=;
	h=To:Subject:From:Date:From;
	b=dzUy/HBBsugsMg5itR6djKBGfXsQiJnxbyCR836y3ZYa64w6Sknev3OFgUpITGMcz
	 ECdHKBctYvZLfDMV6XeiNrvXkNrhz++SZ8VjMD3YDE3ufvViiUlp0r0qXtQoeUHTPJ
	 glFPwAheTEpc+wZmtAKiy+bL54o2eN5wBtHFsL0oqv48vV/6bjD+oNWedzGu9w8DO6
	 /+nb09qHrtP1Myt0kxPrHZXb8vfEmdz1qOkqneFRVz4rlwITTCAbJgIjhT5A5DGSIF
	 FOzj3PQILKoE1YXcNVk+2frXtO3LEqB/DQwR4KiGhcwqRbZ1M9WieVXYT7sdqCuODj
	 yb5u74mbptE/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641B1C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170759749637.5947.1965763116243248261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e063ec61e9ebb0bffda81680fdeb1238f2b60f970b828fff598bd2a54e050778
Date: Sat, 10 Feb 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707597496
