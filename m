Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5913B327C13
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788595834; cv=none; b=JEdGLI76d3Yy2q499J+HtrGbVHJQuN/vpDlpTBLJrpro2kkhlJVwWdejvhcMgsbMEJthn5Uf9tO9NSqeJrwpTviSZ34PPfkqbA2u4L0vIJMvYFEkOhbMNl7n+aUv4kuqIVjZZx3De4bidrRB2+8yUvFaQM7xqnq22OkbiQu3L10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788595834; c=relaxed/simple;
	bh=r5xH6E5SvWXuVdNNulAJy+gvPilad/9/oTu3jp3e4/8=;
	h=To:Subject:From:Message-Id:Date; b=BidYIPKhtme7jXkxV0xnDTkc5U+OcnJLwvPvX3rNkxllY2yH9NBMOyA2tx4xMmRB18iOQfZMyRCV/z2Uv5jkjqpW5tsqqyWNTkDQhSX8jSBO9KT6bqZXHy9eX4cRW8/II8mYuQh/drNtq7qYlYw7jZxVV2KFIjHoNHLEtmtJpNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnnnaM6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnnnaM6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E48C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788595833;
	bh=r5xH6E5SvWXuVdNNulAJy+gvPilad/9/oTu3jp3e4/8=;
	h=To:Subject:From:Date:From;
	b=gnnnaM6WVlOGInUescqG0QmOQzOlAK+DVDtU/07Da24kk/L/EHitgshtaRzIJNqR4
	 SwO0KT3oVSKHIVAp+4eYKtXLhOzzKGgqdbMGqe0F7TrDJQFZxn5c3nzQNVPdbpsirh
	 cqHB9wxaXXfmd0CIuM/xIQR7D0+w7D9kCDeSAz4rJVwkU/zCrB1SMLzJAlfI/QfdwZ
	 AoUgIgBGzxoYLz7XJp3HyEA3PAm6MsSG8jtf8OJSiNCuqnszR2ANqH+SVvuTUo44mt
	 M2gkApLRRhXXZH9kj2Rqyzxd1nSM3dinbwljBdbk8R3dNvi5nG1AL6CBZIu7YGvoYb
	 85cPVZ8E2HIGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19D0C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859583369.22201.7845933862663802892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a84872fde5d1b97c561bb17e5baca43bf8035c577c06d23970a5c91bd1b873d
Date: Sat, 05 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788595833
