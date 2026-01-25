Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7134C81
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769300034; cv=none; b=dAjbyOOxtdEvPJA5P+1dOL0xiAcZ9eyBOmlhlTRGD7F7P0B6SEsei1cid9h2yoF+9i6SPX4dmlqlNITT2ryapAN6b8NQfiuEFF6tm3sApGdRiAoe1Cl6GTqJ0VEDsoaxZ8ZpxbtuaFvDZJU3QgJFamclUab99YegkdP9LaZ8pXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769300034; c=relaxed/simple;
	bh=a0AksuHhDejr34BVO6RW8X5t8tWA6i8oH1FPN0GPuaI=;
	h=To:Subject:From:Message-Id:Date; b=Qb1UZN+uK7sNFOnGhZq1sgg00OSjGwLjD82e0E0B62YDAdBLhFzuGY0jz8VuxvFuTgAnwEySgphWN3i5SV7RhtbrJskz9/cPB0Yo8k/yx/f6GvS9S62/Nl9poJl2LKTa8SAOy8q2reTLvc7g7tPVkktnpJzpNo1iny4ket/7Bpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbjSUAhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbjSUAhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2C0C116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769300033;
	bh=a0AksuHhDejr34BVO6RW8X5t8tWA6i8oH1FPN0GPuaI=;
	h=To:Subject:From:Date:From;
	b=NbjSUAhUj7v+esxd4z+U7ZyV+A7azI5dhfOrKGIvekU6eHX6f663aMvszGBeAf05+
	 15D81WlaF/83bgrcYzbwEYfUUSxlzKXyufLW0yarMsJ6MgObj1LyrMmKBxdrW9lF8O
	 TcWXOUUQavBTMvSW+8eBRrUF/oDaSlEmRcqgeM+cx+gdX/rjgOnGHjUPvnAL5kh01d
	 stPgrfOM1JYNQhWVlBWAnoGbODPXvWUhIhlu6Mftl2I+1awcAln79XZVEnrEElkMZ0
	 rUVW1J/AT2oeCMPDAdFUTcis6xaMP1G9gx8hRgFajvulMlX04cGkYsM0ElkVWWyyCw
	 NZe45LT/xMn2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954FED715E2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930003358.13220.5222631039277400865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa8465280d1a414138c38e71bf7cf34e49dde2a4728fe2b8bd8b0678cea72da
Date: Sun, 25 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769300033
