Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEBF1DFE8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747191594; cv=none; b=pWQraDErsRGAW1fSWD1+Pw0opc7lEs/jlXzSm9CM/Feo35c21IGIvOcYBoY/KJtpA18xufPgYhoICSx/5stdK292o964u7j6q8JyZArAtYjIe6g1NeUsNZfemKw9szCgR+kFRLIEiLwtu9EbkQnom7XS6k3/L5xRIpUtLLcztSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747191594; c=relaxed/simple;
	bh=bBCobrKBicddN/LAyVqW4bAI9ZPDb2Fy7Q0HB+WMbb8=;
	h=To:Subject:From:Message-Id:Date; b=lFwdA679sXJ3Ni70AxvkdxJrCYBDTuzlIHKmagR5XpJUhA2ZOCsE3dMFWtsXJB0UPRAmPylDHlmsucb7BZd02yTpwQ8ZlVF3AdyigNE1CSNUjqpVuXPAR6PEe9BCpcShbqycjyJ/q/josq4PMkzY3xZO4jR/oPKtK+k/8scNAXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRGehNHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRGehNHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B7C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747191593;
	bh=bBCobrKBicddN/LAyVqW4bAI9ZPDb2Fy7Q0HB+WMbb8=;
	h=To:Subject:From:Date:From;
	b=DRGehNHKQPzv9GBSARlpeD6debTejQMCuoMQMiOGCwZNVvH3YTq7NpL8iEivgaiXH
	 DB/CPCTWudJZ7Ut6fn3l1dYZ36CT4scwmAYAGEVoBrunWM61iw1WSEF2gGNPf1Dh0u
	 QSKPFanO++aX8Mb6AEYwnwmJ+tABzQWgbadg6usBeKtbm/paiKALgdSTOnCDr/M5/L
	 fAxSmxmdawWkTCiQXWw3PBfmf10zshIXFsJtfpyb/wBW3h3AAxsL24PUdAIrsxWtcV
	 T/e4l62RlNaHJ7BuYQy9UGprxDqhE5seUCnb8Y+B8l/IBk+vNuMyZZWllQhPgDi9G9
	 8v9d6DL6CzOhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7BC3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719159358.17958.14294423095976476979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1c12ae5d3dd35250a032aa173bb1e3f016a674532986caa59ff1f3c7ea1222
Date: Wed, 14 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747191593
