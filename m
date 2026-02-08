Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6382701C4
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770550434; cv=none; b=i4au6xLUerSzC2S4RGBJpIIUteXRkSJDkdP7RjsBZK3DUxgVgZpGZudBe9CYeEZfxBHQC5tEwRvC8VvYD4PDhurfYLRGeay0b9xeKbKgds/HeVSe2YN0ToUJ59p7kIK66polLP06UPOtPOIAYo/NMW3ovSjNb9vQRRB3bh9DSWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770550434; c=relaxed/simple;
	bh=bXeuE5D4p2waDACAflPK/nDfO2HPGJbW7SnSb10DSPE=;
	h=To:Subject:From:Message-Id:Date; b=ChDkpdUrG40SYhhjYfjGhjNcQzTLgOpJ0YPacPXv9oDqqsNYRH5cdIzx111n1HxGnISlykW2fdvucEUlG5vTd8crHa58e3TyW1zC4wzaerfagzVEK39zRwW92uIjmlMIcmVbcUKt26Q4HMOyI1qBT4s44mKpgZuKwe6JvarDE7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2RCzjPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2RCzjPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B522BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770550433;
	bh=bXeuE5D4p2waDACAflPK/nDfO2HPGJbW7SnSb10DSPE=;
	h=To:Subject:From:Date:From;
	b=E2RCzjPfkC5iQGEit5qst7Dx3SLrgqrlGx7xxbfe0OfdzRWAHkk14CNOkBsRfShsl
	 Mbxe6Ey6zBDNyX7ECvCr6NmaY0RYCT27R5csfUlKVylvxOeD7TqhqKgfa9yeTk5CIl
	 zRzyq1EPZ3yvAbXWaQUWi/PSffW9Z7QQiwVZuOca1PQAntsuqCYaytbKDtAMe9j5Lu
	 GNyddkWNArY9HqtCUa1V+/N6fQbtZO3FpeSEHaT07HrMLtPyqXWWwx19MugCaN2bcD
	 VMZsuL36YZF3xLHhSJriogeu4Hxwkik2YgXM5mwmg5Ih8hXxrc8fQIDqL0CXJagHDE
	 x6CHLiT5x8ZEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A025FEF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055043360.21300.13498273283751057987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89ed6fd12cbeccab6ac5ad5dfbb86c503b1ed83a0691ab923ed0284139a1693
Date: Sun, 08 Feb 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770550433
