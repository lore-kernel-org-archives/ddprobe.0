Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236C11DDC33
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754074794; cv=none; b=kH9lWRyKjb+bUUAPr+/+3fEhS8xmrmPrECphvztWaNNeSCLBtHlJ+khxBNstnjzy7Pu8JJHnfvlXsplXF1BgECcxwqjIw26qCEmqgQ7YcdbDAkRbUGzRxAdku/wdPF1r/Jih7fHAELW4VVk2GAZtJNcAPu2lfRZ5nKOdFyvGNVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754074794; c=relaxed/simple;
	bh=+Im+4XzEj/gx3sEOMbY/2OD5kOCnGPJK5ZAeD9MFZT4=;
	h=To:Subject:From:Message-Id:Date; b=t81e3Qtcg0OVroUQxHOeDbA3cwloQ/Nha3ZGGX15CAH4c7Gs7BjUHMBG3P2M8nVQr7ACKLMJW1QI/YZKeGjWh+xU0vbT+YOYbmpNRrXO06i12o/jz9KKZxu1GeQaIXhOGu3iToOnj3OpCg3Anp6o8BmUHfelrRUWt/i9xb0huwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7csj7Tx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7csj7Tx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DE0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754074793;
	bh=+Im+4XzEj/gx3sEOMbY/2OD5kOCnGPJK5ZAeD9MFZT4=;
	h=To:Subject:From:Date:From;
	b=k7csj7TxS/48HLTumeOxccgn49OPnPOJ/5qGcQjNuw0ZsET+Vks33Z3mTAm2qE0/E
	 +1B5Jk/wJ75gMYENoKWZlNeW9BhWop1sQBuTjpaRbpjgJmdi6JR62fDjrlB+UQ3CbP
	 02ELTwp0Cx5OOmP6LdpO1A/f7GYtAxGOWsIPm79a9O0yOY6bsG2iHvI+AQ5vHOJ+FX
	 RTudHNhJrRTJmimvcTUfNpbM2bPBQI+EyhhtBhEKPUaJfhT800AJ4m6Xj/4HegG+m7
	 Z0FAvLXEx3rICEkMcTF9Qfr3Yq+C9tc+jFxY1aa+EVXRTM+6+p7Pd133G+tgMB1i6/
	 s4t5VB0nSNwog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934DEC87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407479359.22951.692459459154068345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7c8e260c5cff4bb645f84431d34388b6681e246509bf94526081b5c59db150
Date: Fri, 01 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754074793
