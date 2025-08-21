Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1030E281376
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755805794; cv=none; b=RqAjLWH2dyxvvyaMZQ5jUyYrShbNmi50jbCbd2FunYmJEAPkdoICzcJ6UrMQLrKDJCgkuPiWQIK9uqYvKkIVrZOYcOWtaWK4bNwOX6sivuEvd2JicGDiEfkuh87kbm0CsLKBt6MqJR/F32ZHgRHEmcb6SCR9NqFrsFtPgv1pmr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755805794; c=relaxed/simple;
	bh=IEK5zYyaTSvr7PYdgsSi5aNG5de2iR/JGscYSb/0S5I=;
	h=To:Subject:From:Message-Id:Date; b=LsRx7kEYQtzznnzI+awS1n6fCwAeXds405p3Ld/MWYD8znb5XGu+NBdC7trv3rcjjBg+UzM8rQEnmlQYyJKFpRsUtJr4XyStfwyDFJ6K1fFlsVvM0LvxO5gGNeoXcPWOaRMbU9Zj+NpK8ImMPJSlbkK/91Z55qiW3N/f1bHzl8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOZEd2gq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOZEd2gq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6499C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755805793;
	bh=IEK5zYyaTSvr7PYdgsSi5aNG5de2iR/JGscYSb/0S5I=;
	h=To:Subject:From:Date:From;
	b=OOZEd2gqbr30JtiRKcD4yX2mOgxT15D//Bup3AWYt+OloKdjGsNgx8g88Ez12nAas
	 S+/obJd00RNDErzAJHewwT8pjiXHC8lfBVFl4mYeMmNGU25wbNICFLrPbRWux4I5kH
	 2ZU2Qqv/8jcpBGJGWzceiyLm73sDOcOTRvMa4YxcUGB/rQP1AMCQbi6UeZa7CFSY6/
	 cszgNZFiTbKTGsMUDCYwl4km1VbYccSSYGzbLQW5OwRQ7vvzrCBFw3DJhrsATTVfO9
	 2WIZsCv5WnXS8b5hVK9aZxLuSIkDqcDMJ+qwH84e15uVooTVVubC5y3rUfnliLFlUJ
	 1Ms5+jKCD7JpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95669CA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580579358.25758.16111979755250963620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255cd9310180d8c8a4cf2d831b056f03a1a7ffe501f610eeb7f6422941d0680e
Date: Thu, 21 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755805793
