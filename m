Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31238224895
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747649995; cv=none; b=C8yMDuMR0lakUzjK2fC0EmMzpQdY/+AyQKCbjOyOyYj+hB0ighAaCivCnVsPmlfFE+qE5OFCkwjj6K2FB6F5DjK1MXEZXN27S68mVa7sbPVwYRyrwIXz6h2kJHecsW72rI6yRd7VZ9W85/aQ+6NC0yFPPiZbluHEhtjcLxI7XAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747649995; c=relaxed/simple;
	bh=MvV3oHYn+ge18irwri/l2iSorx2gzCUN6x56/TbM9fc=;
	h=To:Subject:From:Message-Id:Date; b=YlUXt26c2JowjKIViPCHfPq9+zapkF882YDrImyCB4HMlJQUfPBIYUH/W36cH2dml5pug3Ysx+DEF5cbTTrR73iaRMbXlu0TV7R4Ms008ZAEf1eR3Zhbhvw/klxH8Klg6dcwsTbifNs6vtpNP/YuQjv+lXUv/Bbu4gjX8lKnP0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXIzRxV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXIzRxV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EA1C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747649994;
	bh=MvV3oHYn+ge18irwri/l2iSorx2gzCUN6x56/TbM9fc=;
	h=To:Subject:From:Date:From;
	b=gXIzRxV7pQqqbEOddVjdBgV00rwUA/H6OzfHOc382pciNfYa8jHeRmuibYNkwMJBg
	 6Wpr9aS8ApucHB8vtcoi7AMPnx6+F8mBztyV7JPgcVL+rOU8dgYeU1W1N3d8bIGu/s
	 0MCWDzrOmtlOR4I49QXzdC/nMf9icQq6oDSTiPOE1hid9Oq55kvFQapGPxGupPZ2kE
	 duCIVajCWaqi3UGtNprFa+ZTnvdIcuZoF8xci0rJH8Uay7i8nVZm6o4fQg40YRc5Dh
	 KlWUB39S5dYCQrR0mz1Eg8RHfStFKtdazP2Tj9mVHOoiQxfb7Rk0hJsg2lCcHGcz0f
	 M+aIpC0pFJVPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DECC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764999357.3600.15250015028174602201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336658aea1e34d95f2c9dcc1a5800b132df7f138c69a1d3d6f18e121439a5a8b
Date: Mon, 19 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747649993
