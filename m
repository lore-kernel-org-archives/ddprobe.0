Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACD61E885A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775929054; cv=none; b=pSVy0HCePJZ1abwErFi0mlX4SUGt0KhZMAWUx4FhHfRVSgui2P75cb2SJ9PNiHjZROgEjBu4cJH2/QSRjc+nKvgAI+uadio5uSGPBLh8Q0+q6mx7+kF80yKS+kugI0kYHO2f4OraNz1s2Aj6fK3iDU/2lhQr7dswa0WL21n+4Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775929054; c=relaxed/simple;
	bh=d6Z34uB3bKh4cIz2nSwyxMawV4PKFsSilooPse3d2ZM=;
	h=To:Subject:From:Message-Id:Date; b=u2MpdZ1jVF/T/49T5neCYskw6St2p2JHrKCRxLex5NyOcN5LXYu/i51swBzPHDmr7yB/CKFkeo/5ohPgkn+VAz4dJ+0hIdvBKJsnID7j66MunzZajX4TpqTDLlpmAJiUH3YjYWFpfLYzY0gxOimXZXrOw+j6O8pMOj3GX3Ds/uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8Kls0qX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8Kls0qX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB61FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775929053;
	bh=d6Z34uB3bKh4cIz2nSwyxMawV4PKFsSilooPse3d2ZM=;
	h=To:Subject:From:Date:From;
	b=W8Kls0qXrF5gxf0nQ62lDe7SuYw02OW9mgbKrCVqFjfFzJclhIWzrThqRnnSd6+1H
	 AabwwVgY+iBt/y1sapM6BeAFEOhPzWs3yMBfMMSOLCurcQ7w4svK1A5Snn25CoHAqB
	 jQJCQhHJerNgTHuGvGEnxyu18cDO8HbTATiUTc2bbcH6gz5S97TKFtkLTdc3oef8bp
	 8AOjRwyAZppSkrMz8gFNEEsUS8WquznOsip5r0rKdIbbPjcorwIGkRBPxwLkvWTxN3
	 +QZNic1cljHlqsu8iJgEbZvJ3E0eI9IKe9/Gc1KFvvdgHMQTETEQhIsM0dPn58LREc
	 WbARQLwABdAxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BF5F3ED50
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592905368.8315.14429277676984705413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a834586afa081d600c3e22ab7aa7d7b6ee17dc4d6a39cfb67e0a5c3d1ca1ef17
Date: Sat, 11 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775929053
