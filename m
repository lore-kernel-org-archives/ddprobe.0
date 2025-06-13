Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F932DA77F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749804595; cv=none; b=p/PnVT9EbP+u7oDoJQ/qavcERB0VA0FaLccXTicYSWKyA6d0LjJIOohaJGIYox20WHNo72uBb3xRpH4E3hOvExG8KoR5q4lNchd4ax0CBkDSz6LryQASW/m/BRAkmumeRTTPGe/P/Qn8CssoFXNQ53pxDeO4Tgj+3o/+QgABmqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749804595; c=relaxed/simple;
	bh=pLA0RPFhHFBHsGC7104w4R0T39nJ8mPj1Vx3z+askwM=;
	h=To:Subject:From:Message-Id:Date; b=X9xgRKe9WNVT7Sc/XmGlw2gljBGPfF1SBkSbJE4EiX2Ofu36oKkW4LImRVn4daGQrqA6+tA+5Prf3PFlCVJ65rGH+iJTFy/6UU88kUroAGfCGSrI4YB+Yp12thAiSk3zxP9tgs6caPefRfWeh5yUnV2NloqehAEIgC4RBqB4eMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dg3KAff/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dg3KAff/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD41C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749804593;
	bh=pLA0RPFhHFBHsGC7104w4R0T39nJ8mPj1Vx3z+askwM=;
	h=To:Subject:From:Date:From;
	b=dg3KAff/CE11AS9fw4A2XchihwzoHdQh6E+VHBIrKzCeLBJMYJf/Az3ZywkmKWOCf
	 da00TAZcg+5c4b1hFHmcnPGjD2KMZvWqtLT/msXd9LomZZM4YV318bqSSKedez/yUv
	 YxTNJTsTTcLb28LvGVZRYxO2x5uAnZp0qKIwlHzcuW97cSmDGGFXaZEAVcUCPqCwsL
	 U6hEukcF66CoOYmUfEWmMCTJIwIlNhiJoyfMKuQSCZ5MyRlNsI63NNK8lrh2sezOQQ
	 FkX57keE3AyHw3NMyX7MJNA6ZynwMI3Lv0OHHwUpjpXWQZFIfndUeknuC7LrgzrFI7
	 Lx0Wn9WgxwqzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90299C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980459358.3833.126284973375295350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0a616bf3f42ef2d67e2875335806a3a63897354ffcf5f7687bb23add6c1a7d
Date: Fri, 13 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749804593
