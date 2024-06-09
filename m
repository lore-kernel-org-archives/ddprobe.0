Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E823E49D
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717970843; cv=none; b=UCiyB2NR4jz9eHl3u8vKuR24aBhzpUKXiYfEO81tTPvFdygd8neCVPeQHiztRl8FED1pGJOqoaAaY0OLHXehp+ylcfAE0cXkQrRFXYo/DTsym2Ff8oN0W6rvaK02TO7sO2fkhCtmJElBr++qqTnCuppAWnmoYDB/xMssz1jV4+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717970843; c=relaxed/simple;
	bh=a0Y9ltiCJUVlY7hvwreFjosq+IR8FF4kb4IhipZguSc=;
	h=To:Subject:From:Message-Id:Date; b=dwvrq3/4enoXVodOgkmKP0Ij9PamOVHfVp5BSN2pMlCax5FzLRCwlVhY3N+XFNNJuAHyVAY/G8aHY/xtPyhfseOREtWRPdT+oZrKkDwoeFP9MWuNJn+OxcoIMP8OSZyu1+SCEWrUI/1iOQ9vXU3YNY4vkJfc4FBLzgxOd73aKTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baTE7uUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baTE7uUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C4DAC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717970843;
	bh=a0Y9ltiCJUVlY7hvwreFjosq+IR8FF4kb4IhipZguSc=;
	h=To:Subject:From:Date:From;
	b=baTE7uUU48WD7lK7vbVb44QfUmNhc0bZwxj/LIiAsXX58KjBaSAagJp1IUVoVpv05
	 +Ujh2DiAXw1yrcGNEfkCmBt01v+v7xa/IgGCsNCgRdOIXjWdLKVqT4FQeNcPRkxtLI
	 yj8u2ibc44tAtX3MXyMO0iMH7A/GExH0AHpodarmgboVZBEyTX3KQMf6up1lcgBJ25
	 jwj1epJ3zKKAic/6eEgRSAPjpQc/cHZJNQ41tvyLClO4cvQD785CsUpw2YGZNVvc5X
	 MjT09bbCdkxQ3e87F82V/lFVRLRWN3e2zqLq0vCDPxrjUNe6PD4AW6pz36DV8K+nmJ
	 5gQv1Oupyqt1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6F31C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797084288.11291.7331435066229881587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa45ed2dae63e9b3fcc27ecb0bdc82ea45476247ebbea2f2bc6d8b572c20bbc8
Date: Sun, 09 Jun 2024 22:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717970842
