Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D15134AB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766883234; cv=none; b=BvUHpZQi3L1smrwMcY1Hz26VFUfoZa0aKgNFzuYLjiBMqpT/iLUYieQWq/iC9fAdzX/F74Vv0yJ+Fs5OplUifJVqMW1Khpq65IZDNMGl/YmOEDWxXwrp3tNXuukWIEbOsC86Zh10g/yTpfezFvw+D6bRstYDrk/lksZSzYMjBn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766883234; c=relaxed/simple;
	bh=6lClDnKiEfImlq/RhedFBLIYJfNmYVTMCP45NcWtVv8=;
	h=To:Subject:From:Message-Id:Date; b=kwBCdpbpUV+N0GwEvsjj53q6Xi0RbFBq8yidZgXecWIyd3PbMgp5kqoLlU401fLXSDxgMw1jUZ0IhYPlG76mkZK1DJFV72oOnPULfAiqf/cv/FYz5yTScCPqL3bxNVe1yW2nZAkwA4MUKwRl3HYJuotwvr+TEIDlB5JObt1YGnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9229fGU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9229fGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3624C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766883233;
	bh=6lClDnKiEfImlq/RhedFBLIYJfNmYVTMCP45NcWtVv8=;
	h=To:Subject:From:Date:From;
	b=O9229fGUHcDTSpkMcKIOkdqr4e8RtGuoYKlDjiAJfK+wNWoNyZWnhcHZuNvk4JIjD
	 9hzjqKiRTi8oW/ZTvfFc9yWtmSwZrqZEUA3xeIHeNCL+hk7wHU+4ltV1lMYuuk/Noh
	 bASQ6S7jKPNEd78VXc34mG+Jw6/+naQDfbJzlAV2YBU7dEcOQwfb2UY1ZZaWoWiHmI
	 wp4EBcMHUyRgBZ+qSDnKXvfJ1jK27aUWVs0j+abKJNrXCIjs0PkUgLL5TDmNVWS/P3
	 MC/EA9E8swhh0pdtv/VUBFGSWLcy7McIHowycwpFK/R8sZfLbyQ5RCqtBpQpelGVWn
	 +bnasVr0xsPCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9367FE9271F
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688323359.26112.10297173354278986746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ba5225514adfcf0ce3f51f679901b898e04a9f2cf6f7d7fe6bb0efcda89b29
Date: Sun, 28 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766883233
