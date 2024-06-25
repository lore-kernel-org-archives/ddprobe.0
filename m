Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624BA4C6E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719347603; cv=none; b=OU96WmM1MnZvvMae8+Sur7foYiJqf7dJFl6kOjDBDOGLRtIH0DyHHFOmPYH7Cq2hejv5aeXJppa3lzFRKezIT6Nw80Qx6MMl0cyn5+QZmm6PxJFT43Qv0kw5PYS6S+40TLFTVxg7W5wYzIdZH/UBeXefOO6x2vTu6/kR6UpDymU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719347603; c=relaxed/simple;
	bh=asMA/IogKs8ORhjO16BWdlludGc1r0sj4F9OFqcgpUA=;
	h=To:Subject:From:Message-Id:Date; b=mrR5ILVrcxSk7wTjihktXL30IrK5qcwYOblQWTGJqp68WwZQmSv/bsc1wCFu+GUhrdxHrR7VEM5VSkbUy4zehkdbqTXLgjsvzlATENW+T6S876AZgeFkoHqgkVG0oZwrGBPeTdHgyULNVC22+dPogTNIgH4eIDWFl/JxnNbI/MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JrvaTW7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrvaTW7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E50F2C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719347602;
	bh=asMA/IogKs8ORhjO16BWdlludGc1r0sj4F9OFqcgpUA=;
	h=To:Subject:From:Date:From;
	b=JrvaTW7vXwJj+GiKDbU0rCZUhQ9nCfrIMwPp5WKuNhKDSZDpa2Eb08VVdilErit5z
	 zuPw7htnAF8b7lR275N1TTvFmMLnerW9hIpWdPRZ7I/XmldrZT7PKSGP2uhvM6E/B0
	 2ZbW6YgyP2YTXER5PEmMKzsRcbSPymx1U1XyQnTtHeT+4IVF/s1BhmSB+KeVVa9mlj
	 qFvI9TOt1k7RLwMShUZV8VLLKFOhuabGbqf4smYWwhtf2p4o1AMTnwSYRaMcRx3oWz
	 fwtPkK1espeSJGtBW+S3S8SdFovi3tRBMpE+tlPZquYQ84cuWuYbDO8gk6qWHuZz/P
	 4uxTmqOo3qSkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC068C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 20:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171934760282.4556.5433823588086599743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f43dc0fc97cc186e3144eb38a08b9bcd1d190493bc9fae1684bb26e8874f2ffe
Date: Tue, 25 Jun 2024 20:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719347602
