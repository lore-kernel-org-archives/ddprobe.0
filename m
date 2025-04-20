Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F9B13C3F2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745148594; cv=none; b=k0nx4ILdzAvsYqDW9U/tfwzZVdUIo08Cajf09Jm/hikQ93JLQ3VXm2a+2i2Z/o2JxGZdLZCWIw5VNcbKWbFMUDLXOqQT633gE1YkebDTq9n4EMRlubXfd4hCmZs+4fHLWR3ymky0Oz8Ftu8dx4Peb7Zs+js+mgQrXSq0Cn/IKf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745148594; c=relaxed/simple;
	bh=g8tNuZ9cmXMaraVt15os+K5lQ6NGcvoCmbVM8Udj4jg=;
	h=To:Subject:From:Message-Id:Date; b=B6XOcUhNemZPmhyBT1Ai4qPUcZsbp2VtBkHY83OHCp8A09kIcvO5txNQydCVVVIcFhrHFM7CgU/fZHyPFtElLD3zKQ6aLKO+zYiUm4Bj2WDxdLEzbpJS3DfSMG8GwyezvzZDZULJVM4U+IJOTgXRuIL/lw2ktdbUIjrEm1ERyv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKUfi845; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKUfi845"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A989AC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745148593;
	bh=g8tNuZ9cmXMaraVt15os+K5lQ6NGcvoCmbVM8Udj4jg=;
	h=To:Subject:From:Date:From;
	b=nKUfi845tczxGxVSn3guHCrebClK62WkmUzWyXqHjOFSq7ntOf4EG5yexIdNXDnsU
	 K3OTFVbeAGXP40691gco8CeaehV/3rCZw5pb9hlXfCylbnIA+vepbdFGcen5pYQBbG
	 cmYR3zlIUQvb9cmUxB5Wk/kB16s3jP1Nxecydl6t3YfZk+XQG3ymBq6mc3hOEyuyoj
	 /GtGHWB74gPAd1A1K2PcT4sh7suu7vNTmCZ2JJQq03JldOkpx4yRjYDuDp53dKn+ko
	 K+xRRyqQBfsbG3eU/1Mrjif3hsi4w5k10EeeLtGIN+Gm/8fp/vDYvPpVoXQ0C5icZS
	 aG07CO+otBYVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FBBC369CF
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514859358.12271.421604028233529249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd43b765403a5c0325c2574271edcd01192db020e9084858648a2c965b0d03c
Date: Sun, 20 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745148593
