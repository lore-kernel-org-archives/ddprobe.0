Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AA442049
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766266434; cv=none; b=ifDI3V3hPv4LdLRMCMypY9EjWwJLe/5zMIm6mRJbkzjQ4tQCxmqeneGt97M/W8N9cLoxfo8fgdzZOe1iFAYF+b83YfBfpBfNOodPdI8XDajEqzCxhdgGPaGxnxqPpcuPoJNHGXMWcHp07fdzogtroIEcbCX3YqskZi61DuWm5HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766266434; c=relaxed/simple;
	bh=dKHZXzwBbTeX5Nkrg67WBxZ1yVir32BwFO6nAjD9C6A=;
	h=To:Subject:From:Message-Id:Date; b=uDWedFMcsgrpveghwpyDGfRXVXmWMJXCEFQgf5zH3Hb8bcneN7izyuivSYphSHLWEvq7V1ds1/tBV2HA/eHqs8La3CuOo19eeM9UkyNFFvCQwVFCr6b1YRs2dRwDnFerDa1cWB7oiYkC8GG4p/jvn0wL8EkYU/rUR6Re7OdV/K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIugrAEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIugrAEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D29C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766266433;
	bh=dKHZXzwBbTeX5Nkrg67WBxZ1yVir32BwFO6nAjD9C6A=;
	h=To:Subject:From:Date:From;
	b=WIugrAEdqHtMwCIszhCyxkr1uEwxDyuhAHIQdCf9nHWq7mX2XaAaIFfzLeKr36FMu
	 WwN/JqDpRieRvuxBp35z+h7U1vh9pAk6CqJCdsLxGu03DQN4bTxX+xhmKjSRQxbsmq
	 gi/CwJSO9p4M5j4LgTCm3nHF1SvxMH63YPtAolfhm8NqgPsYE3ZArJLys2SHEtpJ99
	 hDTNJRopgFKm3B8tf0geAJwsv5+1zy8g4GMYsRdfLrMqpmyCfGYPRAvVjF0/o1EdXQ
	 xoCwjd6hML6wlosgMCP58wU+Hi8JQwRhlaLQQK4Myx7HbfyJl4AyvG6PKusLuzCSIW
	 z7RD+WjDzGiCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94719E67483
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626643358.24274.17655792865142612711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2ef0d82d94a0d3b648fa3be17cf383a273872eb476919ffec0126cc908e3d5
Date: Sat, 20 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766266433
