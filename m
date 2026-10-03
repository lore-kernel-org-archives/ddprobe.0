Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D91A1FF7C8
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790994634; cv=none; b=I36yIWsp5VtWJMGDXQpKAI7TaoSuBptwJZprYTdiAavd2HT4BEGcHO3OaUc6z2pbIVClyH+Jb17rHS1uKPl8H5b9tP2yaF5te3jkMNTqtcExQgaiY3vtK/r+MS1BdP6bqcW3A8Ua5ScLJ/sp9Owb0USg45v5H7dcVISTqXcPFoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790994634; c=relaxed/simple;
	bh=Hu9w+p9meF62dzKQztNxcGjJS9IH8N438T0RUbPNfyE=;
	h=To:Subject:From:Message-Id:Date; b=jKRiF/A680idvdPrEcwOJp2OFbv0TaPOS4A/uhsqpmbpZtJVnVBiZIXVT+WI7re+vBMu83y4K6GrHi7Xds9ZJ8KU+5tqHU6IUrPvkHXoQD9REp3xcBNvWog2tqr838DwBj74WPUDJSPSap6MZRYHQziye4Zo44IUOmjCoze5YVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZIwaXFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZIwaXFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB95CC2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790994633;
	bh=Hu9w+p9meF62dzKQztNxcGjJS9IH8N438T0RUbPNfyE=;
	h=To:Subject:From:Date:From;
	b=hZIwaXFG86mW/HYqEvvKU+0GcwV4pCksgV9XJme+8eCDlJhSlbZrbDxDKg5fdmxli
	 xzM/HM90/MHUX2NmMaCPXT4kNzCUcw5jJdk82TXrYk1UekBrskw9IcKmVQYHVslxf3
	 dZkKXRjRzSgbj4D1NqYB/fq6JFMbVIqPtdSLs6qyCOMgBMTwkS8k2z347Jg5mSezaI
	 gixTdZ7OrCP32WAZ8jmcisEKA54V7dydOoYGyGDHEXwnP+1Csf5LK69/zbouLWAi2R
	 tvuIdZjC8bpN6xbw8Wwdd40OZJchpEyE/G+D9/BNSVFTRxEir8YgLj1080zY6ZnfIc
	 VKYyMlpCFfpTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9651CA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099463368.20573.4384122912103424047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aca84696e38594419a1c947bdcfb0486368b63a899d21219ff8a1c671864823
Date: Sat, 03 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790994633
