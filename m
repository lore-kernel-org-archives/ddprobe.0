Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC393A6B65
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783545514; cv=none; b=UhN6SywlXNLh7roPTOrQElnYOal0jutPMzLOMtowCOXv4HnYSmtPz4M3HhPWeBWqB1DqimvHpOZNhTQpk0+TJTFrGeXrQH2yE25o/YepTU2kSt7Td6Oyysz0EOenFU5f21zEOUw8Bu+V3U+oyBVnZrXqsLMmD+CQ1c/WKHqcs3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783545514; c=relaxed/simple;
	bh=Twy+KE0enrDqNztijPYmDveZKpFf2zAejk2QU6WV0wc=;
	h=To:Subject:From:Message-Id:Date; b=sdNrLOiqIYIwEgiTFVLUbewZRotaaF6OwVVtFDRZZN4JZZUJopku9Q6TNpFsUOXw01uTXy3P7dAQksxEwro+myFbsitoB/neKoqn346IK4Nry6IvhuABh9EhEntVxSK/R1qpTPG/kOb6uBfrcLOWGBgVuTaDlUiT+dfQXK9lkBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaWO/0iS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaWO/0iS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E40C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783545513;
	bh=Twy+KE0enrDqNztijPYmDveZKpFf2zAejk2QU6WV0wc=;
	h=To:Subject:From:Date:From;
	b=EaWO/0iSU2tViZ5DF/ZXZk+JsUG2LbNp++xKxJB9AgeEuguvZRTy2jsUtS7QCbBH/
	 Y1B0iziUqlPNfknHOvFg3/L1Iv/bHWKUqYfl99R+2vm0wm8afS9Y4YoM98RFnbbjnh
	 iYTAqDZqhJwYVAUjr9ruHQElgUzo2aoNLO9t+/8HMWi3l0QkYVo5Ve/lI/hdRgn6R6
	 PxokgDj0qzf15ouXUrwZdV9LwU2/ZWLfRLNz9u4XTI0LZbCS1IGh2slE4L57JtQ+tF
	 tIM9x0WH5acSeCjTS1tu4RrQBs04iagFIKYJU1J5qKweGRKQO7ibboo0WPAixILJsG
	 XnEdzEBPHTPbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F3EC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354551368.8672.976892938039397583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a55165c5eaddfa1b3226cf836caddc5e78d4022deafc12e7cfb621a1bfac80
Date: Wed, 08 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783545513
