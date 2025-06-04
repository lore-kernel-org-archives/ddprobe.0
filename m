Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E92128E607
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749036594; cv=none; b=DRRJmnrjKCGm3BiC8Z15X3jLPGHa0cAuljQ+RNoKbo7DhTT+nMrBvvWC583QrV/icjYilzpp6gvAU79IVGBQBJoW+713ZaZEHyBXD1gHRyXHeDFMCbTNyRdLE82bfBOjs5Jr0/iQbktvZpFjnG25L/h/gNOg25+GzEOI5lslSpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749036594; c=relaxed/simple;
	bh=SxHOrgxFOcD6kKf/zb6GoGhy1zgpKs8VsrZQDY8DpxY=;
	h=To:Subject:From:Message-Id:Date; b=gjmXuinXnY25uBNo4mm3XhlS/h/1i/JBmfXaUBZ0rVYBzbjNwLZPNpQNnh7CMVMvy6U5o+Ia9m9g99U8yTk+wwPrKtaM5kjFwdAQtjmqN0L6AOeRZJ0zFyaONYgntwFNAaBCKf7cnHPzAarzHYpbyFIma6H13CK5967csk9asR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbsvAaQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbsvAaQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F43C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749036593;
	bh=SxHOrgxFOcD6kKf/zb6GoGhy1zgpKs8VsrZQDY8DpxY=;
	h=To:Subject:From:Date:From;
	b=EbsvAaQywdgYeTBThaWHNNfF8hxJEoBZJ5i1VXt6Q6leYDn4uqMEzp6xipOtc26PG
	 u7STu2HfcCUZziBk9KRiTC8D86f4w9oogrHavPoboh1QYxBPSFdTDgO3B8vE6Gtb+s
	 lxxmiMHpsTptaEp9R8HcuMVlVZ/BF8MzUVMCmfBsML2FlguN5CBB3zct1anT09Vwlc
	 X3MQV5XE/YnnHW8YkVP4o+ufxuOQzKr7GdyQYNU+lOTXv57HfAuSyNyhH2ecdJKJWC
	 +GRp9H0rOvol0cNlBoZ4HOcurzTsQ2fYL7KUFraFM8mZmqgVpKqlCkgK7TNumMMbKa
	 OSlBeV2qdcg9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175CC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903659358.16618.15877997799478956136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ff44b21a71de898f57756f523413750d3047d03942f21631e33b2aa861031f
Date: Wed, 04 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749036593
