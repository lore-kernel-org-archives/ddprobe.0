Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106D92CCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768130634; cv=none; b=S1kKoHgE4q252+yEHzCJdCPDyMYTPXnbGWXK5slfb+/wSpTfPUTzceFqiVynI9TZWU/yPd16BgkKqfGxfbsRx9muunyYRiYJWQ/iC3ufM9mdsfgOOeP4xtrmfQTMfAQapXR3cTClxw8Yad42xGEsoeqYnQRSYDqWRnPDH3QjeWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768130634; c=relaxed/simple;
	bh=d7zJxHB32P+pEioVzbIdE40Jm6PPn17EBuxhxPxdr6A=;
	h=To:Subject:From:Message-Id:Date; b=ezIGsYdOTLWdoVwVjXvehmsdLhoLmRGef0n2v1gXZiaFCVkdVDqkKWsM19nhSzXSLbo0bgpyZH3Kqnj7vnNibjQEjaAZFFQpUAtGhRvvUG0ZoD2JfflPUZ+3FxU+8WPOVmXjMin+6akxHPtuWhFs/ja6RdxMQYesK7OIpfvO/nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrBz9Ihn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrBz9Ihn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8517C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768130633;
	bh=d7zJxHB32P+pEioVzbIdE40Jm6PPn17EBuxhxPxdr6A=;
	h=To:Subject:From:Date:From;
	b=IrBz9Ihn9oYbZUxuZRRZg5juy8F7wrA5ZDJHCwWVitXNpcawrePSr86TcFNRjvr2y
	 ngkrP97K0H2j0dOOqjR32ZDIqXpmDGggEwGJVrJY67X/V1cZVN7fXQx/1ywv7Up5wp
	 qXHuWXEpNkjspueAC6viBAEpaZ/EgFOWOp3xAulzYfqBhlm4/Cssclc7q6JH/zOq2K
	 VyaEE6tmJSFacX8rg2IZnahKxUfKG6cO3Qu0CeGpI0j6RWG22elkOnmucmjqS88NLh
	 seyaIxBG9IoN+z1FlIZwkR5OHkePQO/3J/h5jK7He8+O+uLwtnQArMu3S98iSvSuKe
	 nwBbNpCKBsS+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921AFD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813063357.31917.1146250327864254764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2e77ce27c4a1bbfee6e3dc7fafee46e181cd8aed032d20798bf00d749f1dd1
Date: Sun, 11 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768130633
