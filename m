Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2917A9463
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753615795; cv=none; b=aejkeAlIYoNxuVoL/32NBpQ/P12/OX9tsYh+Lnsg/MYHc4o5XQzvkokjwIgQM9wL53ZgRLArlVTRnneWkDMWxrvbL73AP7NHtOE41+gzozYAkMQCPxfjOMwFuX+Fhjs0G1Q+M8zt0l7tBa6KQQUsweF1ACaUfBC4P8DB+/MWbnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753615795; c=relaxed/simple;
	bh=S6Uh48BqJGp543w0/B8gWcsUg/u77ccUvcZ5QLaKd3w=;
	h=To:Subject:From:Message-Id:Date; b=u4z4UyeSYRcPGUzw9bqe+SPkzHW4lByTMHHzhBhFfqaIO2XjJV40Zoo4EiUUB4u/WAvF7mWu+N4JGfNurmModCf0garNQcO3mXGcWvRxggGpxhJZRRGAnevgygVaVL9Pjf3A+I9xoHzwPv+RnwzHfqFRDWrZVCUJPFwb8W0b7vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDPmOuVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDPmOuVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C71C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753615793;
	bh=S6Uh48BqJGp543w0/B8gWcsUg/u77ccUvcZ5QLaKd3w=;
	h=To:Subject:From:Date:From;
	b=qDPmOuVUrbNQBE4i9ayYhmpmiDpk5cN7HlNJhmAOwGDekmjfysugiIy5dArySVPJ3
	 sEwyyaVpOPw3tmXHMEy0E7NlqZQGSdczT4uOkLDs1IpebENfPvKS2c7wEQAlp3ibxB
	 qgmXqdLASDknPGWg5/vFaZ7Y2uh0c21okLBqeCtNmym0/mklUqb1eG2VNyeZLi+28C
	 XCctnqiKtWaA9ZE9bPenC2pdcZC8rUakR3ST2jFCcGqM8Gt5yNx9l1krMy6ATBPOdb
	 g6RjrmXTUFcCcQG5MhAy+j89J+Skk2XarN0XqxAR66QUUz3/h45UV6EXSN1z3ApEvT
	 +XX2wiZwsvYzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921BEC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361579357.7966.1247930494127666627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e6a254e52fbcb26ebf7bc409b4c1b06ec1d17c176dcdf8c6868e2ba1e0a4a9
Date: Sun, 27 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753615793
