Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575B4433A5
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752980994; cv=none; b=YkeSXOfGnjKjkefAwDLRVOoFSiLi/4aM7qorVbG2gR2/3AlE5mXn2yu03jyNXMDv9qjKjm271anhoaz4tNGd4aj5WT9OZEaJxDpHiSuDWN3AEZWjm3X3BGmxworYx1mGIMbdA7wiTAOKyrtiFZvyMXi2enLiTcBKKLYc2wQnUw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752980994; c=relaxed/simple;
	bh=xJjO+0HvpBE0cd91QJrPTuAgZGW+ffvbAyyAjlwMKwU=;
	h=To:Subject:From:Message-Id:Date; b=ZZ4L8k2hl/OQPCYBJwYt933GG3cr0DcYsuXEimiTBQlv52G/HhEMVkEpWQX2BjVlONTiPpJcbECpwtcf0fviDe3JW5tm1YZ04XM0zQU1vCje2nNBQt3sRJSmUBjt1V1RdGvmOSyRb66+QlIkDt8PXGkWEn1fy2yggKYqUHCSdIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUzl2y9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUzl2y9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67B0C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752980993;
	bh=xJjO+0HvpBE0cd91QJrPTuAgZGW+ffvbAyyAjlwMKwU=;
	h=To:Subject:From:Date:From;
	b=dUzl2y9vJQH4iIVumjWsWTAFup3czOVY5mToRs9Y2cbsI5RMAyWwah7iPaFKjZ+xK
	 cQSiMoJk40CGSqbhjo+HWYF5l9/0cZR+rEV4Fml0+JAQOzDBxgF5PsY1vN5tzaORTD
	 +MnZxeXgSSZh3OZJfld07MPHgUKtFcILPSY9/RiWXM/Jiw4jPRLwaxJKZR5Mh8odS4
	 nG5feysQQ6FxA+n+Lb5CmFbFHyd5i98JcZZFQ9lphoRiQl5ydd9eAsUwP1StqfbcMd
	 aHjscpHOQUYu+aR1RKyuBqz8ABf+rAbkadwSLdk940ygkeRQdbVvBfdtZPsXzR8H4Q
	 1BX9cYbyCYHxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93681C83F27
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298099358.29283.17566280788839811067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be4508ac4a2018b2d5f04e6ac1c3df7e8672b0dcae1f6743b48fe5e970eb88e
Date: Sun, 20 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752980993
