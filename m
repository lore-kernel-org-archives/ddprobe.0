Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18559313E0B
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756231794; cv=none; b=edMqrb8adl3+49auZtEShmYQq/fDcwOO5TOUffw7JwZfH6WTZLH3ySWe7g8PLsy7Nr1c2nOH8kmQ+EL2mbi2epTxChh18kHRpRFgjtXTfYC2UJxSXwIiUR7/0YK7TTfAPeEgOAQrsXbPo6Tqf2iOEUxtCWU43Vv9D79FPnzRe/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756231794; c=relaxed/simple;
	bh=vKDUxXN9Vf0V9jOZ8u0Sp5huannpcDbeZLDIGnGeS48=;
	h=To:Subject:From:Message-Id:Date; b=aaRddGhghmlLPC9fla7vjMv/jHRI5bscbp7DcTl2gfw1FTI+oRCKts5hnhz57ggX7ETupnBCeUdWglXcH2N2Hz/VGa1Qf4f4SbJ6UiwT1JC7i9Mcg9gOQVo7BTG3slqvzv1/bvtLk6wAZwlDQ870FZw+2zchBo56wW0KnInN5/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaJNOS/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaJNOS/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E804C113D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756231793;
	bh=vKDUxXN9Vf0V9jOZ8u0Sp5huannpcDbeZLDIGnGeS48=;
	h=To:Subject:From:Date:From;
	b=eaJNOS/VggKH0zY/D38KIXfGpWDq/r5ezEVWkQh+Ximwa+paXsGKeDc+wEyf7cKxy
	 sjRDPA8seXZc1HHnnfD06H3S/urArS4oL867GdrvGzEC4pAvOv6xqy5g21UkY/Vg0N
	 NwD3rN9wBz56Y6L8pM3ndrgZZK7DjPIGg1rNH0zDa7FxtQP1nQFc5z6x6ZOmADg0P/
	 yc5Rl2JWDzSSj96/XH9w0ZjXOigG+AX7feuJ1k8NEQJPY8Lo+/jiQQjC1soWM5ORo8
	 BKo7Yp39vF+JJyN6o5NiJxIk+fPwlc5vCxW1WsW22HXj3sWOAX5iksiEn5cIdOtKTj
	 +SmUDZauBBYNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B1CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623179358.19003.16910018071002536738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 810c22b55e7469b2295b6e3bb6e4ffa99aef958af74de5d20ddd4433545e38bd
Date: Tue, 26 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756231793
