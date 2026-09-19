Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD9B2D595B
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789798234; cv=none; b=LU+V+j2J35PgNiKj9gX3a0fxsRJ2mwJV/yiEeOKogy37Hs7b/fOZg5uCMEOOSbihVBzs0SqcYGYBYw9v0RHQj0d2p5ureLnXIF1WDdkakLcUuiomi6WOk8Oyu3A6Yyj9/QBfshSXH1Yto9QWu6nM8Prov71DovY0BLXjgyzYu5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789798234; c=relaxed/simple;
	bh=Dx3PLZ64LzMOLSBSr1v66JJWKykFr3f3g++rqz4RcaI=;
	h=To:Subject:From:Message-Id:Date; b=tYeJi9Zi9CGjILWOr91AhWkMB4mZ7w3bJplfG1YBdp1elISHCOTHh7tStIHWLmq62DrIQsS7BP/Gc9Bux+F0c97WNYWoNmYqya5syPoex/9UXSjcIU7N6YkoQemNOfmu6KdGEl2TyVDW4tE6MSvLay4w2lddHw1LaibrakknB58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvHGlLCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvHGlLCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB12DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789798233;
	bh=Dx3PLZ64LzMOLSBSr1v66JJWKykFr3f3g++rqz4RcaI=;
	h=To:Subject:From:Date:From;
	b=LvHGlLCPlJnCHUOTjkptCjItQbQem77I0ldsMiNvNKwuxXcubqw5Z3HRJBuclZUCO
	 sChgAucOtxVbvBznwsAHln6tgwlYFeCipFmtCsax77z/tx03kFyFTpGJQAa6sjSrqo
	 STYgbndSjDp/9nSR8uC6qqvr2WzVHhtMrZHbMP1YRHeMA6S+xCcSkZwpLgyRKTyVgj
	 /OBmMk6Do+5odUpHkVfT73wo4+7OmVsLjDOj/BisxgCImTls+3E3nTh0HADfjOiJAt
	 eUPA1f629K+tciQuL33zEGxGtaq4xqyomPPyFWrULxMqVd6CFkKcKYR1hgYX71ZQxl
	 qk9agl4LrshUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14B0C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979823369.7344.15426870023850837030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c6a9114d09560b08fce21fb8cb5a933288a4f856fd09ec5fc528385e9e1625
Date: Sat, 19 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789798233
