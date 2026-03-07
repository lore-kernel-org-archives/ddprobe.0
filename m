Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E0123EA85
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772861094; cv=none; b=stFeoBsSR03yzsQi3W9q/E4NNUI4oec100D0Xtw2e4PPRX6qCguTTX3S8oPS1XQklIZwIVOWL3NWV/DtKDMT/NE2owr+V9UwdBfMqiIlmpFmtpd4Ul3tGv4R1JN6Y2O3/ncWLsslXfrLspkDFkIq4StZdTYzG3NXEwOgcB0aMeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772861094; c=relaxed/simple;
	bh=dImw7j6DD4DLJC/WKbeHqM4N6hYmK/GJOY36d6VeNG8=;
	h=To:Subject:From:Message-Id:Date; b=rIkZft1LKGYdPMRx0ByHkKd/4gkat5HSB1vdV4lCcKNVO748u93tBEY11JyVuqvNrDObLA7d4RY1CPW8Crn/FsRkHbDY9AEkLYw9dWPvUW7Bk8E+HiTjAEbjR1V+DaClzhdA7YAmvGFiyU9Tz8wDOxjzAhe3DqDHsw16N/pnHjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mk7MireN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mk7MireN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9720C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772861093;
	bh=dImw7j6DD4DLJC/WKbeHqM4N6hYmK/GJOY36d6VeNG8=;
	h=To:Subject:From:Date:From;
	b=mk7MireN45Re1m2HRFLF7uEEL+boQ+VCAyNPsRxHfO7GgBLErITAnTAxziKECw16B
	 gmnJYc2bAeMvrpSz2ihgRMbRtXO5sGAYdBiO2HB0A3RMRGcAol58BVw5JIPf6KaZST
	 0ubwCe4DlCsJAlFZgdkihoEOilp3Rr+56bB6s86t2ZE9PPLIa08ylOEnqCqRv6elXt
	 5meL/ImLh44b1K7AbAydd1vAdNMt7YF+jH4kiwXsjUF2AEx9OaAwDT8V7sunZHp4ud
	 bybSNVYW32rlMY4OoiZJZoRoJZHIopORcptWzV8YeXTLTpssTsaOvTjnVdzOnmbVDc
	 v3i6t50ibHOEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9339AFC9ECF
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286109358.22340.3985713264569374953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9595f34e317881b824d98d7b73559b14f627e29e14bbc8efe0cf48472cd834bb
Date: Sat, 07 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772861093
