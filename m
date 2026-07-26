Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E0D26738C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785089434; cv=none; b=bTry0vBeDrSkfVHyZRf9/7vSAw4B9SedIQmNugRDMJASbv3wdBuKqj+K+udYapaJR271NJGXQfumLKS4xURJ6/FW+tsLS8MRI+0TLdnhXU2FdFTXeid5C9kCD6r2opNjnZAa2bOGPaj1oUcJeTLDXuqcem8Mrbx1oGMfiq+sOrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785089434; c=relaxed/simple;
	bh=HQc8j+jwt3meGWvjAE1dufQBehetJsZICplj4PIBVa8=;
	h=To:Subject:From:Message-Id:Date; b=S/qbzo6csDwnsuLXOy/NZ+Y2qn6CHqvEsp4YssiM6oNOIXHGdy2ofLL4l/bjyvxiAafodjyb8HcpPLQk2wK67jLlNpj7M8NhUDfxaaCtDjHLxb6WXpsSuzL2eLGxlAhV/XqEktk9cBnv3vK9FBRIl7pXAzS9MSAonXNMqrJJ9Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElzwXMo7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElzwXMo7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E45C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785089433;
	bh=HQc8j+jwt3meGWvjAE1dufQBehetJsZICplj4PIBVa8=;
	h=To:Subject:From:Date:From;
	b=ElzwXMo7suJD3vhyBy04vr77Z/lZ5I1FXv0DJB1ECu3n/cXshJH9iUxJcEmOFEKtw
	 X9vtL6Q9Ive+wZLPXPi+mMIRFBy3b06JJP0QTjAIAxjglKveaVi99N5xCT0hmLPE3g
	 USeYBpljElesvn/7rK6QlzHg+bXtsAne+62lfodkkiFbJy/yWmjYKF9EWSkthnngTp
	 O1oJI7nZ1LyoHY/wPQkRpJlfs5TZJQV9R/nHeCQpXmDNEymvnuGM+ovFMpYjaF8865
	 TTqVJDvmXK97yGUwAiOA+9nU/oXEjlyt4Woj1GcTMsxJ3ZJhN15IxYEgJL0FDhk8vy
	 WA4WJduWISJVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B056FC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508943369.22429.3379061935808639875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bdf3bd885e4904e144a15072c0a395100a4576dc9e2db9badcf9c1eeb9856e8
Date: Sun, 26 Jul 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785089433
