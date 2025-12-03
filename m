Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F93F2C15B8
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764801174; cv=none; b=qUDBN9f7CnMnQN4a9AmQsVYh5B5Nl/meNURYJJ7aT+SH86rj8GgeIbdbva1RzXgqvSVzMv6FRJBeuFi0pFHsOJTAKMgOHdBUO4dH1ZQctHnqZmLr1rMqMwymTpBKMvGqvztRqZzgERepfhBTonPabNYanhyNmZ7ex5xa4abjOMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764801174; c=relaxed/simple;
	bh=sjQT2iHYK8mtTmzNbHSp/FLZpJoiKkXCPvDKxkd7XQA=;
	h=To:Subject:From:Message-Id:Date; b=GPxHgZwz37i7bwWJ5Xvi7jbpzx5/3qolYBPicglbKDOGYFf50g4nxU+JmUDK3vxc1VIGfqlEu3vw1SKIOaSAQPhoM3pmyG8HbUO2yZOyV7NsS0a0EZAIC3oYYySuCJw/Yv1j9rEHrTytGZPIxiXsc0yg3dE4IpzJCfzrXdnQExA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2bm6PUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2bm6PUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC178C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764801173;
	bh=sjQT2iHYK8mtTmzNbHSp/FLZpJoiKkXCPvDKxkd7XQA=;
	h=To:Subject:From:Date:From;
	b=t2bm6PUt/O2Y7u6+CxSd+689ZDdNbXhUiX773kDFC858OkjLV6X+XvPjXKoUu7/j3
	 N/HjVRbeaiUM73XWHPkD24iTTUA/VZnhTakHLzbOb/O3/bwV3+Jwa3IedzN7ZtvYhA
	 xGZxtDnGAcXEhPe8M9eO4/o0Ydgjn3kIFjrLek9XQWu9hSnhPi/T0r1UH9G0YG9GRi
	 ljO2B9qG+WMdZEZ+XMDR5/1OIk/kvlrJzo2ao4uHFyrXoP8PCTObyJgfSKCALEltiQ
	 YX1I/Hdwv7yuJzq1PDsTKiAkdWFuWCNe5Evk9nb1aaUlfKK99oeG6xrAMzjC3RxR8v
	 W+mvaudkZ4ipQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983DBD1CDA6
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480117359.1240.2763829495605703134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df8fceaad26263c593cece34f36cf32948d7d168cf6b5b6bcf701d02d5a6107
Date: Wed, 03 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764801173
