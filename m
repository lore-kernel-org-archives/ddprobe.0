Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7981591F3
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721847353; cv=none; b=HKcixqWULxqo0iW1XH74Aj6wAkHBjAvKEzJ2btnraNf2AuAICV8kI2itOZF5Yi2g5c/ic6062gCeFZ30mHLFhjJ+9NPVUVY2O38MxR0Msvunk0E4QQPC3BSOZuIL7w77+wmUBCORwBnsmsI25y4+vcmDJcIPSASjrCpYYtGu6jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721847353; c=relaxed/simple;
	bh=qFCRHFCT+HSj0t50M//FJRYQJNhPs9R6MEfoW/HUhz8=;
	h=To:Subject:From:Message-Id:Date; b=LiJ7RksNJnbiUXZL0g+syHaIdnOMIEPIqFItwgD5E+5JQCif/ZBL2EBbV4RDznLCv8HPdvxj4bjCGyq3ryRnbHDZM74ZQ6FOi2+7uwW/JY9+p9dIYjEBbFNpoHkliniCzqklqNtqNCi/X/lyUO0CxUvL9+3/AqEFvDQPfddUb+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7D4j0n5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7D4j0n5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27BCC32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721847353;
	bh=qFCRHFCT+HSj0t50M//FJRYQJNhPs9R6MEfoW/HUhz8=;
	h=To:Subject:From:Date:From;
	b=s7D4j0n5GrcYnG4bAB7EEOBKxJr4X/2mDeG430TCEjnSmS6v+ryx21EI+2uiGVhW2
	 +m8k2vJOpnHfQePoXnGF/iemRe8uxk4m4EM8nEfYKJdAqxT55r3kkoNAHLGfI9CZw/
	 Tg65eUQRzSC94MqeCYkNQfgybiP17w1jz/GxMksZc9RhPU9PZz3D0lMq2a3jztoiTm
	 1+/B8X+fBQo6lLS/noBp9wWHMkdIk+NDoCd8g5yYWPxWmH2bfuwv01xTcAlKB+LgsB
	 SSeYTL1xUKqtiF22di9c5QhKeiXnVIo9AyZB3khmAycw+7GOg80Bng5yGppeH4ivj5
	 VFEjtc58c2wFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92673C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172184735358.26480.8467226897571691819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b20002f746902efac943ea9f114403dfa1d8f534a341085337b80026d7a55e
Date: Wed, 24 Jul 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721847353
