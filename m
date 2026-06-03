Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F00EF3AA1B5
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780499674; cv=none; b=ptHayEyPx1rzA4FCDp5nSlqPKA1Rliv0TJlXEvmQxpfl2XXQx2bAD3Hwk/jCwDomebGBeRCjuBmYDpxWbSkpbLJohNHIRLtXBJ6VGtryp4q6bNWO3FGxuKmFDGrsKTIA/+JIyV8+i3hfeSBLN5jXIVujUfpy6DRZR6R+O/BM46w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780499674; c=relaxed/simple;
	bh=+fa2qTU8zqsVNIFokDzTDgfvRMrmrTTnGpuHGs7iLl0=;
	h=To:Subject:From:Message-Id:Date; b=IhTlF5lFUgBPds3BzI0Qbf+XqYrot/m8Hk78oArmzSceG8lPPdLjXDzbSXnme9wNnbWnJa708Q3/wFcpHkK6EMBThrQHS5e3qOrXUfFsBbnhAs+pnu2FtMALkv407YAb3w0AUWq5yyqswD4rN0pKGEk3TC2Le8A9ge9b4feJc8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6s+hpJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6s+hpJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B9FC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780499673;
	bh=+fa2qTU8zqsVNIFokDzTDgfvRMrmrTTnGpuHGs7iLl0=;
	h=To:Subject:From:Date:From;
	b=b6s+hpJvllmcyffPGYc1sClIs44zLN48IKG7HLFZl67zHB55xrcC6f9XSw8W/4MY5
	 X8R7c+uIWO/Q6jEpMjdHG3xyl1xSjjYSuvSYvUYplOAAUUonJA+AA9b3Hn916NaM4M
	 MXjDhtQqi/w3MhaYXjeMRQohquGQio2KDuTVm1R/UCPjzHL9SqheuDRfk4qqjSXmWu
	 Ii888yRsTADdJhVFmHG5Ma68yV3GmP07AWGgnst5RChSwnw3DU0tS1m69VLy69PE4k
	 tbt8iOwd+5jY7JxEHdIQki52mK9REa/fvDQavQoi0HUvmu0UL3XUF7y57mkMiugYcx
	 ja9AVuKF/Mt1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7D6CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049967369.31571.7678308548632222913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285f5fb01849b18f4f5531da7fcd3caf7f904f5f36e93cd751737675baa018d3
Date: Wed, 03 Jun 2026 15:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780499673
