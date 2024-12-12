Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E8C2135C3
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734010554; cv=none; b=K2/tdZ/LDn4I7X2pjJ+d1J20wfEdqn4ncTKZqETTU/G9RwF8oiRQBvQzyVjPUbkGkvCSx8YK6pgzRw5keMdLa9N/z951iPK/L3rosx3EgF79TkloGMxqevSniUhFFY+On7OHNvgmppP3FDFbtc6nGtFkcNGExtfBeI7gaA6vDLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734010554; c=relaxed/simple;
	bh=15HXINVobm+MEpJX4fXw012qGFZklCLtQ0a9THkk+os=;
	h=To:Subject:From:Message-Id:Date; b=UFi8qPThMlUCRh4NRumAbio6QbWRf2O1XPV8vPwul4sGii2B1Y6T2AmEkv1bL1sfGk7D/jem65pU5sSNgefpmCGvGBgYYHIggXYAXeKBal6gWIGMuNzdK3/CyGpk6sfUNuo8XhK4Xd7o+7q/itIen3uv8hLXeWVFzszUu/Y2wDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXNEqIxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXNEqIxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0734C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734010553;
	bh=15HXINVobm+MEpJX4fXw012qGFZklCLtQ0a9THkk+os=;
	h=To:Subject:From:Date:From;
	b=KXNEqIxSNv/gtrs0VD+hd23kIw38bfxBjdUVd1Q2q8gRQz11g1I8wXUguEXBNzzPF
	 izZcWG2V/v7yYbE9z3lSao9uzdoOGZMaVrPeR/+9ZvshaA7ZHWU1YHVpu4CyxRQ2c3
	 oZT87xVvTli+ASxfAiTv8AgLpTLgV65v56K72nCCYgkmExuNk9TxM2NvVvRdmYVC1n
	 aRJ6PTyWlKQvjvxITwu9WWxXGmL2YbEBncO7+/bIfUqvrYw9Bq6t4YvOmO6PxDLUl5
	 FKpFH7BEdrjdkmDj2IAD7hiSo+Xtlffy4XLa3bOQC5MOfGReD5PW0i5aiPAlymEKLq
	 sMX67id48i1Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2BFE7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173401055362.14476.187125876555476470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c81a073e84add0c8f2211308e34ec472a6f28286645de5ab6a7d9599d26a7d
Date: Thu, 12 Dec 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734010553
