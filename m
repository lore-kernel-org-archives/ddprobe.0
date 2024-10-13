Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B46C1DA32
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728815754; cv=none; b=ZqJXFRVFK5jrax/Xx2FwswKfQehsSPOHJBQlHfF6G9HINUFFEg6liHTmTVTtxu/AmUYwy8q75w/0KkWVesIhjCbJpJViFv29aPTvjy16JJEWbLQOI8PTBnTRgmAgDA5rrbefIGb5XTN3pGQFCAms9k732qe0gOaFldq76eSXDIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728815754; c=relaxed/simple;
	bh=TjMxK/RJ0L4JTw8Ee1j59vrCh/ANjCE6+8Cvu+6AQDc=;
	h=To:Subject:From:Message-Id:Date; b=BS/d+x7vYhMf8f+ZwPKOjFy6bdNjkBQztoC6IQNjbspMzdHER47Bz+QJ23b1mB4/YJyCZ4yFwyUai2Jfl1iFm5aEjYsywTrEn1tTNTCILqiiVV/rLvQh2NqkG0KFNJUpRQM8qx/E85JmzOTnL48np3hpcPuxL20EPAT4wtPMX5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8/o/pu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8/o/pu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC06AC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728815753;
	bh=TjMxK/RJ0L4JTw8Ee1j59vrCh/ANjCE6+8Cvu+6AQDc=;
	h=To:Subject:From:Date:From;
	b=g8/o/pu7Wh6xLiDijQYIXQYTRSVHj/nQrX16RU8n+alqSQdpEzEKETWTbS967gkLx
	 q2F0prAfcSkmJB/1NKVoXIoBKhcxkgG1FxhbNpH5pxlHqZOr6hFqb/eGj8+GiI/NDC
	 Mglm2zjHRz/MjQfNAs5xZhwUCIg7gohLzcxnlc8rinqbjQMy5/PLNbdigIiIMMK1Nx
	 U93QM7SnmQhqQ0Hx+N+hRWu9g7S6uQaKeD7FrdPGFPnWh8M2LvrpAJG8f/bPr4DOYv
	 vp3KrL73DM8Kh9HSAvvfn/PNEO9CuzDsqs5OylYLigmvT9mkvtpBAKOc9cQi7scoNm
	 ok6BY/gFmlnhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966C0CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172881575360.15506.12226449492229595118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd2304baf6cc6aed80cc3ef1897dbb56782b001fcbecc7d463c6a373e83b12b
Date: Sun, 13 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728815753
