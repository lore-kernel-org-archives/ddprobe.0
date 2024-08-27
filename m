Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2402C3C08A
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724796354; cv=none; b=T+5X4nQDEeHT0pwGcDqJ3FvK0MudoJnYRL2lu4NQamYLcdJ3bzgQCkPcb+sXIzab94HqY2ko4OSiArx72qPFydnujekLyGmV69vUyGVLDmf0RS1yUnVQaFQq6G8trQxKh4IjpRapIPNRNd1zWSL/nkL/Qb6xZxZqmTU4AsJjBUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724796354; c=relaxed/simple;
	bh=eoEAQaoI9aQvqh/hFiNuJCQxAJMiyW4bYJaIhpzok10=;
	h=To:Subject:From:Message-Id:Date; b=DiHt+8r/1k/gKMR51G96qVYxf0fZ/0HESX5YT/yDvjQBqZ4XR+PV00jkZqjw2mfNmXxECcgVs1PMWzXCjUAMD6jLofAXpwmKYH21+KfsMby6qnPiBvR9uc3+SDLvCjOv++BA9+cuduy1nRBsBOEQ/67RBDeatuZZmQgBfbYm2xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCmh9dkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCmh9dkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00F3C4FE14
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724796353;
	bh=eoEAQaoI9aQvqh/hFiNuJCQxAJMiyW4bYJaIhpzok10=;
	h=To:Subject:From:Date:From;
	b=vCmh9dkmQc8ST3Gcg6szQGfva4Of56zP3QjGoTc+QeA/9nbwpffvr8nf2akVXuykE
	 Hn9t4Cx+okP3wckqNr7HWR8fVNhgKU4a9QkgmMAooNhdhgqfhUj6fNVijUcuMV5/H0
	 ExuDCCi+wp1BWBA6FFc6rYu3QEolSWSp+lG5vy/43WPrUMFYaDsajoHn7eYMkNW5jo
	 fqAd9zpTNzzrq28vwm0Zw1lnKVltxGuxbWE/+39O+yWIy5d3izQlE8hSMvwP9HEKh2
	 T3U7dZQm2F7b5pCUSy3Fp9JoqTxmfXoq6zouylA3nWuugFQR7/WS/6+K9w39dTYGCd
	 4BEMuL8l7xVkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9B1C54735
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479635362.22422.11913349012604721977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b7fca8b4b773b04374a8938da671302a68213640c7ad065b39b65c636fae4e
Date: Tue, 27 Aug 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724796353
