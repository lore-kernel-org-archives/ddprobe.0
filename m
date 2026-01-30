Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126F015B0EC
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769740434; cv=none; b=lqzHQbPPm6HdWbrDPbXRRJWs64LWgPRjnpb0fswVfldN6jvd9sACouz9Obs1r2JZsM8j92CQWClzenIwWZd8jki61f7hTgLEqLyZFrdyMQOTR4fWk1E49LCm1+6ghyONTW2rK14SjIQS2vtNhyJZvr/MWzbVn2AeqbN1PkVPfOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769740434; c=relaxed/simple;
	bh=p2ubxrKcLBVHLppAIBln5Ah9ce/ewz6u7wk5/uOSQ9w=;
	h=To:Subject:From:Message-Id:Date; b=kgNAZ38PUm8jBbsChvR+6nUapFDtJ9j/20SdA8Wa7/CvxBH8lAADs31VzQxa3RFROI8z5IwCZTwm7X0ntFcymwpvUFwkw2LYSSGMmC6ZUJr2FAL1hoy7Fbx8yWyu0PuMWUMa6LQCCEw+UTJhxKWcmNFgQ6s/WHnLYi5ouxlaq24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k77Psa2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k77Psa2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D1FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769740433;
	bh=p2ubxrKcLBVHLppAIBln5Ah9ce/ewz6u7wk5/uOSQ9w=;
	h=To:Subject:From:Date:From;
	b=k77Psa2ghQPOynpyMFpBuP2nON3mnhpGjrkYZzqxQvWfeeVD7PNM2O2Zzm2+FA7xP
	 SeeVkf1HFWZ2CIWs8wzaMxyKzwwEk1rE4k8Y6JEW3S52jIGuQ4mxKnDAb/6T7KEUkt
	 dUhF+LNWW/s6Mhk8kidNoHX7OkcdNfVEEbuwHwy+VXrcDpbaQaPHdvWLY8wIRujwfG
	 Xng3MMglIhjqnsxJSilSViyY9i4hW7UPvLBVLj+E1/+W0ui6wL4hCivjqVc1KRcNlS
	 hx3JWypvj5bFKYSNNDEgxGL4oClIzUNTVA7B1hXeC9Yn4iZ2o5fGvYFgJwT31ifcJL
	 eVst+mJ02avHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94910D73E86
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974043359.24492.18243511135841914631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f40d4008022ac0f5dff8578dab9437fd9f01d8604cddebd91c0fe71898531e
Date: Fri, 30 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769740433
