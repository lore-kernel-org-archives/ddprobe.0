Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D50367
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721711154; cv=none; b=s6Tm776AXBHDIhJcPBqDPes0T9ZH+4W1nFARUc5xnG57QOeca02CMfr87OzDWozNM0ibOUZC8gu6lpGG5x/scogVL4e0JfwONmus2QBVbvp3h+mjy/EwIEVgCm15fKxhUVKFnZeJ3/oFQoVRGgYgv3MzJtvZQgrQFxfGHe4qjm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721711154; c=relaxed/simple;
	bh=y9hbuHB4AdsKK5cUq2StLfdVa6zPmOrGzyIdlmBanuk=;
	h=To:Subject:From:Message-Id:Date; b=MdmtMWAoLA2sH9x1OQatC1f1tyB0TRtJ+G/SUVQ5YFq0Mt5DfWmH3Aohj+E+F+ntNyNLcGv/anujRKGAaQPk7XMXIzFHuzepieYxtDHjRFQh9aeiWVcqsoP2tkVJj0q7a96sGNd9FDXeY+7eqdLGJu+ocqsDkcQVUbYVh5dLpv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8dSZ5o7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8dSZ5o7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7693C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721711153;
	bh=y9hbuHB4AdsKK5cUq2StLfdVa6zPmOrGzyIdlmBanuk=;
	h=To:Subject:From:Date:From;
	b=b8dSZ5o73xqlDWxOFOKvfPii235VuLBAbumAy96zjNBj6B0/kQiu0I1SeGU5zlkiL
	 46xtafIZjyHjVkNmrlkMt+Jx7P8HwHdTe81OzoGF2HbVy5mzi24nqMpgzZw0qbKvMM
	 dBYZkFTb3y2dJXOOoJ3HAbizze/NktSRxPjsDUtLRVHwgTZzGw8CxGPd4Z8+48Wdrl
	 O52XdlPzlQDDSBclEuYJO2FMXmSNWdCUE2GEBUWcfRE1x2SDX5tnz85HHRCywCSIWF
	 XsQ9C5bopgsHm6dBwwQpbT8Fq/PzKkC/C37+s9UzkvQVvdQ5QoBBbD1ICGbxjH3CvI
	 xddxbkM2Uqhqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E4C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172171115360.15898.9903296745640692859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b26acd65de0948fc47b6e4b8d208d394c46792195c1b52e206b4b976479630f
Date: Tue, 23 Jul 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721711153
