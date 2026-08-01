Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97701377A9C
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785565834; cv=none; b=oyvQGfANAsBVKpJQDfWdqY7aPMasT4kcbaEwsK1aHhOhRhwUYiSK53sy73rcf3AEdsRyAkeVWjJnJdIY+VJyOGb6lKyvdizB4M1QDMoh61mgx1D+TLLvRa9tXGoWQBaNgKOvsf8rxakQG3arLa0JUNF8SUYv7EdgRmOEBch35Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785565834; c=relaxed/simple;
	bh=7norVNgkr2F+WCdUv6YUcip8zYiwMHl9YsaI/lO0trc=;
	h=To:Subject:From:Message-Id:Date; b=AkuTW8yqOO7ju3kVpKA1poxiUvrQb5WsO8+mxlzSJtR2Lox3X3intYvs62skbWS2gWge3rr8cdHZvVcAUck/1tHH5jOKdcgcAl02zCitI22nW/CPOwDs6n3QjhSprViBMNA4+nRFd7pSRdkwsRXPGDk2D9uhclZ9eWyLTWfoUng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MISsvrdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MISsvrdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0850C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785565833;
	bh=7norVNgkr2F+WCdUv6YUcip8zYiwMHl9YsaI/lO0trc=;
	h=To:Subject:From:Date:From;
	b=MISsvrdIn6jPLqqSDZ9FF5ch0dehFkE+svhkA8cCBbWCrMiATvVuwLtqBSXQNwmvC
	 MKlIZQJ6tkhNzBm8wCO80HdsFwqqQ8MkgQyUtGheSg7oHuC2vkh6oFGt7dVNJk5yyg
	 3MI4/dX4RbBjfXWgLYmwGEYNbsaEiQnaKp2HbhwtuFZgBG4ncK+tPORnCttT2YiOOg
	 pl7ZFZSVwr/u702o/lKtQdsaAzmeonP638+eZY2rPCDwZitkjj1P0grho4fmFCCHYG
	 zqW0V0s7wLHZEatRF40zl2NqYf8L3sxs4MmYZko3k6cEixQ87zDaEdA7WvVD6kHXTg
	 oM8HWRMD8fclQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF00C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556583368.7466.2774375822553399769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d2f4fabc13e9a4b4bae8c6399593ddab41e588904966ba1477b7d9e7bfdc81
Date: Sat, 01 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785565833
