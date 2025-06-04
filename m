Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E927230BC9
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749018594; cv=none; b=hLqRC4KjauDPWWFltbJ1XO/2813zapV9DQ4SlG4fdc6ouJTxkZZIRad7ei4N3OHp/ku1CKOtxsyMuRURLH9QsrYes39TsOB3d4RRekcrDVog9uN6a3kdM1xNz/SNux7O1/ztB1GkDpcHLVDzyiFb6+EWcbFOC/PxpAwpnwlGQnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749018594; c=relaxed/simple;
	bh=z29rOKFobZ0jXI9UMdtyu9XIeSUhg8sNwO6WfYsvqV0=;
	h=To:Subject:From:Message-Id:Date; b=nTGBFneKEapA5jKApyNVWfr4cAPoccbxUdSJJG1jSKyPdZUsRVbabGtGewlib48NlEE1pSLiufy3Qh4lF3epv8W1GfRpsfBw6u0kBi1/F8D393aVoW+xLAdFO/71XI+/5O6g3pMu+wIF/o952s8Yi0C2kYUwZwWtFQogzTewNC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4yQa3Bq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4yQa3Bq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A0EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749018593;
	bh=z29rOKFobZ0jXI9UMdtyu9XIeSUhg8sNwO6WfYsvqV0=;
	h=To:Subject:From:Date:From;
	b=N4yQa3BqAU2ojXQZ2s2ikjsgC/ypMZsLMj0GS5EelZXIUFkvr34SO5+cp7OXZApab
	 B5v94RKDXh53usufDVuUEODIhWxSz4TxapUJ4pxenaznyOLhQHvipAWQ0W0Fkd3PSc
	 TbRpKaQbSmjw43snWqIWzZEADRQwoEpFKXZr9l+WNxi5oPqa7PWjD1QmWgm/jRzlrv
	 qKS1nEbssLEPuh5Vu+NuWzPREaqJ7GpACN/IdrJWIoYMGoSrFbAvcFu8SmUUzkRZqN
	 LBY7C9WLHEHxCDChKIGwx8il4paeEUqLFxcCIl4yVlNP3WWSkoodueXzro7Xui2Nb1
	 TbUS6RD3sqZ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F89C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901859358.12743.5175956970773140553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10e8cdf075df05a901a4ee4164477b186576253c1f0a7da46a3ffae44daf754
Date: Wed, 04 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749018593
