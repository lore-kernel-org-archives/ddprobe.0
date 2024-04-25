Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C2414A090
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 14:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714055483; cv=none; b=jvzCiJuOZigiEZy1T5gK7If/PBs/Lkwl46AUseJpMcUG9VmbILZk2dUqHptOUxbiKyF0iHefs3I8hTOGZPQAIDkto1R8DPaxJ+Ymcq6iWKSkPDmgRKnRIZIw3hukYSwU38eBHq06W00CR6gawbHHiIYc6O53fkKYHXcH48cgL+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714055483; c=relaxed/simple;
	bh=s0nTURAjIdU4qKwi6hkMIuNAuzXqGyMmxfUHAxD2LtE=;
	h=To:Subject:From:Message-Id:Date; b=F7wqRBMU0Au7GFQ/LMV+DsBt3mO8+RF8bn6kOoMl+9yncq39ORrGAWbWaMW+ydHR3aDDK2RCwJ4qzgmZqs4sFFT3wPz77kKr2uPvIwlj1D733I1/3Ks73fsjWIDoywPOHndM6sY3jYseuFfkPld+h2teL/3BwjYrx3JCr/TnAlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVL3y6ut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVL3y6ut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4587C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 14:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714055482;
	bh=s0nTURAjIdU4qKwi6hkMIuNAuzXqGyMmxfUHAxD2LtE=;
	h=To:Subject:From:Date:From;
	b=qVL3y6ut+H6uC1ouB6B6ecrXGewZzVqENb0gM2PDs8g+bUdnVSZ5dd92CDdxuRAWt
	 8YuRzh1Wdur5zkwhY2pNFHhaslsNDCgRHgpAS+8LLK1qrC8gBAfd3xB7ABNuikpLh3
	 JIpqslU/Jqpql/aSHRKj9xCNPqES3SpDfsq3LE+8pVKs8H9C1DemENqWli0iRAxli1
	 s5Oxn0r+n6sil3pGwjsbiQNFsKVxUWkWxRyr0cV2pT3jvFEoVwmMS0vBHBDW5pYljz
	 EygCPfLPuC3SwYjcE2XLGx1KgtFulffkDkug/RWzraqzn8ytThPXqqo1CT+sVRbqkZ
	 P9ocTyJcv3c3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A3AC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 14:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171405548281.6534.5792553071800249759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3e99ed28b6a25a139779aae6e04ce7736ab347327376501d1deb483279e41a
Date: Thu, 25 Apr 2024 14:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714055482
