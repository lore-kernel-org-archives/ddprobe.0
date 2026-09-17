Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F7A4CDDD4
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789658435; cv=none; b=ZG+arjAfheS+Lh+KYAYkUYsVV6gxwyqLc3YRETC2m14mh2mPDp2e+I7MsCpOBXwfNKv3Vh13Lnt7q2cPL2avUzR0Kqr32ad9U7ZvjNow1MiYdagtdQMg9Ak48XQV2YV3Xkhu5qLc2uC8bfJGCuhhByGpQY8gZfapv3NF1rcxliI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789658435; c=relaxed/simple;
	bh=+czgK/v1tlivyFgDZ3fWSF8jwkij9eevtv9OVqlUrcM=;
	h=To:Subject:From:Message-Id:Date; b=nqGRNVf77RuVCfoNex4Ddrqg4b5yR1Io2LMnxgcr4x06qaRslkJqlzoj9co6yXbIAdhs1H4Bq06CpekcQ17WX4ZbcOSuySDiUwmgv7SZ5aAuBcCmEoakVCzpllYgmCFM8BCZY5S72k4/PEwUBIjypW04YW32ETtuaNugxd/B1PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgAPiU1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgAPiU1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAC1C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789658433;
	bh=+czgK/v1tlivyFgDZ3fWSF8jwkij9eevtv9OVqlUrcM=;
	h=To:Subject:From:Date:From;
	b=UgAPiU1xObYKEi+nxI7RVMQfokVW1pWLJAF1qWS2nUZkpc132Myx4/1+Ya96aQq6W
	 C9kpPIGhqIwewewk+vjy2EKGl5bw4yPd7nKPiAs81O5z5a9XYQdtYH7vhGeRTCRC8k
	 FQS7PFYVOb05oHVEoB6x9kSVoMQm06f0DuXvF1HwhziRQq/EXABwlNxivuHL8rkjAU
	 uoVsVj2LWHYpuq0NqV7eO0aGOtQEiD2y4cBsNrzJGRtKOWc9Yzsj+qGN6gygudDsGb
	 LozA+JpTAiIEhccm9S+/Ls1SULjWhk3NmDyuBgj2JjknytSXd+8vEsvl3IbgXQoPx9
	 HNGRaHwIPaTNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB134C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965843368.15308.18443314492718118953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e1fb176274a71304971ad84747b5c402406a34113e59db3b1f39f094a5960f
Date: Thu, 17 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789658433
