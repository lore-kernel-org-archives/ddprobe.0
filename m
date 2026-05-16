Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3D53E4C8E
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778945434; cv=none; b=ST47OYvKvkp9DqqRSILLQjNl5VZ5GkI30/tgQEfac6dQN7Ksp8Jz3RGfBtxt1SR6bMiaPanuxEKMesg2a8UigxR3y0ukPOHNkBcx3D+ZoGUC+nyp3G4w+d3y+g5dw5TOhvcwsElP0zhHY9gDaFUfuW4TwxgSuC9+3vj6WbJWy8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778945434; c=relaxed/simple;
	bh=SOABhIAsO1U3nULfZD/y9jgGM3ZlSN6DV7U9Oe988CA=;
	h=To:Subject:From:Message-Id:Date; b=bT+V/SQMmNLAwtl8G6x2ADGtFTFKWMGEw9AmUCtI7qrG3xoks+uXpPgdMMXu8/Y8sdl09R3V5mwe+xWLylq9OoXxSGnmz1AIftcgGod/5Fv/WVC5lu2qyKgUKaN/l61wkQtPB9ZAZu7iYbw4EUCPTxPHTC4t3VVE6gQR4djJFAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldKfbovr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldKfbovr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8347C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778945433;
	bh=SOABhIAsO1U3nULfZD/y9jgGM3ZlSN6DV7U9Oe988CA=;
	h=To:Subject:From:Date:From;
	b=ldKfbovr/Zn11+xy3fW3Dgux/6LZL86HB2Pwu/kfbrc+rLulR7YlG7aAXaVEsifXj
	 dUlKS2YY9zB0sDkSy2fCTwSlwJ9nE/45xGaNkbzc0ccA0gDYHMdKcjINFJynN0PSk/
	 yAQsBlxxHzMI5WJmUvo5JPgumky1RQeTNnYfZu+4Je4V+I5vHrT3Spdf71uPG6Pw8e
	 fBp8RtfwEDBIbUCzvLmPLzbS5somPY/fmahOZbCNfWdyBcK1ZyVWoMKoJOhBSPczdO
	 shQ7NlW3TUp8Qpf3AOFi7YEibUZB6WH4DLxVCY5SZx47wYvYy0CtRjUMVkt2fiPUgw
	 jzP4xDUYavj/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1275CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894543370.1996.11681217843704480567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b44696e5dd7d0ef9e332439c73c8c6faac66f8339ed6bcd317c2b3c54b5bd18
Date: Sat, 16 May 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778945433
