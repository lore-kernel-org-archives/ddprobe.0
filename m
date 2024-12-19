Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C817E575
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734586554; cv=none; b=KPoqogao9Hv7gzayPhGvHVnT/wWIUJbPXqAPtNvngxRM1/37tWZlD6G24mK83ta5yln/NQO26eZf2T89TvV1khPRmLENkCDz2Cxvo/H81N+hPsIMctdxbRGVevL33e/fN43DAYmeerE4HAYL5vGY0gXPNbbftEVLSykDmdQdDFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734586554; c=relaxed/simple;
	bh=ldeNioKUzmhDufied2qtv1rRm8Q2QgjRz+/EGtbknIY=;
	h=To:Subject:From:Message-Id:Date; b=TqkoEjdfa6m4ibZ3d9rqfTjKpxi+txl0UGEJ1yFgguwSCrIDxkQyf3q1b7R/dE4iGpJ4UydPB+yMuBevvNaIZnb7JwvvDS7QRd5rS8FDTh6I67xz14/LuL8Y+LQ2W4/fCxOF10mO0HXJznf18P96G2gPib6JduD56ln82RpFpRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6mANyiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6mANyiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEC0C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734586553;
	bh=ldeNioKUzmhDufied2qtv1rRm8Q2QgjRz+/EGtbknIY=;
	h=To:Subject:From:Date:From;
	b=o6mANyizlqMY/JJOdMGGcBJSW7PyrCnes6XI5zf4NajEZW25yZkDEY2ZoWN7J4chl
	 fbhSpaFwwwjhBwqCrl0sgIDFXV/X6XiXH/2YQ1qjNbQhBw2UXmWYIQzjgAE3TpelJW
	 L7GqWXVKdx7kI0Mz+u9V2q7C+z9oe9gPs+k+WyUeTuB3RczRuG3CLsXSqVkKYSuI85
	 JK26RyQcdfiGdQiOO2e2n/Bjxi+s5xk3Gp+TH/e4moRhjSSxABXu5KAGOVhx50v34W
	 Fjq/7unv9YG+VGGKi3MONFcSMWvTkaj0icZxrqM07GY0dR/OQ1Vxnf8hYjAdQRjXFC
	 +KEN+AxsmuVUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FAEE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173458655359.11823.6741502379999651841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b69b144e22587646b6d844674aa425f771478631b2eb95601b4c4c0ea1d2a9
Date: Thu, 19 Dec 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734586553
