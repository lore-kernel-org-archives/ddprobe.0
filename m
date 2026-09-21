Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BC948D881
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790011234; cv=none; b=Mn+43T1/8vEgv4EadNQa3Q2WcIMAUsOEJgsBO051xM/LJxAUBiLb+rqmgq3oWsG/gjLGsaeHUhAhRbuZuJPtPyQ10AbotFb/4GcbEB3NHP+DOrvWON7mrUloxe0xYAcmpBUifEcpo2jTBXt05UDWm551sHQcgQiuvnEXA5W49Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790011234; c=relaxed/simple;
	bh=yXTQ8YSHgYYdaLzpQQNVms8q5AiWfgb5cZWMSeD0YG8=;
	h=To:Subject:From:Message-Id:Date; b=gFbTSh98odbV95AnekVcohEayP5klpwG1CJLhmm2XIUqRzEyr23YqHzUfMu6S+C/qD5XwTQqSNLwGovif5xf2aitHvVVxP7Kee7K5ynQxjDIE7lDddjAf9jplkc7mL8SMMaS4y89DfG4IRCQmKz18HPSXElrGTQCUtn13Oehs8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMLeiYUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMLeiYUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2830C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790011233;
	bh=yXTQ8YSHgYYdaLzpQQNVms8q5AiWfgb5cZWMSeD0YG8=;
	h=To:Subject:From:Date:From;
	b=cMLeiYUo0DNUlbT1o/nrpaZTxGXG5Kk7s3UVbR2USsd+yOaplp7jhh9rxoDraah3M
	 FVwQUu7ypjM+Xcnf5Xr75fUlawt7Hu8ZYjGwPqSshFVVdhB3+XpVbE9890k2HTKwcZ
	 lmtLiXMpYAO6qEV2aq0O00lkJYXE+rXjuTCqIitdVcK5gnOMjJ3AaYLFPNFBRm04gU
	 ZoJL50W/t74+yQYqveF7O5aIMd1oe1hRFeOqGftTxLAfhBWGYUkvCYU4uJMpLXNE5w
	 aB/K3zsIMeDsFFML+tFRKft4atBbVyqHkR+XBmYd6hSxtxtgkWyWYDIlpZi2d2ejZc
	 E2plWoX+iytLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EA9C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001123372.20265.7895277937500564644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18f678dff942968fc82e81de62e2207217ab1a321706d6bdfa0a3af718b60ce
Date: Mon, 21 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790011233
