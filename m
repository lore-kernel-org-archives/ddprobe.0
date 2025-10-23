Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12003330D34
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761231594; cv=none; b=No6xvaIp2WKKwukUaPLSYRyngq+KmBp1ZlLqqCPGLbe4gGhyiDnnlknU1VUlU2QsX97B7HUP21I5/wBZphvXytZJJVLK8e+YCCAtcakHtmMfC8AEGCv255wRoBo3G4mCU/M9noFkVwQ10QluhqOmbff5yiI4NTJVOyyObE2QFuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761231594; c=relaxed/simple;
	bh=nlmWvB32hpLl71grJ1TkZKSCSxh7fAwjsKvQ1Ch+RDQ=;
	h=To:Subject:From:Message-Id:Date; b=nOpKsPkAv8tJLK6v8LCyNdPsjqLapqNxqroj0mSVizRnNRl0e9YTuJK86qXQ//6wnbRdE+l6A99s1eBnRHkE7Rg/H2bS6l6SaxKhjsy2yv6nAssSMD/xOjFYlIuYhGLSeNbYOqpeZArsigH6ztCFLNN7P+AVs07oZX3wnAgVW6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baWMmraT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baWMmraT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFC1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761231593;
	bh=nlmWvB32hpLl71grJ1TkZKSCSxh7fAwjsKvQ1Ch+RDQ=;
	h=To:Subject:From:Date:From;
	b=baWMmraTn3iGv3dP6zf+3nSuSDLSImUOjhfGrXJtEwkP4NbfD2KoU/kLBUDPvdYM9
	 iEDvwgT9vBj4aha4Q6hpwvynm8yGWTodjR3bVXgLCKQUG2T+J6bjZz1ups7OpTrYWL
	 r7NS9KMpOoaiDfNZSz+OFuUXSwkZzCuUBA8x//JF3ZP/rXZn4l2YdqwmK39JAWui+v
	 JCt1D8PYqgUq4waGfhf462raPg1xGBXWaKmhGDcO+DIVtTaw6uIsuc+LyomZYgdTLk
	 FmjZML3VDfiPmQhFSoY6sw6XbmUMQ0CYeckHDzQDqvFTTbJ40PrfjZvO5a4hKt46yP
	 MyZc/jZrZDaVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9089ACCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123159358.4169.14750693551910785097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c96d98ee4dafd51915da493d3f125431d621829c5e963aafbf9b4d8655b7588
Date: Thu, 23 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761231593
