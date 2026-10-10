Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6712F8E85
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791667834; cv=none; b=TTXqzFwPud/oCjY2Cc0Unvm6LnEAMiaOGxf7iLHxfmeTcpJEgxeK1StAGdM5Vhbdze8ivdXaADuzCTU3Lx3jC/Ybhtbah7ILG1onEHvVdtt/DcXpNIG9knqrrwvp2Xzf4cGM07RlEJ4F+64hS7GKp1pZqLou+UJ3ISEYLDGQnsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791667834; c=relaxed/simple;
	bh=9a1JIBL9FdNmgCHiEE8m/0FDUofXvp1j1e6lqROhUPY=;
	h=To:Subject:From:Message-Id:Date; b=QWMkZ04A6cBs4jsNB3YH5z99CKLOiH8CryZxgtJp9zQGw1I24MtVaQbQ1iB9okgH350hyyIdyuC4CvYqmFryAhFuMZUs5AROAoqTtfOF5PoyeVPP12K9E1/XzrFcLgXHwo0g05Dtvi6/bPvEqKzv98qU2gtqeuKFlcnNF9ENA6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgxJUAXe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgxJUAXe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A5AC2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791667833;
	bh=9a1JIBL9FdNmgCHiEE8m/0FDUofXvp1j1e6lqROhUPY=;
	h=To:Subject:From:Date:From;
	b=PgxJUAXeZi1wGmqxvXs1pt9NOlSEPgOhqoys6buJEUA1+DZzwCUlp6xuSDfLZt6Q6
	 cB7ZdogNRHDJgmlLvP1SEWTwcby71f380pIOmKxWYF4X17/DKL+8XZayzibRVVeCWT
	 Y2SBWfSBx4sIRJ/sH51NGResSpykhFNauJmGYCve61LivFYLN5N6XUUBgvuZTsrWq+
	 baZCO2jn9Wm9MJBokhQ1OIc4SJ8maWRPTPtlhn7faOMA0bB9xa33r54gRAiL5YNNFS
	 ffi+isKwm1baYpBX0IuG8xOjSf35qhgypkpqW4lEdlYVrb1K3PGJbwiBzLK7HYe8nw
	 pPTQTwRhWbZKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF75DCA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166783368.24512.11824331240112731448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479dd691c5fa763e6b8cd8ec6adf5ec882b6856829005e2d16a5e7a02fe472ca
Date: Sat, 10 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791667833
