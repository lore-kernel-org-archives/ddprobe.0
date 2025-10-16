Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0EEA2E8E05
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760597394; cv=none; b=B3Dc1Ox00HnhTTGXPV69stKdiybMou0FuigyCqbNYl+JM2yj9jYbkhpA65jrwmWIZLPgjoYGbTHDAfRt9PLfcL6pBSwmdOuDZ3PwDr+g6y2/Jol36UiFliqHbnAQDxHsyn3f7WokzBqn0V3Pn+vQmiL9+PESZuULokuZhZ7bTjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760597394; c=relaxed/simple;
	bh=dUr7anW1/8DqeLVfIortD9O5k5F+s0OvDh0ktE7fSKA=;
	h=To:Subject:From:Message-Id:Date; b=Y/V/F/PplmUecoDmBB2SMec6J3SPAZDhrkaKZbuULAL2F4MESZhFsF0iFutbcQZ5Am7dcD2WkUkhIBGtLWhsygRFYL0cwYs9J4FR+VsSI1j2V2C+dVBJ4nGAJPTqMMQTZs8aU3lPC6Fl27/A0q/dxEHln4nGfxEz2C52bRtC0mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vi/RWGUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vi/RWGUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCDAC116B1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760597393;
	bh=dUr7anW1/8DqeLVfIortD9O5k5F+s0OvDh0ktE7fSKA=;
	h=To:Subject:From:Date:From;
	b=Vi/RWGUFUi2oYpUaKd0Te7IAaF+KqRGr+YDuIt4KQIhLVJRU3G55dt1ZLoH/loMO/
	 TQE3ddb/AEg9AyB+V+NK/4TPF//RndEn0AaoVwer7yyKrYwZorElv34LT88X/8knbD
	 4vX9yVBNSae8LzPD0hwee70mMU/loP00xBZDg6GlS8T//7loY6qVNM8akoWPi6WGHD
	 tnwzwdvNbdzb2sEvCyuqdOrRNX4Vtx4jdTWBBizU3GiEmD5daMqV7EULpz0c1N/NOa
	 wWuJ4vEmhybWuOXTs4qpjNSQ1Hp8r4lnm33PFlPiL7k+9X5IfSsdNlFX1t0jvtx1HI
	 2TN+aUoLtaL9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90451CCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059739358.28597.4980112357405430571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a97bf0e8920df784d66d9a22c0d1850e3b39eaa23c010129634bfe37cc51da
Date: Thu, 16 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760597393
