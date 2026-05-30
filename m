Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D29A1427A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780119214; cv=none; b=pSsNvgLrxCI8R1u+LnLx1cUIhHkCRNcLkWoME3RcpT0g8lVXU8TrJU8WQ+AMamgnkqhXuJv/p/VkhmCGQKqOpxbWwvgqejDNYMzKUwVaiUaVqHpv1F70xcI/3PEpkYZnl/jQjRtusyglKpcrpfaHCy7aN2PPHsttie7AYFafFNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780119214; c=relaxed/simple;
	bh=E72MCW6gZRLppJo3cdNiVDpFgDHozdpOA71UcFsYKQY=;
	h=To:Subject:From:Message-Id:Date; b=Ratkf1CVx7NIU2WJDxcxnBTl2KQMNtC08XqzNQZqY+C59nI4rgNPgERGHcdBk182BfU6vyNFXdjD0EWcPZh1uMO5bKi1b2+XFcrBbeTUUq5Y6VADKYkzghsBxWBOVvIpn53uhjtDRgkiNeQHb4c3VASe+VAC38pqu1IfSIzyYHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRhxg0MC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRhxg0MC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B5AC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780119213;
	bh=E72MCW6gZRLppJo3cdNiVDpFgDHozdpOA71UcFsYKQY=;
	h=To:Subject:From:Date:From;
	b=PRhxg0MCGCdYb0ZrAK0Q5bqaOUGE74I05pqazkNlLO44pb3LjcCtX1P1T89Lxho4y
	 onKUI4kwSj0SLwLb8z/LLjT9RmUlc6ncWfSO9m7Evu3T9V8oZ9Mn9yaCY76TvbMX5i
	 mAS+iU/spVSeOzRuojH2G4xpkKa0VPy9FobuahQrBZQ+M6XZoUjBHt0JO837Q98/1P
	 Uu5RQdpfxS1erdsrnCOuTCiGmFwoKakraSMonR5S/jeTs3OxyOdZuWxsgr31lXKm94
	 B0iBXuEJOV1tvZcbgb0pGjqHeQvxTm5mYiMbGk1/2zcV88Rqn9LQxhJyt8auENk1TI
	 vi8eRMwNRGPaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81F4CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 05:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011921368.10161.693413724152302438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1756f9a444e52053ad16a37417c54f6ed482e88d64eb4a93ebb722c6203f4a68
Date: Sat, 30 May 2026 05:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780119213
