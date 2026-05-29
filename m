Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4962E737D
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780034554; cv=none; b=eOISQqnd8IeKNsyKVOxRwh6ITvwJEdHIAog46LTGSZ3TpF+k7PA2307c2p631V9vgIHNnilbAvGs6VHpzcEuXhXtg+m6YkxHYGn04ZHBvrU9cZDUrPj2oONKOTTf5gXKlEiK95fh2QWnDVYAnWVu/hUOSo/8WEr0oCH1JPuD5xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780034554; c=relaxed/simple;
	bh=bFzxoj/2f+rn/ppiKFkbC+YWfwqxpTMevg1SraXJ2io=;
	h=To:Subject:From:Message-Id:Date; b=dkCxRHI2jNfm+DPenyLDoWmPBDRlGRsxvD7OgyFUfPbpM4erge+vmtnSfBozix6xxNAkJElh+SvYxW7V+cMQHB/IJVO9Ijw7ZzOvg84YcmekYYdS5NMZJbj7cfLp2wVJyeL4OPcMDgaMcusu5ELl000bl2SSELu1C1QdVgfGlj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ic3I0CRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ic3I0CRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BD1C2BCC4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780034553;
	bh=bFzxoj/2f+rn/ppiKFkbC+YWfwqxpTMevg1SraXJ2io=;
	h=To:Subject:From:Date:From;
	b=Ic3I0CRdw1672oBJnCIt7YDjgkBYOq7K2QDNGOM59eOMk96jMktsiWv3m4PpDmsgk
	 kIe+erEBGCm+aN3bxRFhmzUtHjf0Ln9dr3P5Md84gLAMmAwJFLcTXnfR5Rz4PdalIt
	 R56I3Yoc98QMvVqXidihJJVAI8LQJUOiiwsRhchGXPaZfCzgn0DP5A0IL+kt2zgo8n
	 SxWhw08bzrjvZMOSzxO/toUnkB5XCUxiEyWC98It0LGcBvy2pehlG6Okb/oRHXDmp4
	 UhiVbnzfzRaE2+5z5vG1w+njsYWYpCnnRUOxPyD+e+Lt1ef9AOXqpZZrmbJf3sT6OP
	 qZ13jqQj6CSSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF751CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 06:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003455377.9567.4743541010386177111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00b2066ff127fb510762c6f660c82bbdf24fe26c0318d9a182a3d454cab71d8
Date: Fri, 29 May 2026 06:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780034553
