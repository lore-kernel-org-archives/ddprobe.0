Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C620182BC
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743802794; cv=none; b=NGf4hXE2pN49iSrlc+sRcYF0rEoD93ILd35sdUb8OGCqie3PVUUrucGHqJAGHBDgtVeKR4obyKNQ2rayUDCw7M7BbUrhvKCD4wNPgbd2LOHOvcD9GlGHeY1aWPYsp7c0D4jiJrZWLxaTvYKLlgRoYh8ifvtZVNpnQH3HKjSM1tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743802794; c=relaxed/simple;
	bh=HeNupvqGjU8kNYxMpVoqCEyOWrxd9EWS3AD78DcB6qc=;
	h=To:Subject:From:Message-Id:Date; b=Z4Ik7ngmAYGXQm39/9+2Ib+JdVoKQwSLTeYRLXNnGbxW9q4VtIhbHFghGd/6lyF2E+knBgTl74684AI8rgr4RQ2OgBymCdWmzvKG1upnwfgCyj4Hg90EdF0t6I+hre0T+WCcylSt5wb1JrmQ3gsRUa0upMeW2XH/yEc9xHfhDRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9AgQZgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9AgQZgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E05C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743802793;
	bh=HeNupvqGjU8kNYxMpVoqCEyOWrxd9EWS3AD78DcB6qc=;
	h=To:Subject:From:Date:From;
	b=k9AgQZgTo1FyfyhbXTjIhrx6phbnJx6vX0QVyg0GlFn+WOh76rQC/FRycOcHgAmsf
	 /c70VJ3/NkQVe0WYprmACPEanzq6xIc6PP3uPpwH6vafu0jgH9EHeiFkNcTFZWezgB
	 oGNk1VbGdobmZsrNoyO2B5wO6yWJrAMkC/LWggWhb1Nx//h3zxJS3Ei8HiECQ5DYGx
	 nB2us0RToRQumkyNYE2xEsSiz2MOmGAV8ZGFjx2qfjntAyP0FYmQNpmEUURutp9gbm
	 EfyA1aPNdg/EBg/Xr00zVLGV1oZvsbvh5gB14XNGgaG37UB2caImkK4CW+BNVzvUcI
	 zktCxv0JY3ecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE279C3601E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174380279366.24604.12137893044619992562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd19e1abb0315061560b51e3b6ce478aeb9d3fd8353e21e705817c3da74ca59
Date: Fri, 04 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743802793
