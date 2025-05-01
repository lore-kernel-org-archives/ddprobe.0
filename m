Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3594C79
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746074394; cv=none; b=HgfDFlvidBalsnA5PHvP6cbTydH10EbgQrU3aC5D5Jnyk1DThpI36HlBsRt3uMmvlFUrpuOYGcWzYEvFT8jkm5TqaJPPxgehTFj4z89Vs0GpgnWOZ2QO3Img3ddLClb8v91qStSINUYd3v/+vcUHStbe0s6RzDo/6haJsHtNafg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746074394; c=relaxed/simple;
	bh=hkYhRgsPc5/pqicU//MSZylOTbthmIqpNN2jz1hPV+w=;
	h=To:Subject:From:Message-Id:Date; b=p1T5uiniCKy713a0B0zwcAr2ky6NYzkMXtHUrPPJAFCFEcnLInN0o5uOZuul664NvsWeTsw6Jlc7QP1flsBVEf27S9cRRnuBa5VK4UJWB1v/h36nf43SNeXg5KwqaVpEmtY2p+eBSwe3RDl0hABCHvhXkjs0zvoqdsF5mhDgcKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaQxnPHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaQxnPHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60EFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746074393;
	bh=hkYhRgsPc5/pqicU//MSZylOTbthmIqpNN2jz1hPV+w=;
	h=To:Subject:From:Date:From;
	b=QaQxnPHp/gd1LnVd0geJQcnGVm41U8RJOfsDfFXrqbYdTBSPXp9nPKYy+DmqDSJdU
	 fIPpaHYZbt0Nt6ROFdMRtvwdKy0AtjIl459xImqmucNNQg9stc+qxmCYNupkvazOZD
	 YeWMJlVpMt0SBN5BDve1GO9Gk1zLtYpihHNawGzaWE+/0qW5cAwxNJ867SQEX6W842
	 E62DS9c1zPW1zVU9Zq+NWw5BavU2xgo3nP/Vg4NNr6mKTirD42/i5ehdj6zGJ6kNEj
	 Sb0SFxJHoC4Fl0c1WKz5xdjNys9fuxiPxVImOzbZDCKsvYbh5zHNVqEmLv9S4OkhpP
	 519O47OW7cEuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95921C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607439358.13161.12191976384628622779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8422dc2604101ab97253730bbcb00365bc23d184697e0852dd765a880385cbbf
Date: Thu, 01 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746074393
