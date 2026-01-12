Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBCC330663
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768252434; cv=none; b=dWGf2ofvDYlIcQ17v7OHyUvDZ0uEtVfQF8RETzwQFUV5T/tO+ZBX78jkaTwqXh13A1ThLLmMKKalHXO8B5KkXlTtCJcDeMTnwhy2CJcpzSwZAOStM3+OH58fgHvNBQHBUyOJui/cr/roTtWsc1WBxAqiioMMhGADQdHgASaYy6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768252434; c=relaxed/simple;
	bh=MNLE8P2uPdpEjnip/Ko/R8HwpXoaB2pBCD8t1yiwEXY=;
	h=To:Subject:From:Message-Id:Date; b=hSI6xKQ/nQW1zfjRMbfY4ZsjG6fRt9KhSee5Uv7HxiaxTPF1qLSB55fV7L9nuugDemYYKf8A+Fbju01M4e6keB0nw/opmO3nnRCqtyhcgN8fB5fGVDKEsTj3Jl+tFjH8gRAR1oUMF39jzGjOo0IUWZwRxAKwzNvQDd8XT2FkdD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oxs5J6G7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oxs5J6G7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F74C19421
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768252433;
	bh=MNLE8P2uPdpEjnip/Ko/R8HwpXoaB2pBCD8t1yiwEXY=;
	h=To:Subject:From:Date:From;
	b=Oxs5J6G7K24x8r7/fy9YCaHrQm+zxhkldVU3TiWn01Y2j36dAAdOPSakKy1nnEpZi
	 qDwXmw59mN6Vx6SY3i1vcFs1FMr9KlH8X3RPeOFF8lrpOM7ct0RSYh96msogVR73wf
	 8rSS1Bzdoir4Ymnhc9CasrfERAll2OyPPWhrblidvooO1AL0VNkkUmzAWUIXBRMA7v
	 Q2aTSIhqHvnIpzKPNDu1W7Jfi/QmMHMP3nsXXhOf+HqYl3/n57RWGrcqtc6fIhY36E
	 zoYSsUwkym/iDO5UVq9z9eDJ4oSzHO8y+qne3ap+Oqy7AQC7sHLjMiO0vEN6dYwymi
	 Mar2gjeUCizoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B9ECF45CF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825243358.26580.9666026420156266107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6111a9fe3f498d5c1ef540c02d60573b50968e911ac895878ee5dc1878e6e05
Date: Mon, 12 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768252433
