Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2435B32D0C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764243174; cv=none; b=M42juWL5NvHRZub3ZeNF7fRF5mV83GxGNTYWF8k47tTqhT7ImTAzfLxUVWSJUMF5EbXgxWxxtQkFnoX+CIcbWuln4R1gC0f0PnN93DLVYeLF4wOeFD+9GynX7DaTFmZkf1QCImu1pyP7EhOMaItu/yXMxyMrpaK+K299kI0Uunk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764243174; c=relaxed/simple;
	bh=ksqud+3s6/nebeSijBkWv/a1TyYZgyfsu3vqTP4D7no=;
	h=To:Subject:From:Message-Id:Date; b=s98OeT6ZiVb4+Ca0DuGvEaHModH9mUEkF48SBHRF0mp6y0VvnEQwkdu5j9R2amEv7FTCNfL/v4XtVqXa8QqF6Y9JzDwUrVtGad2LFwjD0nbA4rB1XHVnJoVewr9JXznwehWdugcEYmVZDTkym8ftTGCorIu/fasKe/CPjDbAX5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBsOlPpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBsOlPpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B26C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764243173;
	bh=ksqud+3s6/nebeSijBkWv/a1TyYZgyfsu3vqTP4D7no=;
	h=To:Subject:From:Date:From;
	b=fBsOlPpDcD/JFKYipOjInjt4Y8IugzDWR6zplK2A5dSM12mooIb3jxSeGDk5cnqto
	 axRshi8qaAvsm9C4k5jRpIiFqoUtymmIngEUQ4d3HODuLmLkjoi1eF6w+eFjEjv7UH
	 vVnR7RqBFX8X0OO4zXLuAtJJB7hkIxIbCiy1MtS34ZgmRnVFK3P3fGWdkMFFOoZxDU
	 LY5LhS2d7LgTBxcFF6ZRkb1bFp4V/e1Blw2Es0L278btescU9622QNqQ8qs2LzEdWc
	 GLve8TaQwJ/lVHiVR7O2PkS6Z7NDwSC/OL8kdQfASdf86csMsMv5jKyGyqaXGKrt0U
	 TjetxGn+ZG3bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CD6D11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424317359.18422.1005118198059922833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31051cd95714701835f2d28bae37a0e5e7d09287c9a9f6430254b87b8faf7ae7
Date: Thu, 27 Nov 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764243173
