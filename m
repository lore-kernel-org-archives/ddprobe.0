Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500561EB19D
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742544594; cv=none; b=rsz95AYORFv9TixZCLnrPwRSfkkWhLi1H2se3JvMOXIa6jY0YTzSzo2UZmWurBJHgTSYYvnFwuippi+ZT8OAMYJ78mWvooRMLrDolzlGu8/09Jo2XyjisUCsyZStu2/80/BMs+GuVF4i8xOY6d3rTm16hMtSVYygk/3wMPtbuOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742544594; c=relaxed/simple;
	bh=4abmNRSfBkz0GIXNHdyFeXeF0JMJhqftdSQfhLXWEc8=;
	h=To:Subject:From:Message-Id:Date; b=i3CRWTJ25r9dMQe9H5OmTInZRTI+ZTwwLC0AASwG8vRh3Cx58ihrvmXYcZ4S3LC/GZbV1Ru4TM5N8mpTtX9XMRMRI4QOZyszDozV3hdysjdX2GQObwvzctTOAG8k+jpRqh6XtKhpfavOP+bgNnOmiVsY+XogWAb+lou3OxKeMS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TM+Jq6bs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TM+Jq6bs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE101C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742544593;
	bh=4abmNRSfBkz0GIXNHdyFeXeF0JMJhqftdSQfhLXWEc8=;
	h=To:Subject:From:Date:From;
	b=TM+Jq6bsih1zCgwaZqa2iVSuDTPS3WGSYAX+x6ZXiPGRvHES2oGSyBEeN5H0WU9Gs
	 T7pSoAMpsqqaVCr1BOCPn/uw2Yb69gqrbUIgE/OHXBP0lyF/Jr2I87fFIY0m1w/W/4
	 Sr8VVnydPVM926nP9u0reULGIFZPNuwgET+BQpmhVBNV6Yt0o27WSIPVP7IOY15gep
	 tDyjqr0Ih20tf5s2KDAM0ku2CaFiC6HLPXqwEBVI1qQnSAY6dj8CqydH5VjcY/ZhXJ
	 paIKLXhktjlD0/h61PEfYbDaqlJ2r54tPH38KnhcMDQP68rxoHzcQ77NUkLLQ9luNn
	 88Q5vH7zLP/SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C47C35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254459366.5802.15863761129851697832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ea246f4257936725d4a73adbfd24292c119b5aa98fcc5c348ac0cfb71e72f3
Date: Fri, 21 Mar 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742544593
