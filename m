Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E0BB661
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736603754; cv=none; b=TWXw8+dbAe/4Fkxl+Z3kayWVhuBX5SvXaOiL3mLI42aYE5+zD7Rc3X/KU8WrJPfrNNNOeelSLjCR3XYXdUfmCaEH2FaZFL+zpzv/b5IqWiFcIa6+oF80BlhXXBXEJtLujwas1V/g/wIWQJsddzmhUVUx14R5EEc1Q3f//RHvEUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736603754; c=relaxed/simple;
	bh=GQu57qxmjwWnjlmd0H8pGEN4E+HyqmiuoOaE0iWlTHc=;
	h=To:Subject:From:Message-Id:Date; b=Lf3x3Xs64SjeOpPo0d3quN5XWMWIJZz0MiNJy20vaXlTc2YDcWCp0xGrXTSU7irh3QSrtkon3XDLKCcAKIlsqVBu6BLSkbbm5zv5BMpnMks3vHWbiS/UOVO9Lw1PgKsE6XRhRxzGEomfQZOFpi5ef0iMF0IHrJhKfQsDXJ39e5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTt5qilS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTt5qilS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF48C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736603753;
	bh=GQu57qxmjwWnjlmd0H8pGEN4E+HyqmiuoOaE0iWlTHc=;
	h=To:Subject:From:Date:From;
	b=gTt5qilSENEKUab7c4MeX1DmqZpRJROB1LSyuHQxXpXOYl1R5OidzzVoMjf9XIAk0
	 bNEAksQrnwSBDASstKHTYfETWxyD/bI43nV/3AKN6nMO+vgSgCJ6Qgz0mn2QkeEd35
	 ndBq74bd8OgZugoacT18q4TH/OxtNpovbV049rVNAlInnpPPnyxL4aXMb7U7xc9p7q
	 wSHXFjGfkqIEqI8c+enKpQDvDbJqOQC7P00jZtWeyDHAx7Bqch6X3oToiaRbB/t2d8
	 NSgpttuvG3HP/Y2PZltgFd5Q3nfG2jbnE0xeIZRxN/xVjpk8xU6TZgPRPzS+2q0QRb
	 chBiByuh6OpYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC923E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173660375365.5035.15407140796170595776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4799b898f53e5aaa28386640d022892e44b844233e01008eb36e8506c002c5
Date: Sat, 11 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736603753
