Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2EC29AAEA
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765027374; cv=none; b=ejwIdoyTEImukdlu7dIec+8ugqmtq8Zr0U6izeH3BUd7GfwFJgGDVujJbwHBYATg5L6ddE8X+EnzgxocXAT+lo5YU31o+OzNKZzOdeZFTgdpoF30PaVwsMumDubcm735uLdYq+wewUfr9mc1IpKOQPmGkX353DRRigANtjvhpLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765027374; c=relaxed/simple;
	bh=Sgf80uIulzWxgTOG6BMANqv4jWuiG/WcdN3SAuVWwfE=;
	h=To:Subject:From:Message-Id:Date; b=OZSOxNRJa7K6OveccyYCRS0y1/BZ0qEZSOZhHKY2NHVgPWj9Jo0AHrzApEXFsUs9S32glEIBKdaxZb6vdgqjI96x/BhNK2pmBCNgW+mNPhd5rmM2cevrc3BKm2yitJWowKTvny5KQB0sajahPvKOGKLXRlqU+3Y6mS2tDRqZKU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1obVY/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1obVY/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D9DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765027373;
	bh=Sgf80uIulzWxgTOG6BMANqv4jWuiG/WcdN3SAuVWwfE=;
	h=To:Subject:From:Date:From;
	b=R1obVY/O6eUpx24FH8UcFCKb62g8adXqlUmEKXgsquHTGHZ7jRd8d8gWnytWck6HT
	 mkfwL+0fuW04HEJjrAD0mcHZ6URjyPbl7Zu/PlQYf0Oamj9kX+kira545GOvsKuioQ
	 TPwVumedcLWFrttgdQUEsIcxV5tMnXFDMJx9P4u9jvrIHXjyLniRVDvsxKbY+BL3WK
	 AXj71/NTQwOU5KakynCx4n3qxOnAI1Uv2AJy0AEfhv7NlwCr6N7zOOWSeKUvR2vOzH
	 jjrrEVzEIOUaIqfWtu1lSPTUmzZvDNpK3OXzaPpIhEpoKQtnNjfavLW3omB7P0W/LX
	 D/eJ6zFS5aDtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95622D3B7D3
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502737357.15411.8941442068033150155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65d7dbb6d240b0072939c783d22dad9abfd02c070c0c64b44902d39a6194f547
Date: Sat, 06 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765027373
