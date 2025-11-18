Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F32B246BA8
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763459515; cv=none; b=V78QzZiAp46Qwa+45FDU+GGYKtWAR8wOax3rx03vcGy7PpBcw37WyKbcSgPPNW1euKo4bEZ629DKkRGxc55uo3qxRI/m2aKb97761c+tC+ut8VeGdLmL9B44WzK4Wh3eEcsg4k2bcMz8TSNJoH2ZqlHSDBW7IqnQUB3fW2H7V0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763459515; c=relaxed/simple;
	bh=gzN6Aplu9PCLvnpF9jCJYvEjhKPODyvqaXi238r4Btk=;
	h=To:Subject:From:Message-Id:Date; b=TX75Bz+z2LhwkKQbBL9U8ZPHsaZ8AUJZgDfkW7tb3DrBwHdWCRoE86mi0/F6WbsQgMncMeGVDLgzuclgJ2riT0TvlwGNNckTqwwWR6LH+chMVNd206ovyRByHpxO+UQ4kVDRhQ7YCIozluIu66bYK1cY48dMYVYpBXklUKipwgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBWP1I5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBWP1I5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBF59C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763459514;
	bh=gzN6Aplu9PCLvnpF9jCJYvEjhKPODyvqaXi238r4Btk=;
	h=To:Subject:From:Date:From;
	b=mBWP1I5mDOjiOsI2TlZ1cnttq3VqTpVXuNgrDsmo2zPcg95r6g3/IiMnAuSxJjodU
	 My2tYFngohLKU7dLdvkPq3BGveeRK37h11fKBSQCyrcn4VQrq9GYHp0g2waQDQdHJt
	 AIxbJdXQZ2xR1C9F6YLprf/oRXLH+6Gu2Ix9bM+G42SdCw2E3ct8EopdYkln05ZmbD
	 +lmPDFakfpQRZ5kTDzoVMX8k++uKVFfGkQwA7goVyiAK7WX2k1cEnwxfj49VOTm70Y
	 TlCMDmfxlG6AZx/Qtt17qDCRpepCe1xOMnIy8HdzM+b4eQpaWA+/VaGcHCMr73iI6w
	 AIMDzUTPcbOYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D2CED25D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345951358.32199.14784783093499886092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fcad53c3ab05ead687bb23e96de8d8121d564dc18a9ebb042ed1b45e8fe4445
Date: Tue, 18 Nov 2025 09:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763459513
