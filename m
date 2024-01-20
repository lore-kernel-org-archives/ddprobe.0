Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AAAA650
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705712897; cv=none; b=mCpucEIwB0xQ5wdn1eMC/j6G2YvHEYkbR6Cg1GX6YAv/MrbCemlcDP2gH1hITTOt/C/R/zMh92gwX89xY9IDiC6vIFU2ye7/yujCzlV6A3caAulTzT8a/tr0KpvUuLSinsGlU4OkytjXiQOpFlc6CxiyGY/pHMe4eyda+yEOXuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705712897; c=relaxed/simple;
	bh=01D69+s699Ma5YgHsGh281BN6fcNapRhvnAiW0TH65M=;
	h=To:Subject:From:Message-Id:Date; b=gS7o/6NJ//Z8xbE+dcNjRe1O20fBg6nOmzYdHDfXZJitsJGHyMmg6vbjccKNGtHeNBCmqE4bDlVygBGTISLliq1dWFfYCUrXVWGy5NmgzNxiax+mZmaDpNcuywzWRddKFWE//lg+X6lfK0l/73KbTc3Hd4SrzJyt7HBYUUkTgzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDhIP31c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDhIP31c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78584C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705712896;
	bh=01D69+s699Ma5YgHsGh281BN6fcNapRhvnAiW0TH65M=;
	h=To:Subject:From:Date:From;
	b=SDhIP31c1FnOMTMJ7ZtrAESMOJTiRtpe1PgN23r2sTMovkh8MqM54AM0TBg6NKI8K
	 Jkq41pdkCMLQ6LREr31XpT+ouXN5tBLBvgQqzcNeMuYyP5LdAGFEKF+AjJPlNbI2rg
	 45sdF3uehmZtjyeHrrsAxD5HBklOkGb7ihEe5D0DfPo7M+cMm48q6CMRtkhr30z+bT
	 iiUu/sLmRUIYdKmc6UgWINJeuEoY+xQLI/rK0in/96ilcDs+N10UQsBqkudvekphrg
	 7ZappyxiHgibCXs29sYgwHKSRV5xv++4Jid1dYgyxAfjisHbGaApwfZQoE374sBLSe
	 SxEpuh4OYBu1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 603FEC4725D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170571289636.16979.6723817099576512373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14396b964e64436da432a57e3d48f5fe2caa24d07c8e18a4383913eac989cfad
Date: Sat, 20 Jan 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705712896
