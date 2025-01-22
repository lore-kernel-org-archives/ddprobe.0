Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D0A38DF9
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737585954; cv=none; b=KCKgKNAGZaXR/FUMSDOU5dqbqrn1SmuUB3ksNWPpnXXFfm9CdMA7x1Vmpy6jkYiZu/G3USWx0v5Ne3/iP3qf8liCwLS5kQshdpXb6gSM9cyMhQhhr1Wo+k9M2gwCzkOLlifg1cKVIRhzp5T6iW4C7vzcoXrAf0eQpuPHQGylNbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737585954; c=relaxed/simple;
	bh=lwLQMzW20x88djkcfbjVW28Fdz+Hr8Sp33KAuGWGAX8=;
	h=To:Subject:From:Message-Id:Date; b=L1l5vaRftxrz9IAf8iB1808yU/lqKD1cx9kTpWjKQYLacq4KXm0Vh+mgGENOPoT6hdp6BJg4ILeREZfXZshtwuNVrFamsXsXvd8gVOL1iwYOudsKSoK1gxkMPOpaSz9TVGgxsw6Y1qK9UdN8PlSEni3VUahXcMQtw3kFMrzxXNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZ+rSfDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZ+rSfDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67ABC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737585953;
	bh=lwLQMzW20x88djkcfbjVW28Fdz+Hr8Sp33KAuGWGAX8=;
	h=To:Subject:From:Date:From;
	b=cZ+rSfDGo9ppKTXdDNGP8WhvSl7usAdgwlzQXViF1DjQ/kUx/RhGXzpD4M/DsU/1W
	 lkGkt/lzWTHdrzOaRmfgJm5J+j9SQCqTV5njCucx5kNG4aq6miraqxtP7C0tu1KT0S
	 jcjCq9PGICryy0k4TKfN8MZRX3oVg/AesB/5Ts0OYa8e7RTwNQooMOjBn/4qdHDdX7
	 8mrkNGDyqmE9SqnaATmwV+bm3sZGu3C+Mp59kOFQSkscxWNjedY7USJ4rzw3XutF3a
	 Y6Rm+cQpidO7/jJIVj7SF6ySsB/nA0g+S5UZpsEt6KzIMh/tRUZdLANvvWSBbh0rR4
	 o/HPjTKwQrBAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D70C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173758595357.18995.1884525808177324666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7082bb19a8ad0f90504be5122bd91d0ed19c726ec4ed9c04e0dbb9747ab7826b
Date: Wed, 22 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737585953
