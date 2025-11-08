Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03AD6145329
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762622394; cv=none; b=Xzd5ilrkqCIYjYPR/JAaxl6JD3+AMq/2iLqS2pU4qB6sMtdVQTuasXObsCySuLJuIpe1rMHUj1/maaG440qbti5pjZSZaIVPteFG4JGzzvuSq2p28sk9t7fnG1KiXEFR2ctdLIStJ2jldBhuAHGnBeUTFIKld3f/XR0WsEUbBVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762622394; c=relaxed/simple;
	bh=DYEdQFS6bo9bMbl+YF7vmXoIB28BciGhFXy0HSKrhRg=;
	h=To:Subject:From:Message-Id:Date; b=QhWBPOjRAxD6xof9Z+SEK4arsE0DpQECPuLFr0uWI1vd/Jonybgc8DN6Qs3e0d86roYdykBxMmshuHY9bC8zOjynpSmR0roCtVS2NmthH3AeDhiBSWNfXy4O3iuRhojIywAHJAIioZjF8+mrRXJ/eGhzREW3BP7XyTz0/1Y6Bh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fP5CT4Cm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fP5CT4Cm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5C3C116D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762622393;
	bh=DYEdQFS6bo9bMbl+YF7vmXoIB28BciGhFXy0HSKrhRg=;
	h=To:Subject:From:Date:From;
	b=fP5CT4CmF3vkZHJeowW+WN4GbtUG7sIfKTSe9Z7pTv+cMtlPOh01owZQgzqRAp1aQ
	 XofWEzsbGeVH31GtK7jCMIIKoSJMALoUcjmlJlBBg8I22ANFF4ptbPai+5tfSFrtFu
	 HX+YyhE8w94ftoeNjtK6nQxxdq/JtRv2IabHuM7n07gP68oH4gwVkSUQ3gZQehSkN2
	 AzRzAhyMzpTO5OUqzIF2VWYOjmd7gR4btujD4ftE3bxdE2g8qVm4EBsAbXMZMlL5O9
	 luBWm14zG0HWcCwL3hfH99vC0c+Aq5eROcTtsdYpxG6qgUEAFqC5AWihn4HFTnL/82
	 6yp4RHlMvOKvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930BFCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262239358.21552.9172093747347089237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75987f09e2badde815751e0e80e93ca980f61691c19f91fa3dbb7ab7648f152
Date: Sat, 08 Nov 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762622393
