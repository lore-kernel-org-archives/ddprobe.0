Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AFB1D0DC6
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724781954; cv=none; b=OnQEGfSO1dtt8jrQUMAO54tQ1jcm1lwkjJJ/JMehQ5O50ArzuUOvvvUfcY5SJNqCLOHOnsG272xhQWbhg+3NgY+caloilNmssOzbCOoH1JD6puzfkvFJwHnd0EXUdd9S/WKiNj2WCYIxfD042kn3QEVtgKAeEBkMj3TGNZtxfqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724781954; c=relaxed/simple;
	bh=IkIT85dW3Ctchyy2E7oZ6ZFx0R9RL41Rsk4MVJpYeQQ=;
	h=To:Subject:From:Message-Id:Date; b=c2jzydh1L/s0CAwsEGCh5ZBfsNaq/9lG4ClVjk/x0xNJx84/bCblMlKA6XvI1TcquDibTzPLOJZVZboma8CebewTz0xc2pgn6ohRmBOkp56UsjyUgAjgNLxWK62K2/kGgJSdr1lqcEmudjqCC7v0KhNhnkhoDYGotNxEZJncKEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPf2NhkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPf2NhkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEC1C4AF68
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724781953;
	bh=IkIT85dW3Ctchyy2E7oZ6ZFx0R9RL41Rsk4MVJpYeQQ=;
	h=To:Subject:From:Date:From;
	b=DPf2NhkQSB7lnp2QY4UnqMB7gwgu7d/+vZM0Wgzz7EreE4BKfFndGCmZND5NBhwf0
	 XUWae4ii/2uHzzv86ppDwN7rcJW4f3jtj3JU6YZ6UBneKuv2gCF3CDVKHfqzNUYxXP
	 j1Gup03Tt8FejntA44VpbrZZBFwA+VG5SpagvNuSCuSsHBrUwsQ9q//2QWFT3Cc8eo
	 KHuGCEmMRhnM9SiAgusNsHhmLsgrvHTAYFKXDFKuFrD+65H2qlmvnT9oT80dGqjXN9
	 sZJAVlyUUVYbBcjHmfSQzVFBf35EbgTWRZFoiqQtfyMUSkOR1MvJD2TK8bIMk/fRz/
	 9/qjZrQoesTag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9389C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172478195367.32280.4093641990648795494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e3db1fa31c2b7820d87604b38eb9bf869a5b22adbf7cbfb3805c2563b1a3c4b
Date: Tue, 27 Aug 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724781953
