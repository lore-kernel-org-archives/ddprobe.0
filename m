Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216782F4A0D
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750890595; cv=none; b=a98fBU3NRxDDMqup9OSb+yfBYqPHpVSB7qP90HTBMdU24fOpTrRkgkul2/udhO6uS3/mxGNnXjWE18Ba6Ulew/NWnbcYGBRhGbqfrtfbwE7aJHzsaeh2XB16LizU41RWc8dackmodADIKmL+t7YWnSKcqBVyRkczg0/xhQUh1d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750890595; c=relaxed/simple;
	bh=qJZnGD+fF3aAzkrj7BIbkeqZVyJM0BSUmVW1MQl+Yak=;
	h=To:Subject:From:Message-Id:Date; b=YktCtiYPEdS7uUrpZ9dffmiNTiKEHkUgFKio3BErq5nCv4REeDppKX3XDLbl2hhTtYmdfCKyz3eAQkRMMw9s/0mih8Rk6tM/pFR5YK27KeEBXAGEQNPcmPeRb5B5mcNbdkwMrAG2Da50WQ2lyn217eigk+b5wJynQ2Yz9t74WsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHupn1L4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHupn1L4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE2EC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750890593;
	bh=qJZnGD+fF3aAzkrj7BIbkeqZVyJM0BSUmVW1MQl+Yak=;
	h=To:Subject:From:Date:From;
	b=dHupn1L4+nAtIRcf5mNxFM/PSX/RDxNGpfM8vGpauA714D+Uwn3oX8VZOC8iqpPg9
	 ZKG0a4QY6g5AT2mXJxaeZYDHizAqK5cL/gFFY86IITwAkRTtHacyIToXTvgWgmxwd0
	 x4gjLBGuKceMM3FsmF/KNIniN5nNR8455hcRFTTMZ/QwZqI/p2IYTMMYOwk4p5gUNt
	 TKmaCoxgndVYLoOdq5NSfDdhYTHFU50YyqUj4rkjUtEVYpOVN52ZUFMyEywj1Fbam7
	 +W5/qfQyGfDYZXJbmFlt3yeQGbm01+sGe8y/2m3FpkoFoqtTshPszQFij0Mf0oJkuV
	 RO0cdxjqhvKfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB69C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089059357.7886.17012846865005783018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09dfd416b1c67da725d3bf59b78b71d4a7c29a64bb1c596a2f8884eae1fdca9a
Date: Wed, 25 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750890593
