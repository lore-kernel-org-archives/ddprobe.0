Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1572319F422
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749994795; cv=none; b=Wk1eSxhCDQwNnDMyRznajTMMLiySEh/oEib2RId5nK0yosmYIi5D6IVgm/egn6tApl6cSsF7zdmgL5rtcRQdNj6hhRfagrQxw+dJI2/vXYff/muiARZPdffMkl0AlCen9meTICGZjZsvZO8h7V8JX5YbORvIC/MEObfTSercvzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749994795; c=relaxed/simple;
	bh=7WGrvSJRum65I2gL6TsRxY7T5X/Hl+Mar8pR5ee7QSU=;
	h=To:Subject:From:Message-Id:Date; b=fRwWsJqs1nX2DuCTQ4MOLFLKl09disANVgnxk+7QZFqiyCmVFEJN+bjjj/ANXAil656JyLerpZLsKiK/YgRU0IHKPW/Wl4NxkgbS/PMqIyOEeTnY3N6ewA9qrBPx02NQfy43QIuoNtmNSEEog9F+w1jB5imtKuHE8uV5qd/jBlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEqTmJXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEqTmJXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB153C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749994793;
	bh=7WGrvSJRum65I2gL6TsRxY7T5X/Hl+Mar8pR5ee7QSU=;
	h=To:Subject:From:Date:From;
	b=LEqTmJXRx6tDN5CQpXj0SqJc0WTZgVCvC/jP8z5kK5NpvdVA1/UR7FWIL0S356eLj
	 DU38ROiL1AAEjufthZko8FmpukfT2srJa7YmXWDZ48FxOdyj4iwIiB70CzLutBK0TE
	 o5T8Aij3/9NcAB496akN7mVgxd1G/geSehjgyNaiRFDqgAvYMw8fj0a8wtRXqtoa3K
	 M7BvStMDNZYWEL6rHcfjdTITshyLAnsV0TGJzgTtFOYQASPSfKb/ZnP0xW5Sgoj5it
	 z38VDhwPKKqSGjpHWCsyNWy/w30vcC6eBRlI9qxpOiXK3PYKC+imTRFucd7e51TxZB
	 56SMUr+8Tl27A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E63C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999479358.23434.9659708620420111295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809ba597300fb7a049c58b44b04693529fcce7e69a71bd1776d25f82d92681cc
Date: Sun, 15 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749994793
