Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500261C680
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 16:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715618543; cv=none; b=N33aVQHCNNGPCvhbMZdWVItdZ84f4Bb5cnnugaIc/q/ydqZZivsJ+6p8H3XFQ9weUig+LicTCeHMPDCvbqM7zXmthbhQ20qJyc9hicd+cCSQJucQJiCtu4lri9rFEWUxjhyBuDTv8RNS8diWmlnXdMtr4gvQPvs9JUhMbqoM4tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715618543; c=relaxed/simple;
	bh=lCGPb/c/bVp/oQkH4GWQKgftPwlmarBSiDjr6jIS4nc=;
	h=To:Subject:From:Message-Id:Date; b=tse1B3Y4HCkAEivGVV5y96pfNvt/KzmkF4fu+p172Wuu0aVYl1WEC1IQBlVI0vxV0HbokBKPMYOpvVjCtUX1k7isnrze3R4xWvopngzvynggFefDmU35Ukn01q+TgM+yPCACfaVt4vEqx+TlhSg4qAfTc9lulV+6TKZ/zs0G6Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFuS+Vwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFuS+Vwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11BFC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715618542;
	bh=lCGPb/c/bVp/oQkH4GWQKgftPwlmarBSiDjr6jIS4nc=;
	h=To:Subject:From:Date:From;
	b=KFuS+VwqH8ndw5xqonnI64qK6tMUJ9JuhUA7iATfLz21ueSHptxO3PU4YqLLxGQgO
	 OhnhadfisYD/e1zyDdzGmbaZHqraKiH6ug25olXrICtzHtD1M/nIzYJkffIsaeccWQ
	 EiGUxOGBDGtQhd3S2JnMiXypigh57s407oKBdqtlfsmOmdBW1CECJfkbZ1XLQczTDf
	 lQ5sX3S+uQnZsoQHZY0rJpun3n++PxQ7O2bzhy2sRwKy8y/owTR9hwFMCnDrq4b1Nj
	 8TMcwcB5QCBarYcl8pEu1uEVNcKX208UuKjayg/yhqkB8SRg84KlQ5qCoq4aKkSSSO
	 5/Tf7P5rYU1xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED32C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171561854277.17551.4580225002141626634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ced3ea739a1f062fa292d3111565cfeef6b196cf1bcb5d7c40c666bdea2f76
Date: Mon, 13 May 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715618542
