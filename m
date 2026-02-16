Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2834C2F0C79
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771247094; cv=none; b=sYpduawwh5opOaOgpubHkY0nOEAcDVe2QcAU57BhIDua610f9VO9RBgF7GnTAzfkt9/jV3IJmZs+d3hTMyNEFLDn3LW2luF2h0ueHL7kE/f/Hc7+bxWa85rqxuGVF5yPZO0YfgQcMWjz9m0teN/t5SvE1eXbdgbMH9sA1scWv4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771247094; c=relaxed/simple;
	bh=+UqVCBY/A+upkUvIEMMtfy5rud1gdS7SYBbT1ebrT6w=;
	h=To:Subject:From:Message-Id:Date; b=CM8MYJPK3KqxwaVs/2zhTSRkihcL0ToXpPSGbiHPbCzirmz3a0+PThatNvFoN5HaM0WIjwDJUD8jLAeeJ7mx628f7qpBqiqyOxKBzDzRANE4lJjhMnSECvX5CE57ByL+XFGCWyKAlEnhuik7iwlurVMqjQWA0eur71ofk0PMz0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHqP3mVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHqP3mVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7884C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771247093;
	bh=+UqVCBY/A+upkUvIEMMtfy5rud1gdS7SYBbT1ebrT6w=;
	h=To:Subject:From:Date:From;
	b=vHqP3mVqIo8QDnX4CFXUonMqa53Oqr0Icgumo0iolKD6SpnSTAkrzX8Se8E3uTtSg
	 iPhuSJ4t9mpY1pQfId/RFwi5g+IrmoF8LhCFCZoLlwnjEPcrdgVGOUlg6QY34EVjZR
	 yGu4i2geQdV95Pf3pk8EKtQNgQ7dpY3Eg2jHi5C/3rj16L3P0NJfzPA1URGP+/atCd
	 u0lLtdfiek+N2d23rQNVvvquanRdCXvLRpEcFZBiTXkNKTmCXOCjoX/l+VEVi8llUD
	 Ctd6sbyMMIZnWMWaKE7TK89TNWvnlcR3THzTJwLHoDRYtxiYXMan9nWwTwhMUYucS+
	 mDR4B76Q1V1zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9726EE7BDB9
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124709360.16147.11597288673083109736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52431cbe8855e69aade87baa06bf5e223148949d575dfba0a4f37465eba84e74
Date: Mon, 16 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771247093
