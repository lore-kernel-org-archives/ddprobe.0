Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7515117FABC
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 12:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721219723; cv=none; b=RxVPiZTUmLX1xMhXZOBM5HEERAChf1xcDB/ukUgHk7VPZ0Q5/DBwGFG87XLaC3VwboLshzDBjh6s0Sy6MxVHEREN06YLz0LXFVppBhHiKqLAsSn2lc6+NbaC2cCtY0zuJa90slg+v6rMnihBnN5Cbv3fiY0DZZC1rJUaMvTY3sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721219723; c=relaxed/simple;
	bh=9sVeQBDlBfgnCuoGJMFU3HCQPnFMyyykvnRmUTmakJM=;
	h=To:Subject:From:Message-Id:Date; b=GiNlkhseU6hKJW855ILjSfJEI23Fjm2AbZMHFjXNtAQqls4/hUlBCtITZmU6c/Zkf8vj/YOBgZUYfph0VQ9GNEdYn+uLBt+FvVtpycMeiLPhXHOXBoa1xWzjGdDeio49CtsHhL1DjZksMusVXUFomEj0/+luBmxa21T9+LMsKsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxYMDBua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxYMDBua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1884C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 12:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721219722;
	bh=9sVeQBDlBfgnCuoGJMFU3HCQPnFMyyykvnRmUTmakJM=;
	h=To:Subject:From:Date:From;
	b=KxYMDBuasSuRhnO+QzVQ1WvEF5dPfkaIDPhvFybdTNa/9rVmrLC4JEapqBJA3wiXG
	 WgOuJEcmACNiXxUqCM/I4DTOT9dxFzq+CTXfTD2ns6vAsKHg3dRDIO1envJqbQ1Zsg
	 2sAQ0TRBLRjIIdtzuKq7h3gTNheDQdG//vKZg17mDHYhf49zYwWZqUMmVIN24vxIbR
	 oTAzB9nL/dYzAl1OXNsYFV8DgFF9k7Kr0r9bwz/d0YhG7+v67ucynGHUuHcgzxRPhu
	 4EmS6HWhRc93UmSuFbWHyOz/lDe+JpYXKCWBoeIln05OjlX96G9lTxJGUe0DVhCTra
	 N0dNEO7jsOFjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8691C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 12:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172121972280.24596.742142413402407750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d080d7f334c182933d79f292eb03819ed4194f0b0ed143f14d0fd9f6fb1b4380
Date: Wed, 17 Jul 2024 12:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721219722
