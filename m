Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8E22F34
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728760554; cv=none; b=jWICekbyeK6cWowqDHpEFXZmq3DEs6vbyHnQxplEuRNwHOy6qoPdRcajwykeKJdLPqjkVmsR5aR2CBRClhLNo5OzhMhAIpRuzNFoh4Kt3wNzQXvjCbDlgayWykSD9MIiKwCpaEmcZcSzKc/prJivMIPRRL78PQgIiIHrWWyK68w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728760554; c=relaxed/simple;
	bh=ZSCB3MTTRVm2p25gm0hnYXH3h26/yNhL1jMQWKy3fUQ=;
	h=To:Subject:From:Message-Id:Date; b=hMiHrlANPdPErAGGV35owcLMzBV5HIiP9ot5dSuzeE3VBC1EgIzAIjArcu6Iuk2nw7ccDAJcY2oNxHykEwcqOt50ofNRDzwRXVTSMFneH7D6wSssWe2WW3gh/jLEvKS3KOgsuCNpuG9xkuNNnxi0GoHlix/AoGKmn3nJ9xU4mbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccWMv14y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccWMv14y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA63C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728760553;
	bh=ZSCB3MTTRVm2p25gm0hnYXH3h26/yNhL1jMQWKy3fUQ=;
	h=To:Subject:From:Date:From;
	b=ccWMv14yT/lhG9e4omOF//84aWpPxQlNc3gKcT66SvKx3RVYJxdqEh+LTvEfd7Dmx
	 Y7di55a7yIG1ZOOUdrlqFHMh1938FQjsgnGGGP/JlV7wWun+hyoZi6vI4FhF4mwCrX
	 DyV5uLxusnBRHOh2Q59zs3TlMvcXv5gJnbaDQIwLu5pnvSUMbKUWHcsVPsJJU4YJt/
	 8VH/XxSoiMRbxQ0RJLwl4jQXJXYQoSLXuldIgiaKW4HsBv9o2F2SF/gkmyeYi6e2gy
	 yvUGe5tlRMVke/Wcm9EAN3pD4+h2Y/pbk8V65QG19tdig5kw9FhOfRDLzeZgft3PAn
	 gaYlij6kDbN/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999CFCF2577
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172876055360.21846.5815918586821662153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e275aff5be5e74792c775e8df168ed6b4692584964a6aa1f13af16e582785b59
Date: Sat, 12 Oct 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728760553
