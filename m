Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588CE33F595
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777525654; cv=none; b=NML921Quaoc0FyWpHOPslf/g4JoGrMK+w6RA4910urR/nbBDDMt8BnIIiNnxoiwg6U47t05ynk0PsbZztbmmihxVlH99uh3eW0mCWrb+n8djfbB1O4YqNWMVZyJLPhHctFlu/0ILPuXpORt8eUrVSBqgY9wH4nzSrL0LxUOzwlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777525654; c=relaxed/simple;
	bh=tQ2cKysQAI/9GZn+p58EUxj5d2qWwoQjFdDuMX1stBs=;
	h=To:Subject:From:Message-Id:Date; b=Mn/C2EcmfW8vIr8lZ8m2NFZQoFX9YHo3Dpwp2p8Y3AzpxlGPWF02AN/OTawkLrrQlE6oAwz33VqFkW3xh5KqyaIiz9N5GzBYkMjhqzQPR+Ka9eWhPRvLCT446kl8Dm97h645XZYbnBGbxhZQ4O+prdBHVcLC+frWd3rkJFleiq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxYvK5dz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxYvK5dz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE905C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777525653;
	bh=tQ2cKysQAI/9GZn+p58EUxj5d2qWwoQjFdDuMX1stBs=;
	h=To:Subject:From:Date:From;
	b=UxYvK5dz11UPIFnCgJZyVgcye4j6XXbpyCLFZCDtd8RBenYyg8nUSZFGzDdDW58a5
	 fLMg8h/gzcouQkfKhtcwir28Hmarsq4wkRZW3dJsu9bz4ZTwNiDGEVEqflByEiIle2
	 5eXal9zdMy/nJHAcf+zE9wtm2KI4+ig2g+2TIoXm289FnKTOLnWTfeUr4kM1wR+mG7
	 FOd29whp98t8CTbVyX11LIybgdOi/xyWxsdwczYk7vkKPfR0eOQX+T3v/jFPhn5kCv
	 0Bhx7CEUTMR8XIQxZu1ErAVJ/xEjDHuECjyK9E9Aq4N1/Ztg3JNbciDohrqIDfaj0F
	 dBF3isR75HN+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC884FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752565368.23269.7707841790352564816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d04d9d5066e816f09095ba9e19caf0005732edc75a4e1a3de10829de7bc76f0
Date: Thu, 30 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777525653
