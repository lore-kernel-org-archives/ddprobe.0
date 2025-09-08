Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EAA1C84DE
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757308796; cv=none; b=bCDY0+V6lW93MOt9d/o6L6G6itSF/tOuY4oEkHZnZ2g1RpOBk4qmAyN81ofuASPXa3V+rMAzHt5gwsCAlX1ECBJ/Ovl674U7f+vrJT3H66cZlz4UV+Q/0/LPn7eFAzq+rDXDEB90KxIaRTUSFYQCyf6RoW+PB9Wtc3+d0SeLNP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757308796; c=relaxed/simple;
	bh=0WxHRs7hxT/2LBGnal4g9zcRERFh6muCaO/SrLAtv7s=;
	h=To:Subject:From:Message-Id:Date; b=fDan5HF1g5J9FnX3eoO6gCfKmm7TeYcxp3+tZkb3rrO60tTHTEhRw6f9IQmuw+V+CqYeJs/ApvYYsqpk6Y7bbBM2Txbs92XBRsY5xIYo9UPPUQm0AlM5tagg4Rh/cKtAv4wRQfDWt+56fhb/2vRfKPGAofpTWSn6fRwD/fej6eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UE4WbTVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UE4WbTVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A329DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757308793;
	bh=0WxHRs7hxT/2LBGnal4g9zcRERFh6muCaO/SrLAtv7s=;
	h=To:Subject:From:Date:From;
	b=UE4WbTVUU+1K5DvcqTT0GGs3DzPtLHKLuhvBL4DFsCMOP3kySdNRN3IGm2pfu3gu5
	 F3JYZP/PxQiaCifchQwie9owmITRF1IwNUaXTg3CSaGshMhJrGwX5Yc83j44w8jdIL
	 3ftH9Maah59Dumybz3wGAf8EMvJchBjrsts3IyDL13QYjretqg3klTj3JOb4ayYMZA
	 xjc0DVgm/k4gNu59Ud8M9gzm2elw6Ok3eORdJhSUyE3Vm8xOujPIRVegpR8W/TDHEI
	 keJuFCJtHJunz7876zJpC037UGMQyWpPWgeoJBy7BDQErRyiQhMcN/K8Midjznnzsy
	 1na54PAEAOi7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B0CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730879359.5773.10625214689091804780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b5924a89c1361f12e0a82584b3c857f2389fe8e8a28e30d296e0cf614f6032
Date: Mon, 08 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757308793
