Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6183454781
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791679234; cv=none; b=SJF92L+5lSRn4JSaXZ0c0tKIuQ/X4Fpxh+17kJNXIDIiFvFZtgkMCVUJfoRhiyN8N138I5hgb4ZulA9a7P+mR0Z8h5ufhj8V2g8VrYWRideV1Wm/G8FHlnt7dlbPGYLeqdH78mQXkRTj8UKwixmTd9qUKiCd0j2o9SfMZ8AS6Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791679234; c=relaxed/simple;
	bh=j5TxhWvU3B7zDP0zWQ1QOWIUAO6RAW4TnupaW5rHyyA=;
	h=To:Subject:From:Message-Id:Date; b=jK9SpkcjbnWOoXawFtNW94wv3BW1HPdXOuNJWfPrmxHkMFOvZie0IxuUlwxqU/XF4bQH9ijax/2PHsDlu+oDWVpfgeCUzRAcf9qLxAMEV+NbwDNbJewJjddrDlT1up+ux3212VuU7h/D46XXRzFl7Guk4emzfzfPQWS7bbpfEiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krAkCx1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krAkCx1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF53C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791679233;
	bh=j5TxhWvU3B7zDP0zWQ1QOWIUAO6RAW4TnupaW5rHyyA=;
	h=To:Subject:From:Date:From;
	b=krAkCx1/XBOtC6P/VdGjHdrEsuCyFslC/XDgmnmtQOTFv4owo4EBCVbtJBE3AVzrb
	 uhRUuEoTgU9B21JxWfddhyV4BpuYX2z8/2gqC7BbTP+9MZXomCO8lVeJ/nvmzHf//m
	 OGXC8XS7FzTXYA6OJLnSvQbBfxUDPLw38pLP9qw5UVlZrzXbSrJxqs9577/esHB8JT
	 NnfiI5nsWiSS2HWLlA7XTpCQxAmFVJ5saPCNK7RelqTi4b3XHRvWIgTkzlzFXGZgvK
	 yDSvZxiyLGiLsb25wbA2itJ63IlmU2lCYaH/uMJFIIGE7xtn7Prns3dTdquI/XK6ky
	 1pSGhLxv6+JdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ABFCA9EC5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167923368.30751.6493057632757933841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c9efcb9d23203e9b15b2ed335bb17f24d7e9794cb8daea5e44f89cfda12c4d
Date: Sun, 11 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791679233
