Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E806F346E46
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777743454; cv=none; b=J9j1N/nbE+E1GS4JGNXjkN/qrPofc06ejNogjMtWduMAuYhHYVxn/HIC4UY9l5dwvuNpwCOLxTCeCj6DlXRYDQTbT4306FZXOV9gcW02Zn4CjqaN7FrDeYq7cAZpFzudthI7rLvkasGi0YkB1uWogTDPHj7J1W1fQlMbVxGVoYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777743454; c=relaxed/simple;
	bh=nyCicwjmskVCTlbAuAkDhNeaXNz460VpHefO3cc+UDE=;
	h=To:Subject:From:Message-Id:Date; b=DwvcD3q0LMXO7eigh4MKk5irIUULCD2U+c46VvUUoWU/DnPmk4s9eCDh+eb8GX6m6vEymcVD2wIRKlYxQIJ1EcbGv8ZdBlBNPAx60i+qfg3jxDvWRdOYgQqO734FQLOm57v1JuQ5VQZAjiTbdiYvWpYO4KUaxXJvLz3ALOfB2w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMiwVRk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMiwVRk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9F7C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777743453;
	bh=nyCicwjmskVCTlbAuAkDhNeaXNz460VpHefO3cc+UDE=;
	h=To:Subject:From:Date:From;
	b=kMiwVRk7L2NJ6da+TKjunZ53d2SPLhZaw2sUeSA8KFflyyXM/B78RP441Od38Ig9F
	 DtwBtzHP0ZTlgp4BNcyJibz/M2w+NFQveNCWRHaEuoTDl+2qnjTt3yTf9jQqf1a0je
	 mFmEazmARDC6uGxPFBzE9nw3PavwGyObZsongEIgCxYmBork9bGMk14ucK7KVY/Jp6
	 pME4P4uoRic56Q5e1weFVR4DLIk9XxfcmQqDr2ZP16CC4mLPOr0/X0/sD1BDvfAfSb
	 oYcxNSUJyDf3pcSCBWV9d7oqPSStzcMMFm9SwdnIjKT+BtdeznUHv4vlIjnhv+86zu
	 5YjMP0xvZtJyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DDCCD3427
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774345368.18379.1710936829920173950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14544be631685e110cb57a8b1ca2908026db0df08c8e51aa51019d11cd2dae15
Date: Sat, 02 May 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777743453
