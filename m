Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747BC4690
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738380355; cv=none; b=mS/K+54ZYPa6/ZMTgvg4vpB05DgTvMf8hT7fcIO88WNvAeLLbsAU2Z+BVc7u4DwYc/zBLDqglhVlZHzBpN6pwu8/WO3QpRnHP75F6lMKdAc7CUTL8KsSif1grF4W5cP8t84MM9NvPbBPwiyXmbsUTj13N/sS9MlqbfE5r5l2xrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738380355; c=relaxed/simple;
	bh=HH5HgxZaUuYtoEA+j6lN3eu5dDLzrQWDj15CX5EWleQ=;
	h=To:Subject:From:Message-Id:Date; b=o0E164yRdQ7z9hRpga5Z+xuB4NCjl7x9kx1GB4R/BdZ0NP+CFKZOkl18r+LkWNeCuSL54VljvOgDDVs6pwicu1u/jZ3nrjrUuzgJ4MPjqvodg3y+cbXzHE2QoGzvNC+U4ClnDciPZUUWv1kZOkoHXVpGXRApLHbM2JJvc9ipIJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrkXxVIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrkXxVIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2BAC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738380353;
	bh=HH5HgxZaUuYtoEA+j6lN3eu5dDLzrQWDj15CX5EWleQ=;
	h=To:Subject:From:Date:From;
	b=GrkXxVIuL+Lz0866fcJZ4E0ndqymYRGVfz3JZluW30ErN12kZMsewNEEi9l3qjKd7
	 osbABr6Y9Sttu1d/BUvYQuxHd89AEWuDcOnC6pp6B51QpMAYTcqtHFjbfkWrD3Hu0x
	 b4vpO/zTIhJNlf6qWH7LYUyMSKhtNviSR+5QiAaTUCOUfMZh9uszhsls717/lbx6Uq
	 zcysR1ecY++ynX4vCpy7VFehg/rd7WHV/3NDkbc7n1Jixb4gGYD+NkznBY1Mz5HKN2
	 1/4hNcKrAfbM+y9hB82639wlv6/ntKojzZKRAgfck6291vBH7BVkJJYZnbP33ZcCfG
	 ZnaFZUAmYbB0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2A5C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173838035361.13653.15775904661467964243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ee782807ad06e39799da88dcae614fc34b729a05d621e2f23e56df3cb9046e
Date: Sat, 01 Feb 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738380353
