Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221C818E03C
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727697954; cv=none; b=LZy3JBsXn/FTK7vDcpADgt27wNmLdWYYDXT6Uaanury4DYr0DZgeulPY2n0A/KFeOKiIqn8T+hzP0wYyT+pR/fmR/uT+g3E3ZlemUHFH9y33wffL7aeBUSN7lB+hpu7RpzIZoBOftd0wEkLNzdGztpsjK1UrtxPFJZZ/arR+uFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727697954; c=relaxed/simple;
	bh=mLqvRLyrY4JGVMr+UgWkBsUwYf/d43wvt//tLdg0k5o=;
	h=To:Subject:From:Message-Id:Date; b=aVYor1/lssPr6oW/nIPOjFWZ7SiujzPYsPW4UGb51T85uP3Kb7B9VqQjbVguLWIszIfQnYgEHdKz0bh79YV9EDq4lMNqJ0jTGpIJ8qjAN4QVVbSIBkibqpxdrHNUUxFxglGLoraU1i4FthWEYmUlo203rq5N+KTw6pJgytUUba0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUAuzDjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUAuzDjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EF7C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727697953;
	bh=mLqvRLyrY4JGVMr+UgWkBsUwYf/d43wvt//tLdg0k5o=;
	h=To:Subject:From:Date:From;
	b=rUAuzDjZ6Poncq5m+1A3/jofeK82S5TRjMOKQLvmPV7pNpjDpMROOlf3XSykWLwJI
	 7riVIESZyUG4qsyTHAcxkKXEBcGHJxWLfqpMP6tuaH0h6jIftNauG2zAdsq45oD6Wl
	 7GzsmkYMvS9W4oyRAtGKOYBDjUXdyNeLjCOE6bkB44yIBdV1KmIgvCxN+sHQaGDNuE
	 uxU32lCmSYDgRmfDXtrLFiTC7xLccKtYW17qwAorY9++wdHh+hWvCPO3+e1ccyg9PG
	 MGeei8d2v+pdS3Grd7ILmGmwGdgjdN+Tsyx6gH+6dcA5AdeCBjPTgbf+xCC/LSV0jv
	 jgKs+RhY2tsqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B5ECF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172769795367.26920.8755615201520543397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2239a19c079a2eeb03788fcca74643f1d8871742f1339a95af80b22887a510
Date: Mon, 30 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727697953
