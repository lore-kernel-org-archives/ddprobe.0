Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEC88F5B
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765335774; cv=none; b=XwK+jOLtUlp56xe/0mp5HodG9hTTeH5VDQvRKjkm2GX4xmEJZk/pxFKU51pLIpTwaCbHhhap/29wfcrQTbQPnXvPj7CAgkgvLHvF0Lu0N8U3EN0qbnWpfqRJ2gE0FuzKr3icYON0sWoLNB3oHDGN4VKDrDgbn+4ZB61bhIGZr4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765335774; c=relaxed/simple;
	bh=LWZmeP68WxjXn12yVWG5vD7qKoNpZMiRYN1w/fXqFlc=;
	h=To:Subject:From:Message-Id:Date; b=rs5A5MYsDuKbe/rnZUg4rGEAaxlp8Ho+I7Iq7+VhXNz2YZMYnlkpJ+BUoFMXg7tv3Ipj8FjrrcFm5oKRQK3gRVsetcNMTsVOJjFgPygDNRauFLJrcDKsQ7X8vgW+d0dkpJm3dXJB12cZiQX5WZw4IOFsIq+pjS4SUmAtrS8ESdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOgWnr8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOgWnr8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D6BC116B1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765335773;
	bh=LWZmeP68WxjXn12yVWG5vD7qKoNpZMiRYN1w/fXqFlc=;
	h=To:Subject:From:Date:From;
	b=YOgWnr8bjmR85ArpO/HcH3FvrhLlSnAS+Wx0T6YBnIHBjlVLs3Mr2sWeZcT9whqrc
	 z4icfWBJ5FY7Ievt5ZYxywltraKDYJVzdbXGq+8HRcfZqDEyqMGtFKbZMuGNWXa6nC
	 89y9uXnb/HpvV//m86Lh/iC1+gZY1XDoUowGuDIszXlIj0CVO47O49M9Uf4otTlP1I
	 86cYW7i5tL8OxDyZ8fJj5/jkYTrYkhLLxswOQCRXSULyBkSaSajBMs+UvvTEA1fU4O
	 yaD0gPHBOQU1T+GBds5fcoGDGlRITfhlBY10kD6pSWe7SuoKgMEyTpQdK6KOpiG8rH
	 WS3PLrQ36wrSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01B7D3C521
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176533577364.4244.5027030079554311326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72288ce1182ef8fd0a4a6a2374686abe75c0843aaf87d9b646195c752648c305
Date: Wed, 10 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765335773
