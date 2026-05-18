Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D48405C4B
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779084634; cv=none; b=foIq+TRwIP6FfPRwkyHQBc21Q18bLuOfkS1008RQxPHZjRiUyuL22hqiq89PUAifOmj/wz20P7nBxKoEB1i6v5wkwQinisdKGRdAId5MVrMTau+UedUWuMBiplB7/wAhGnnrQ6YbfrjC4XZ5ri0yJ9mI7TqYAp+veXMi0cHtYVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779084634; c=relaxed/simple;
	bh=QQEFQZhZFF6n5jaw+bMuhjYA7/N0fulKSDQlOQAvzfg=;
	h=To:Subject:From:Message-Id:Date; b=gI9AUNa3NloTJ8CcH030Sp+6Ur881c25Tl7MMIMCV/1vvctWTUoMSbbw9wGUE6dwIdpeW3NRTH1FDvSMc1HpcwPPBzYiIjrFHo81XJDERRMQLAR0rvbD6yKwowYzh5NLZ+CXUdR6eJcdcTgEGlj73m+PIQF7pVcj8PvU9tv8XRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czNjERj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czNjERj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB19C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779084633;
	bh=QQEFQZhZFF6n5jaw+bMuhjYA7/N0fulKSDQlOQAvzfg=;
	h=To:Subject:From:Date:From;
	b=czNjERj8NP9bC1zawdkOG2Ks6cGIWSXaAf1KFM2SKgnXBzmIhuxqLygcYUW7z+5oK
	 /x+YknqT6UlUgmHUzmY72le/XzA3fIAzfAId1s1ssw64mbRRIMD1ErwUu40jSyBHqg
	 PbQrNuWMIWtBL4vZGDTCprfTvuc5uZ2h4/Ru9ksXK0dTo/D3ibzYbRENkIuteoAvzw
	 jG8h91G167gLss60stf316HJVrPgMhYwunUAAnwcQRYeBbkPZQqkKzD4a70F2tR/qW
	 r9urllHYTFyabyuVa/Ip289Hu9cJT3kRo+FR42hIcbtr3suToCPdVUnPOO90iz8ecK
	 VXXw2XuKtIQeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBB0CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908463369.23246.10308081989828753092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14bad08c5b12f243ceaa82c85c5099d01ac260000f481714bbe6dd7264b7bf74
Date: Mon, 18 May 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779084633
