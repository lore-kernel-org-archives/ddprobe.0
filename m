Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBC81519AC
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754216394; cv=none; b=i878z+rnmnlTqwSn95cOW9dQNlUVJd+T6sngaxyJgC3RVswEnoh46T1rcuXGbZx1f/IZkmriCvmL0u62Of4Rjxpj1M+gpxZ3t/pdYJGE8Cas4aNEGRhylyxTIXDi1M/Wc9NRzE7O+79O0Tz16AEBnwvZzAEwrDXv4fEpxgRG8a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754216394; c=relaxed/simple;
	bh=QbQDEV8Qy5PYFYEZTReBTr9pXESux1tj1EmyKDM0RI8=;
	h=To:Subject:From:Message-Id:Date; b=kBQGqI1nHruEYJDmQ325F4mrALt+ojZY1QR9jUIUplggkVUS2DmWKgRLNovQ9ZO5703qv5qsttuWjICEsmyMMcFFqNHk2zqldZj84pDlKR4G6nBOfRwuF3eSlFzIFGoJwC/uZh+tP62qgY52JuJ+sBdl0nK3fdZWNldyzesv6lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jteXb85I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jteXb85I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D7EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754216393;
	bh=QbQDEV8Qy5PYFYEZTReBTr9pXESux1tj1EmyKDM0RI8=;
	h=To:Subject:From:Date:From;
	b=jteXb85Ijvga0P/sa/t6VsoNMcEKEyxIIFnydlyBDD6AFpn1Hdq7mccuckzzB/mZM
	 po+p2ByLvlVHxL2IXnmY734m7Yqgmtg6O8NDQYGjPfJKySgUr4t5fx+U2+ZbjVBosQ
	 ded21/9jM+24ZxdFfCO7XTUtZ54uAQUriVorSfD2RZe5F0QFS54ZFgiNtAkUWtuN81
	 +vWDjVN5KYA/LOCbvStacFwkCFsk51OYudmt3Iuv9M9jignYFRkKWgji0zHwJT37xj
	 LP6tAtPiRsFE9FN7alXUorfNMPA6JJWNHT/jkAkV2uBZiZsr2Ev3tuTyNZkZZ3ZNMi
	 qWJ+SHLJ9l2mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F3C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421639357.3658.10878163269016971150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f27915d90b2c3682bdc5790862ef1092c6b466961f2230e20d11944e4b5adaa
Date: Sun, 03 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754216393
