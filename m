Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16563136994
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 10:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719226343; cv=none; b=kd7iwXTxQydAmSR3Txe1PxEIrVBmQhkAWHqFGefzReQqpBX0v1aOQd0aXWLEe7rOGa56uBFkOY2/pGFU3NyJOPLQxPuG/w6BJpeb1xy8R/oqGmriI7yTQCpgWRSsNLSpikmQ7pfNHO0NghsFGVzkZ1KssEHQ7DXrXa521Q1tF34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719226343; c=relaxed/simple;
	bh=esX3zxIQ8hoYEoBxyUiyVskbL3zQ23bLyPNXnHPVGxc=;
	h=To:Subject:From:Message-Id:Date; b=EEmZfG99MxSJy9sd01ifkRLbucPIy6Pi+fvRh3hsZXboZ48I3WP5Ige4wFi187wcGTF2xM4Ec+KWUGmHYz5RYgYEkyM8eIcJp2jBJsW1e5z3sVHVf0P6qPVrXC3v4bqUoMg6AU+3aWUpUDr8RaOjD7tVodj50MF9o/O/reePvZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sd4seDZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sd4seDZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CCFC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 10:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719226342;
	bh=esX3zxIQ8hoYEoBxyUiyVskbL3zQ23bLyPNXnHPVGxc=;
	h=To:Subject:From:Date:From;
	b=Sd4seDZKe2xtFysCAZNvEsxB/JjicPgg1yw6rdV2t7ASTaYP53MtQ8oeNC1sSkc+k
	 WbL/KKfF8JhJa2m7+Qv539r4pjbBU1pEktT2tVBb2nw5vW8fZ3f6qEG9dL6TnVYJPO
	 SkqS6T2Y4kvIi6rwcRtkNQydKiN9E2kUsPa2m7ipHAw8Er99xFaiwWIUyAFDQBV2CK
	 3e3tS4Aw66XhbRHD/cwl8L2qeIETgrGbMzz1NwM1bmInFVmJlhl4M/991hSb4IHNvx
	 Dpy40yqb84nlHWjNHTzDexqJUrsCYFK165fUlJW7Lhkaxd8yLkoB6WF9LYHssXseSP
	 /XZZj4MiA1zuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD016C2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 10:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171922634276.24185.7060840606463917738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ceaa3199f37fbd426662440f546e6637e6d1736b94a2625b74a0f1c57b48b51
Date: Mon, 24 Jun 2024 10:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719226342
