Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326C2264A86
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775204134; cv=none; b=Ty6BWJUmzwn+gnhbVNZyWalNOrY6dxVVA0VRrGK3VmQROLDDnIxBsf6Q4+lTQmJskO8HRSkEO9VAH9uIVhGT8vCOLE6OJ/7suNqZJf3DRdhkNfX25p3VQGKVqAYU+/U8nfuG93Je05XdjU+rZCWeKbX0M8L1jJ5VM118L+1kaa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775204134; c=relaxed/simple;
	bh=xkF88rIVh9p+a/ADlvqqNYxi6GXgMlTVgqAHZdFGtjU=;
	h=To:Subject:From:Message-Id:Date; b=Q2TqVI5hOjMh8bNFXyPrQmr9qQMMjQig/xku/aeLjh1OJIWkIhz1+9xjTRaJ7tOsOyubzBz0rtNFx9PPWls9kVFalPKhh0GjMM45kKRAtdNYd6xDfNMb/Y6Ybb6jzO4a8gLcR62nTl0rxfwlGtVRlvSEPEcaDzFkQmDNoUTcxFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjZIDPSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjZIDPSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C8FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775204133;
	bh=xkF88rIVh9p+a/ADlvqqNYxi6GXgMlTVgqAHZdFGtjU=;
	h=To:Subject:From:Date:From;
	b=kjZIDPSzqQGUCFnRkwIZ3jgeNvH9opJGg3DRJM99ScypUTYsnCWFQZaPtQPOMrJnf
	 E8iDtyj6KOLKY3Cf4aEUq3NjkS719+DtZeUWSDBz0MKxjiOAhiJmyZIDjUoWsoPbLc
	 4BRhvDLjpuTBQEg2suYzarPCyfJ7Dsr2X+LmbD3WLURlPPt0TlpRW7y7JpLCTqjsKt
	 YxWMZTi5y0peEE/ALBOYWK1vBSU7Uso9hkljyCWMtW2Xwbn/xpRqq+KAM60vvsI04f
	 8qayQU3MF1cq4qBHB9XvH0zvZoUukxO7jltvvgn0vkC0B1FJ5W/36PdGIMdOn/coEX
	 K1wpHmsuOTRNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBFCD730B8
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 08:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520413369.27618.1938904383945841416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c1bdb2641333682ed7447a89b2d695ef7ec5dc2996e0bb9fb2af1687cbe8ad
Date: Fri, 03 Apr 2026 08:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775204133
