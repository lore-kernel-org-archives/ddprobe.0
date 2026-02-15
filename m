Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D0222423A
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771127094; cv=none; b=u5XfUSnwmQv2VzngSnJv5byDdzOI6UUZx8bNo79ST1yKPrlhwLUGnyFnSODnmQXE0lWDRRLnpc/9pxxZ+6vKETQtB1zD3AdPkB4d0/PSblWC2hRdvLCgdN0VyXa4tiBr/QTpwCoU9adAcQH2yuxn1pGfdYBBpLD55IR4LEcIK78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771127094; c=relaxed/simple;
	bh=2fsGCuj4AaA/8/s6MbgqauLajangEmbwVxffTw+2QEQ=;
	h=To:Subject:From:Message-Id:Date; b=ts5YMVR/vSUV/huj2UUK99nA0gFcei/1HhvDf4QEd3x3xAfZ4gGAqR0XpwX35UsD1EtF+tax+CvwzYTU+u5/nlA7d9LrXiMqRXBeOph2Kofx/YikJS7oRwbjulPDACutnuspAnealUhvYIZib2n+UipifgFIe56YiripPNYBe6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/Z9oxYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/Z9oxYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3691C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771127093;
	bh=2fsGCuj4AaA/8/s6MbgqauLajangEmbwVxffTw+2QEQ=;
	h=To:Subject:From:Date:From;
	b=R/Z9oxYHzt4/obZDQLqREWol1oY+n6mEV6UG+rwtsra5XKsv4bNFfqCcNd0tW8Nyw
	 OGInMJ26VOAQhsBwtDqsLYPaa4qagkvA/B2zUXdy3FvLeSX6ynL/T6R+bKy3q0JF/E
	 djRGOy59RItzT5AYVQVMagJECnHvztttdMUWIoWO8tMX2Pnb/AGIRPYY4pdwD6Gzpd
	 E7f7OfI9av3g4b7Nsn4oenpBtgvN5eT17Dzb0810Kl0Kjctj0yKZcvld8GLLOCWbym
	 mM64rXhBpjYK+A3C8788RKjW9i71gq1aNBNNMBolYSVVPvQTpiYa0Cpl1enx4hMVIE
	 Py7gi0UtBzYSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4ACEF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112709366.21093.3476060058067641770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ddd605c0c2debe5ddac3f3fc28466ee3944694f89b5b98a42c824ca35787a92
Date: Sun, 15 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771127093
