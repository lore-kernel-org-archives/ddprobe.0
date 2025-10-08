Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0F5241663
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759910394; cv=none; b=HBGg+4iV4cN3Z319Gq+xfPsI2DU1MSI0yShBiwM0wlcQoM6JEzy0DYrlsifpVNj1MANh3/nYYOmZn7Hfa9vuWyzkRFxR5LKcuvxVf/j5sRk7AQ7Walw8NYK0lTiybnjvtsQVnod0VnprD0ZDlyMcYij2q9WalQOnyWB+wjW7Cgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759910394; c=relaxed/simple;
	bh=Q2gbR4vSMM7s52F9igmAjogv5ryEm6pfhAavBfUwFlM=;
	h=To:Subject:From:Message-Id:Date; b=H2/dyrEZtYQHRZB2cHzzLtB6QPB+DKI/AvwjQzqaXKeNZm/ttMQMJGqDX6bqnZgXy2mSPX+P5OlMQq1kNwg5EwuHFgY7oyYBd6/urrbWvPSkSaTa4kcfqgAS56Y8D5gOFDlmYoMcpITh6xgDTrLz4n0TfO3KFm4QSTP96zoTrDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Heus7Tos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Heus7Tos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A471AC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759910393;
	bh=Q2gbR4vSMM7s52F9igmAjogv5ryEm6pfhAavBfUwFlM=;
	h=To:Subject:From:Date:From;
	b=Heus7Tos3ehPy8S5chGauO8lnueXWjTIxYxmwae7IVwJwKOEUDQoRnhGLRhE4DZm1
	 wJ7hbrzwjwMlneMgOyYUYqL7T73u23kdpU2DksWRxlmT6sD3m6Kpq0J6gxFhuor8EF
	 4DIkzHgaEB4KdvMioG/64WwxeZNICiVDNiANllIj9g+ZSflmrxh/2a3BfZg80SFtPP
	 bn6Ro+Vfc3YunBgt2/SeaCV9WfshuTBzL9hCOXiSOAA5uaGn/HxkrRat1dExaDsc0G
	 GaBVZiuST/4T5y3q4ocr1ma/nPEkqbyo8c7XKGvaIHxG2ZenAXecb/dvECp2lbjhYx
	 8d5nmgkKC1RIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986EFCCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991039357.24590.17627061029974592110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92781755cde79a1650d31b2a259d1d32d7046c7569cc86e02c9b8f3f172f3379
Date: Wed, 08 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759910393
