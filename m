Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2C122097
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765846974; cv=none; b=oHga0cUZ7zflPH26BgcR+iblgDjRd7NkoGikRgyDUrtBxXdVmkOcqGL1Jt5rYIqvWMrbTZcky6eQmImC2srC/j1cfA1/LuRvG7U9KP3MYQDCdOLJ4Myp81MeWxyvuqHrQUXnBhyKi4qj8kY5ZrF6lBOu2ePZ+zPtUt4TFgCIiBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765846974; c=relaxed/simple;
	bh=lFebQuzSlqWot7iLafa5tvZJe+4sPtrdAupD+oVMrWs=;
	h=To:Subject:From:Message-Id:Date; b=T+9sEbMl0mf27Msg29qNZsu6lkcT6/nTYWKCpWlW1Pfx4+qFC8eZCh73PWZdQLrsR3+mBOJ/Ww7qirWi71/DKjkS0L/7uRN90fjtKM0WvowR3zYdvwHLiJ3/gg+frjBmjnJ+F2BqeiQP0YKtvb3VGgoCbP/6ZfuzDzwALOAFUZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXpp4czw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXpp4czw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A422BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765846973;
	bh=lFebQuzSlqWot7iLafa5tvZJe+4sPtrdAupD+oVMrWs=;
	h=To:Subject:From:Date:From;
	b=iXpp4czwQU7CNIssvo+l35DL9UuuHAlesxs9AO87m1YstcpZA0z97B07ehHGGlMuB
	 rCMNOMAw8AtAywOedo+PUiMxQMDj2zl5lCrrEqTex8wAj6xQFUnkkJzun9G9F0BUVy
	 gu599XdHJ98VvbOaDRVUKa8zdsfD5iT9Fd2T6oGDMQqK8Muo68+wzh8Lp1Er6LG6g7
	 vcA1QSaDrlfH18UZY+NqV57DODtkQLVJa3qCnqYq3EmN3oTysEQ5ZGguMRFfg+z4zC
	 Rtxhns3nE29gGRyEO1Qlv5IdULupCVOJRc2MgeP1UrBhHO/72bvcAd82vuo6I9puV2
	 pwEtWUtN4Wq2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC5D5B87D
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584697358.24432.4101061915055789096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59761de7e5219398708ddf21b298e742791cf047b73a3ab5faef23b1951e9f4f
Date: Tue, 16 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765846973
