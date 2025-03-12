Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB131DB356
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 08:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741767534; cv=none; b=ZQr+shglHXlh4nTE29n/4yOks3mNpJoAnydEtGCohRDZNOOe1MNcrv/7qmM10KyeQ20+Z8hVJQSA4gikk6nJ/7Ao6Er1PAP28dtYeO2mup9MQfWu0MDVqqFGEf8TFoOrp6Hm406+O5yZvDlcWu2aprxGIuQ5rRaUqQqg1XNEX4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741767534; c=relaxed/simple;
	bh=VSd4W5qzY0UqF+vyN28TelxcYaRlXl4/xt10mseC2T8=;
	h=To:Subject:From:Message-Id:Date; b=n4cSuhx15gcHQ08fCDXCSoDFzMt8JKRQzN6oUDDtsgSIiuXCs3koCYyVa2uayB/hL8dzncE/x22EXwedrkKDhtTcxiXKD7gpjSPoYcPlxspb6V76HlbE788dk2wlSmgHrVgCUAiLyWWl5tJR5NET/+vCAktv6FzZWh6A3rdY29w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cP4Uyrp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cP4Uyrp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5071C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741767533;
	bh=VSd4W5qzY0UqF+vyN28TelxcYaRlXl4/xt10mseC2T8=;
	h=To:Subject:From:Date:From;
	b=cP4Uyrp9tvyDkZHbs5bkEpxwhVgCXm00iizCB1Xdx9eI01fiIPsMdulTpyBDkFoML
	 YhMFjg4rBWtztwSAgKyX57Q39HHT+qdc1ZOt6QCN+Q5X84kEZS5kgCncFR4eoDJGTg
	 oQT3VEmcffy4OPDG6Koc4dWmyG8fpg1mX348OIOwNFcLxL30WWyqxOYr2YXoXnEmSe
	 3eF2HNSc4b7L/YknNoEmQA2pWW3oEyelP/jiVuwb65Dm2s4zWOdhj+2hsVH3rnDwcJ
	 UIZYQnIvEPbtqqRM5U60yMoTi2sX95H6vENM8ZtYTBvRAJDYJLAoV6YthuUv3u31Sp
	 RnPk9U0DZduEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90505C28B2E
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 08:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174176753358.19056.6023458846549721061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a221e123ad5c8c689ba94e5e9d2453e376420d29b4b330fe1943ce35323ea6
Date: Wed, 12 Mar 2025 08:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741767533
