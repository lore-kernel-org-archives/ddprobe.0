Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1AE25A658
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737923753; cv=none; b=odGMMdIW8rukti3xWRrFaO4sI2Bv+DC6gc1UW1pYBZTCeHurlGtxwqjTjRgXTreS+nhizEQwaeRxwb2YiNWVitSRV37jThwb044swqW3lj2zy2HLDw1JvxeF0DI2Q9AgPY69v9vbxRmYHjxg1alaapJlensuTVhd4YC8zyMZKko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737923753; c=relaxed/simple;
	bh=sJ+I2SO67IjJihTAakQaf5XAPvMWKREfzr74TXuIuMM=;
	h=To:Subject:From:Message-Id:Date; b=XxbLnu2tVIqpBgGut41oxlHHAf61FzTDgjthbuXSctG73dX7f8fjyl7TJOxW2b4XnoAgTjt7s/Ulcbos74jJoyigY42xBIPGnooE3vLuOmgNKqX/7xKxJ1FChiVYD9Wjp3Gwrlxa2gdyI1ZjiaX9BN4AF/Uv2TxREubuWyfGJR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZxgDtHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZxgDtHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B9EC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737923753;
	bh=sJ+I2SO67IjJihTAakQaf5XAPvMWKREfzr74TXuIuMM=;
	h=To:Subject:From:Date:From;
	b=gZxgDtHiYG49ndT/QBLoPoyZD5bRVGkhqwbzmGsehvep30Fji/u3ETTfoVrukBekK
	 cZJyWGxUrtR6/05vufy381nCsDlPrvAXBaMajP4stnKt4ekXI1Nvv9x51trAu/yXr2
	 PxsYgBZ5T4vl2ZRPK5wxTo+MZm6gSNZELmmZq00SxnjGd/nNyZSfsERr47lK9iyqx/
	 crB3eR1N88WKVQkbDIdGnzd2peGlliOr9ouKgL78cf0MUGiXKvM6b6scd9RECDHkbr
	 IpY2GWlI8zId/L9WPzX3cyy/C/l7wTDiW5W9hdPAd04ulOPpHm1H2QTCZVRAeIJYsu
	 fB3rsn1tekPDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923C7C0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173792375359.27506.965300680135617003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de772383a83b62d0b983b540d586573cacd43abdbbd01926a4dca7d5b9599d6e
Date: Sun, 26 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737923753
