Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707CD23ABBF
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784582314; cv=none; b=AlElNA5et0+4r9kP5wvrjOqIY3lq3GlSvDRc2DdgI+wVb8wPwooST7DX2As5OIXz/c4CqLRN3GCvvV3ZmJPEOdKog2sndegaAEHsD5V2vkD8QofbEzwxcC5emcxD2bboM0SNaeSXMj4j0j4xNPUMP168IOjaSRQmQr4D8WJPvxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784582314; c=relaxed/simple;
	bh=TOQYEPTgVS8fsa6QrQ/g1KVNOlgLyIG5Z9Z+QLfTkOs=;
	h=To:Subject:From:Message-Id:Date; b=t0Eab+jY+AyZbcK0yDynPCOM0pMoYKsfSVj03+dnBwOgH7m/odIGEenE1Kh1OqD1jGTz25DqTPl8OSaVVJX6iHHMnY0cVoRfD/bxkYBVZjsnvOwmpWfGdJMAZPDjWllpSe6wD7F9R6HaWqdAT98i5RXEpHU2IoQ6WiedRm8HmWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRJNRHET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRJNRHET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06A07C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784582314;
	bh=TOQYEPTgVS8fsa6QrQ/g1KVNOlgLyIG5Z9Z+QLfTkOs=;
	h=To:Subject:From:Date:From;
	b=nRJNRHETmiVH0c5J+6rJ2jDy4YrgyumdIG83vK9JaLBpTCL2gXGTxGXcXBk7WcC59
	 wT5hZmxw5Kcy9MfwL43O8o0qAkX2g7Ap4g1jWmaRGCaLGDZO0ItgXD63YO2eXdwz6M
	 S9hcKbwtuId6OiJH22GkqgR+isD0vaIRmDTqVsWmtOV2wVvemTb6KxBmM2jPoE5518
	 JXj1Py63+rMNAJVJfslry9MMVR7WE0qQcj54KlTkvanG6QDnQIRC5VSNvVbkjpSnki
	 //QzK4NEG5xbWjDGmyb+mzMH6xZBtbk2qYkdYeBDb+yChIV1/C6G9yJR2EO5pTLw6s
	 L6hDJMX/lFIAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC45C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458231370.27263.14737226245766532250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ddac6d3791e67c2ade3fb0fceca55bcdd45d6171c0ceeaacaf1b84f397538f2
Date: Mon, 20 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784582313
