Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4121448D9
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719346403; cv=none; b=BpdHcJE9DWJJpej1H11tnrdN+ShiQKVnbHzH3b1ePYQNUGAzhkYvFLI7I0lJDDISHuWNklqNHqK2EUTe9544t88SAzJb2i76L0DDCF7sw+ZZj7bNv3ryJY7z8/PDSzk1GlSEY4e0hwOotg+PX4Q+7uSbjWYoPLtzYqMoOHpje+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719346403; c=relaxed/simple;
	bh=8MzQX1LUmUQtc6CGe+Zo2lkckKKnAQWO8VB+9ROKXHM=;
	h=To:Subject:From:Message-Id:Date; b=VShOTdFEqYvq5I5vvU3kW9+r+rollgG2DgkaxqkYYgUDclIOvo9Sptbm2fby7L0Wzqf5V9UVOBtdzxFljsWvWWV0nFqC5FDsgx30mLrEOHyfAGVBUTBJhBrHJmc6qJDkkuUjec9H1Fi2fCYaSftx6HHW1KSBM/XPOiaEhA39mfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0G93oOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0G93oOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC8DFC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719346403;
	bh=8MzQX1LUmUQtc6CGe+Zo2lkckKKnAQWO8VB+9ROKXHM=;
	h=To:Subject:From:Date:From;
	b=c0G93oOy1YNUmxHw2/GtGFxFb9AsdCD9MEMrWM6k+GCVi6+/qcy+waBepum+73oQm
	 7Dy81gupllaFAbhz0Smevukr2lPjZy2Vm7hJ/o+kubaJz/7qAO5YzNjGru5Yn3Vt9t
	 +Nw70c7vOUTUvVk+XIn0j1vTCGW4e5aPtsqj4zZYCq2txgCDtrBWdF7sKi8X/xr19V
	 Dfxv5z/N7VEs+hPNYSPS4olE6Nfjh2B+LcvkIHw8h6mvauLRtK+b2N3Rg5MUl6sTAN
	 wIFnO8cF6KrxZTWFq71oD66QddRm7ym2opOttxFdvScHC4KdMMVpDGPSr2FCmLE1Qm
	 qJ9hTzdHXiCng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8127C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171934640287.31317.539040683045167362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6d3666afe3fa9ee1bb9827fc96a477d18c019e0560d0388e73f65d44f1fc01
Date: Tue, 25 Jun 2024 20:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719346402
