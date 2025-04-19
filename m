Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382DC1172A
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745042994; cv=none; b=NzoQqA4ZJaRjwQ2ENalBlVeY2sefM9S/XxCrvyxpTZlsvgQQIBn7O8vdAMGSW+xKX70NTpx4owSfv9RcdC0uq9reyzeDB06ErGFenpFqRlLuLDqSs0QnLiRSPT06xY+kclTVLW6jDaR5FIsRIpyolb9KaXTvnTIFpIV83v3wCr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745042994; c=relaxed/simple;
	bh=HbYOT0w2GGbiu8EILobADLf8MbapmkOTsuVkgZEUurU=;
	h=To:Subject:From:Message-Id:Date; b=ht25WBKf2YFDwusWV9LCVTifigaZN+BXhXEyflQ+Nk0viiFeD2SnQzTlUMht5DAOvF/MYb7tGRs2i6r6CKaN1bpCkyUNd7bsgYTaKWG82T8kTG/NC3PmtrG75gBzxBc0HGKGIZaCWPYrzc6pZLISoxzOIfxy45nYsIy/JriwHog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivcNMO/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivcNMO/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC474C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745042993;
	bh=HbYOT0w2GGbiu8EILobADLf8MbapmkOTsuVkgZEUurU=;
	h=To:Subject:From:Date:From;
	b=ivcNMO/LyiCpbQob5i/+jZO2i1KBDJFH6mQ1FVaxngkJF6s9dyS4NBE+tvizRm61x
	 m7GTUJxH4x+cIXYHmXGenCYtBdJYJZFGx/Q2GxjPgTDAM34ZloFzDwYc9pTomz6ym4
	 gslbVoVNSILaVHk00+fCBJysVsv6jGIlRGZ795DucAy3k0TurwddZJiAJG8NwvKMr0
	 YKQgXbU+gq2ZaLYPBa6VgJvrmdDnm+borfu0aFYdh/Ff9d47JA/hnsbvODu9u8tFb7
	 9zEAAOJKRw8RvrSg00xEY4ydyrV0Gateeo4KxBLZF8jQBZ1B1fIQJ9aBp8sSS/jcxC
	 pep17JaCXBHwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E92C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504299358.11214.12309658760592604112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e551c6d1d5cee1198854e89f61786c81e877d777dcae64462b4b81cea1767f33
Date: Sat, 19 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745042993
