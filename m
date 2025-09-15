Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B3D283682
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757954395; cv=none; b=qI8zhBIRt+9bDCkd4+pZgIP24qnYeMSNxd76aL7oWAqNmrP9QeFBfuom0bTo5ANL545wTyriizrwDwOAo67d1Quol9yA9TI66syC3pigb+gcXAJs+qQ69WeN4Qznq4EPc1M8S6i2qJkQwhtE+1AxPtXolipX3djSBl1ZpdA6r/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757954395; c=relaxed/simple;
	bh=hh2d0tiJvO+r86PJ3PgZO0mHVWTRpi/jWSz/ZFNNrkA=;
	h=To:Subject:From:Message-Id:Date; b=kOvDto0XEF8MgXZa7dV3nm0pyZpATXqoxzOcn6YcaAUGTQbYuufhP0cpP1eizgoyGPmrX4KYuI4cS9Y3/1+Lxk7kru58oRp1ZP5N0I/mxQlLKUELjq0fSMyNrMi0CmJx1oRZscFBO4Pf77J2Ta73qAO0qkYFoWh7PHzyRNR8TDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOz8Zawa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOz8Zawa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F225C4CEFA
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757954393;
	bh=hh2d0tiJvO+r86PJ3PgZO0mHVWTRpi/jWSz/ZFNNrkA=;
	h=To:Subject:From:Date:From;
	b=JOz8ZawaI2JfWPb9HKOgSCGxFSIsAZQVxyozecFLatqjqDNb0rhCKIZ9+ZcoHDlBe
	 tFcI7fP1ZUUS5BQQYzHChZf7ZslH7sN5CyzbKe2nvfNRnYg3JPPjpBPFJi2vPm4UlY
	 fHqgTPJDPNVwQBXgYshSqIbJvDZY2GwFeHwAvUAmkbDbYly7E9HBGNjPl12XmxdagH
	 9dgz1eUz7tRtGMTALfApzLhcFx3Syy0fyaTWGvaIvsSUuG6XokmH1/uqIbKSfqvaes
	 XzNGBA89cZC2HRg5YqPS/iyeVI/h76mQ+98O/N4DipWpGVsSxU+RKAdHwArogNr5aD
	 AQTL4CWe4vBwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B83CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795439358.28392.296766500569252887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5a2ac09ff4759aff6a043f14461f80eea6762f201e086a67f374e98ddd44f6
Date: Mon, 15 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757954393
