Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418E125486D
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757828394; cv=none; b=OghqdETD7AM53OiL8KxMAA3qU7i+ZcExlkcZL1SzC/w9rP0b5Tna+OJAoU+G1UL/h1eutQSaAnMBdXqHO3gAcYdTUcDlMUTeGfXrEl6xAyVtqyP/HQNFiR372HQ3oR8CdwbAw2mqsEiApHq4k5VW5SPJCGngkacP5r1p1+oFTxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757828394; c=relaxed/simple;
	bh=qZ/p+cbNEoB9bnFtFsL01+RfteclaA+jvwpWzzf0lfY=;
	h=To:Subject:From:Message-Id:Date; b=crni6k9mHkFcHA7xl+jU6JLdm2Lds6y77k/uW2lqLQ+pcyG7Uyvsdkmv0OYznKq0eaR0DO8y6vYk4TXGN5vF0ZTk7iTM+FOCoXVyOIeM/bSqVF+0i0lUKiZudd+f3n3uhqHA+IydDPggoJGJYlLFU0pnU37UHxdYNYS+s4wD76I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c79z+gl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c79z+gl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3975C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757828393;
	bh=qZ/p+cbNEoB9bnFtFsL01+RfteclaA+jvwpWzzf0lfY=;
	h=To:Subject:From:Date:From;
	b=c79z+gl+h4loCTmEFVQQD5GHwKsPRe7Gy78Ret4K5GJLtlkoyFmDu88WEGZbTRHTU
	 R5umeOYYowJq0ynW6sYsu/v4EiK/OwJ4lTR8qLRTBGnVpTNHqbhc2sA4CT89QopGD2
	 wbVa97ISSuVsx0bqb7trmGDesPricI+i1ARkkrkXqpl5M74u5fACkPhVoTD9AyFkF1
	 YMcu4jkjUZV5sAQCijP+nvyS1dPZhTHEOMLksQhzWZ70+PTn1oT00E16bztlAYbk6M
	 IFrxsyZhCJNJ7pz4/fEO/Mpm2cOO5MjbHVX8H+zZaZcRV3DJgtK5vBDZAtIBCtyqMI
	 eB3Oll891wUOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9174ACAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782839357.26761.3496979207022665129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545f630884a47a39dc2ceda3ee9b21f61acf53ce1f1375570be29ec310dbe098
Date: Sun, 14 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757828393
