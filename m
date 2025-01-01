Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3E7B674
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735717554; cv=none; b=JYhM+oE2ph0WxvRZk763yfp3YKc23oRMD3HQyIBovWk6ccCQCaq7Ua+aMNObbh3qcSV/do8H5/i20fW80pfZSkttxrL8LwIAUde8AD/f2jFO0bTh2pCWynFQzwdf/n4X7rZy6b0dSjQespkiCdzH4HsklJAXO568JFy23S8VTsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735717554; c=relaxed/simple;
	bh=S5kzMsvf/5jJp9qWqvY27OSMgoc/hxdDO1Ft3B/Eai4=;
	h=To:Subject:From:Message-Id:Date; b=phgmU154IR2Vzc9alX/LVo4ehkYYBUJM85XGKvbGwPv4AbU7OohGG7TeNQYsqBxJvbr+lOZOoYbxUwD0/6WW147+JWkvPwGf4KE1oQtam836krd6oFNZ/2cACaL/7FMqgQwr09mbXHaaPUAV49gq1S/AW0ftvenu5nGeQwSafag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmPc7nV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmPc7nV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A37C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735717553;
	bh=S5kzMsvf/5jJp9qWqvY27OSMgoc/hxdDO1Ft3B/Eai4=;
	h=To:Subject:From:Date:From;
	b=bmPc7nV45vY0JQndKodEsFphuFsiF59jhM91ARl+N+MAhSZ16AAXWFygya0oHLH6m
	 ZBvd/1c3AZTbI8k+r8uIjwhIpn4WjPCpW5u++fyvZOGPieqV6P6QhY901PUDz2CR2v
	 Bnd5iOBKmOiq+5pXpVyVNmN0xJJGyccwiIH39z5q8o4zqh2TbbixBSF1KwJ5mr4PHX
	 o0ki89Dg9NO5aOu131y+SKFhjrtmlbVhjTjYoaOHKf7rF/wwUtIqGqtCfK0211ELdB
	 Ti7Ir65DyCySQYPgtU89SqGXWy529wIABBV2Cwh/f4naazgmfUIqdnzJ/vZ0K6TxJV
	 CzlZJtdw9vWxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92848E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173571755359.13688.3316265095025552194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cdbd43cc8a3f194d5538b92607ce5172ea7d23ac92d8a27cca538a1dde24146
Date: Wed, 01 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735717553
