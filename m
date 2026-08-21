Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B751426431
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787325634; cv=none; b=TOOrgP9yBUwlYU98+6exRFfIYqXVOu6ht1lGX/r3ZI44lbsNZWCVu3JF3uASnIxraHD6dS+MIC+T1CyXijQ1rqLoK4kEO+vrla/DIaAd1UxCq2lq3qJXsX2cdU5tfBtso9zzhJQSgWqUA3TQDza3UrXK+ytn6ZNSwRtvK8pO4Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787325634; c=relaxed/simple;
	bh=XfRRfT2LFhNfK3+6K95N4ZQn6O19xUANjCtwGEOv6Gw=;
	h=To:Subject:From:Message-Id:Date; b=F0sZwY5kjMZ0qCGGwAKen5jrIxGmRabr8hP+fKNwY8GtTncOBQ/VG+hbMP3/5A/Q+sKEgIVSYMmtClwcftpg49zgorsqcighJ/2VrkU9KTprriMWuybEAzc4Tsbay8KxOMXVlVbX51KXaUIsER1WGxgOn5bvKGG21wv3rk17PC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8xyknxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8xyknxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F66C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787325633;
	bh=XfRRfT2LFhNfK3+6K95N4ZQn6O19xUANjCtwGEOv6Gw=;
	h=To:Subject:From:Date:From;
	b=g8xyknxBxT6h2VwPyx4mQQ6nTF9jKKDuZbw+o9Orz5660Ft4toUBWaTL6Xs9kY66V
	 H9mBoW0hLno88ySzYiIw2VVPdtBSnKqp/gxdJKhDpefDS2fiQy7XoJQtEOPox4QUgv
	 a7GJ3Hb886hvl1yvvVXIb9NGfH/5eZoLLmAVaXQR2dYPFpifBUW4gU1+oDhuhO2dnz
	 Txw8rLLjDvWhzpPTnqh95cGEQohDZWOsX6oI21tpdrG6aVbTawXdCTL1bMK4UwANPT
	 g/TgF2pztfcxwiMGIbcvV2Q4BZfO3IMBet8w/Daw1Is0BBTXp3Q+Tm2kKuR2fa2ZTw
	 mxUUDmfHWcZIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0800C5DF96
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732563371.27789.5396563767504335779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e835dc3f86e0972e0bd3075efe0e3c0de67b6ed36b73d1057b7041350bd890f
Date: Fri, 21 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787325633
