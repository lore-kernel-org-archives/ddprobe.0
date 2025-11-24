Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D64734253F
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764023574; cv=none; b=KVuDF+DyiPo9pDJiBQzSHyGIgQEok+70khlry9moUsme29XVIbzM1hW0N9DBmlIO/56Cav2zltm/32GVXtAPRJW5H39F8/CgNHTzXNL2bGEvFIr+DeTwWyBPb8ufUDT53kO+W0pAVyi9xkYRPg/Dj65vX+lbd34mAeqKFYd57+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764023574; c=relaxed/simple;
	bh=Us873thDmlDc1tvQYyd/U+u7LsWw1j+yNlxmIEbd5oA=;
	h=To:Subject:From:Message-Id:Date; b=qV7U5NqG5KA+LGvkp5tLnGY4f3K3kcCJq0pMEpn4ml00tiMW2OiKsGUNyzz+BLv5yD5NWUpx6hrGushD2e2zEq38Fj7OF/VaWYcSf/yKFs54AE5yRiz06qWAoFIPGdll3TsO7nHPvJ0cpq/rDXFqurxsiOlmcwPaC3lg2O0LvEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJ06F0L4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJ06F0L4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B27C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764023573;
	bh=Us873thDmlDc1tvQYyd/U+u7LsWw1j+yNlxmIEbd5oA=;
	h=To:Subject:From:Date:From;
	b=MJ06F0L444nWoe5or8Q/U4NDCzJjb8wsJhUdPGLknXI1wb+jLvAAVTpRSiMI1qrkc
	 JFm9P8v/waqoTiJEQGCv6aSmQZRkoUh5a8VKxJbsFJo2Xj2GgaC7WA3FTZckesGG2F
	 58DZG5zuflL3ChQkONP4nR2faUbnZJ4Ce19I/O/gpXU4Eo9cL5vdyo/XXENXlBGISB
	 o9EDA9uD0bhwQqw4t0CU9NqlQZXSZ85/SAkk+FB3SeyJ/DE+8XntLdVWt1Ymxx0g8J
	 lEdxtpmOkmLb9s4IhbXUazjTLrQej8mBwGoeU1tC/Lo9I/iTijD0FIQYwtETbQluEN
	 pRw83UtddbhVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954F3CFD360
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402357358.9328.12284346635813066961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6ca4d6ff1931299951238e8448deb4853124978381167cf4c1b0901c5a49c0
Date: Mon, 24 Nov 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764023573
