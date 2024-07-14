Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7000628F3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 03:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720927223; cv=none; b=C1G2A5n5w2jhGFEDal8XQ4alyoeWvlfHqFX4cNdPNCjfuenyuvbtQvg89kMPARMk4JzAM37eCBdsz+XZoLfnLIMBSxaZIeSPGiwfJ6+vd1M72XausypeVNfyBWKMSsUTU8PTHav3OLOZMg8DbY8729OOjlJ1mjq+j8Gg3HD4xs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720927223; c=relaxed/simple;
	bh=kKXXxHhBYxPnf1brHQsEbBh8Ott/JmtpHZa30ou2osE=;
	h=To:Subject:From:Message-Id:Date; b=RbNJRBgPnyYsUszDJvuX61rq960yOmE84HoVMvzUWmKkv+5O8UaGTtMLD1VgcaLSrfdipB9dDuP/qmTODgZBQ3w011wSh3doWta/m6udVAKLyVYCFVa8YE3EFC7U874VbFZ3bH+lxNoikiV8Ws4lgo7LnH8mVp9i0hTx1VqeMuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWFBkzOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWFBkzOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD6AC4AF0B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 03:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720927222;
	bh=kKXXxHhBYxPnf1brHQsEbBh8Ott/JmtpHZa30ou2osE=;
	h=To:Subject:From:Date:From;
	b=fWFBkzOVbpTbm4qxLCAdfMIdKRPrtssx+ptzzHJe7ExaAT/a07u5y0F6hBmH4MHZc
	 6YWRWnpvVCWCx3OvF0ox5/2J4xg/QhtEtQieA/ZRd1B33OIl+UBkL7gi66CDDVgu/t
	 RVEu/J9/Gn1gpLjIMC2VGZRT19BYuCKi7Sj8qgSQoTvJSz+malrM69FkrZ4ArYagbS
	 SMGrrqzF+Q44LT4HrpKh4Zb5D4HPq2HvUCV4MOp28CRP/kJsSCZIrg4XLzyC/GXR9+
	 y3SVAqIltmxp3qkw3qsA7lBdwnCHejaaBnaV1koutLd53pYjO5wJ4WaSsF0clSB9PX
	 XJhyMQrW081lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1701C3DA45
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 03:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172092722277.25769.2937874617038903082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06ab3e70f279cb1532e6edf410fe0484ac33db410b16939605fcd52923be1a2
Date: Sun, 14 Jul 2024 03:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720927222
