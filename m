Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3CC73467
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721064923; cv=none; b=sNXWZ4eFwvVRq3lw1Rxbej89ACqpMs6Fwk7AJz6s2I13lgQ8SBcZhYWE5Am4mPsznXDz+hSrsUVlrj3YG/RqXfPbyNLtNcjLhm7hgz/kVy9OMBiA4WJEqpDfd2ayUeZVuv23n5H4EL2BLDl0sD0eP+kLD/voWHJI5P1v+wPit/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721064923; c=relaxed/simple;
	bh=2HoH/uhitr2ypyKRyfo6LqdKjL5fHpHgmjZlRSbmHDc=;
	h=To:Subject:From:Message-Id:Date; b=m/Lty9JceEGBGoPGvnWubBpXTBkaAewmZb9pMMlI2cwhfbsYB3XtB9nydwDl9O4cNMjbzMj7U9Cmxe4N7PB96f/iv1amsh/beAWFIqU+58mmeFbrO7SlXDV+l4kqO3ZQ0/6P7U0E9J1BgZufbwzGhf9yT9CnNK1virhtzu2HLSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d78124o9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d78124o9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAAEC4AF0D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721064922;
	bh=2HoH/uhitr2ypyKRyfo6LqdKjL5fHpHgmjZlRSbmHDc=;
	h=To:Subject:From:Date:From;
	b=d78124o93VDPDTITgi++6BJWTgMbOc+nONFrq2UsrCTXiNWoZBNNLmzlOZ4AVvdvP
	 mKuLAmwvGxk375tHzTQHHwZyM1YrgTsVxJvPUYER4f+7EdOMDqMMLkgMOdxZr8HXkJ
	 G6Abc9Q+6vZswyyFlGH24JGQDopeDMiCc++FWbw3Xlb7Ykqq16m3uaBf3Pwwu/KFKh
	 HUFZ4tg071QNCWGcUCPs5nUnqWgamNfbiO6+CZjExUxAgUFM/foAkorhfG0kaGwazp
	 nqU1ixO3X5esrk22XuY3jPvnfpK/nPRfc772g8mHABWhMtxJFkUxC0DXhzDneZgtUc
	 J8/4ju6OAK3Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C165AC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172106492278.28675.14504320899830960499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94a866217ff83f84b5322c0556f29fe00276a3e13e224d5d9bc5bbb6c5754021
Date: Mon, 15 Jul 2024 17:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721064922
