Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D83E310636
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765955034; cv=none; b=WpzYUnFyLi4Kr6fqTxyhz/L1Qgr1hS3/dudJo/JeQwjFyNxig4rGmgohKS7Mu92Sj1Jn0/Eq+SAsZBYD/eSxzUOnaTbgyDjh/siCVQS4kQqIXkLscf+t78+KBQjC+UC0IpiSZRw5bLxgAx73Gj5bRV8vepsWpRnFtwKi9KIVb0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765955034; c=relaxed/simple;
	bh=ezow+OFQqPTSS2gl2whjWEmfp3iwP4Lvn+ZrqXeuJKQ=;
	h=To:Subject:From:Message-Id:Date; b=IuR230ZN44hHiTLJs8LgtB6gLvWl6NY1bUdRI+H3qAsf8T4fa+JTaMSm55F+EoqBgV2PZuu7EU4ot65hPtSbKPtqvYwPyNi9j85/iMm3giUMVMOKgrgdLSAdM7REbw77o7RTzuNo5hcaFtqtimf+CbCJPY1XXr3FBZY4i+0/QVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DekUQHK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DekUQHK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A75C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765955033;
	bh=ezow+OFQqPTSS2gl2whjWEmfp3iwP4Lvn+ZrqXeuJKQ=;
	h=To:Subject:From:Date:From;
	b=DekUQHK+oj1QZPlPyz7EjpRFdLdO7LJrP1M0yYXze3mL4hO5vJaqGrlqBZT2i+k3T
	 gkQ5x9rUdjlN9NF9XGkcLxOrUBwDmplIBvpjsMTOLS/xPfG1iotMR5u2P5pl3+B+wP
	 B+0dpcclbbq+qPi3V/ON1XzF8N5KLlLq23sxTtDUn/WaJtW2GAwkemu5z3MuJhz7eU
	 el7/Zym1aCYGYggkuw0AAHzgiu/lSiGphobav8zrue4bd6awgtgGCzlj8wvFxMnqbl
	 fQvRMinJxljRjoILFWGOnbmKYXMBccyoyxFqqOXM/b56WKR1fDpmXrwgiKZQGw72MI
	 1ALdrhSvMTc4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924DED64081
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595503358.4380.576024169381888627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9657f38b10609859a5355a91723e495aaa94eeeed96b681702b836295bc0be7d
Date: Wed, 17 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765955033
