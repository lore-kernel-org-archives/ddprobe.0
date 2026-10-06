Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CFB4A3846
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791312634; cv=none; b=Rq3vSATPmXy3rhzq8UeOTMhLRBm/CPCDa4nxGO1+mgjkLLSiO/iUZJJT1ENlVnsDfUczeLxsKSFtfAnivGT3NMbN1ypoVfaD80NLj11lYSx757dqIsIR5BPOcnOGesj/EHu1YMW70IFegVN2z7Xt4oN/xHhH4siFN8eKq3PO7jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791312634; c=relaxed/simple;
	bh=g+tX8s08WvI3wnwCjyz5ezkGw+gnKLCr2FiFAgMQ1MI=;
	h=To:Subject:From:Message-Id:Date; b=oFGHuJaxwAkDgUnuU1qX0N9XmZ5CXmE3HITk+oSl5Io4clUAAvJiFesB09MXmc3FqEmOCsY/JbgszBQwxWGRMW0a2bWG60HgYp99A6LRS5Yng8IVBZf1XvP+jCGzNHz0dH6YsSj0+Zx00tTtfGaCNGykdQRs5ZbPwqKlhxu8l10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFKx+Q8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFKx+Q8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5888C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791312633;
	bh=g+tX8s08WvI3wnwCjyz5ezkGw+gnKLCr2FiFAgMQ1MI=;
	h=To:Subject:From:Date:From;
	b=XFKx+Q8C2yriT20WY7apbNk3n2XREooKAjuQnTl4CWRd8Bhw9ta1i6roJgl1Cc8E8
	 nWUprV2ClN1RqVruMQxxUB9EtoKjDmAs3lZQF0oP8JRSxMoMe9VTBWHMJ+GUec+v9e
	 9588C5rA01hAxh9TGZ4QuXzNMdO5Giw33u7N1X4GHmJRiZtQjKSgSTh8vvzlwmnWlP
	 0d28c1r3qXXCdhNFQEBRtAuXPQf5BIPmhWh2fRtuVJBgqa9ge9qzD9MpUhfhlhyUOt
	 a9FAs2F7Q2KKsXhIC5i2vFBtl/m7QBc47mWDFcOeYoOLAwTIw64r1JdTYgWefwZT6u
	 f4kGvnbTQK/MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE45FCA5FFF
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131263369.2614.4725772564401693372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c45835fcb958ac93c07906edc7a4e32f479bcd4f7b2dd442bc587b091bf41fd
Date: Tue, 06 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791312633
