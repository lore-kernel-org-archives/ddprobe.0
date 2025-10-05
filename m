Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221F4136658
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759647594; cv=none; b=oq3wD2PQWs7r220QFIP7pBfYi8iS/GWKms9YSV8cfO6zU3K3a2S4hyrm/rHwjFuuF99fJ6ki2oO24IOSyZLBtu3CaVAvCXwIa8oRHdE1Jmk0dBdhGVmZioxNMxo8yd21WA//HyMviV6O9/76uPbp1QKcriMgdNXD56+tF85VeEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759647594; c=relaxed/simple;
	bh=FPXW0kuVcI0owFAPuRnbhsbXopSPZgi4KErnEikJXtI=;
	h=To:Subject:From:Message-Id:Date; b=RkZEFwnmwiZjVoYxk6CR1ePHEq0p/gxO+PPjAmTwsHOXhdZsITLu1Wqdejo+40Ib+3g9wNCjyahb+URFvlnUhKqwH+o2yYCfBsfQ0DWwDkq1Y4ZoBqsnf0DNIKqDUrFnb+tjBTNYiXpVqXF2TqpTUT7BIxsqDUpU+gKw6njpwkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+wYgms5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+wYgms5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE6C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759647593;
	bh=FPXW0kuVcI0owFAPuRnbhsbXopSPZgi4KErnEikJXtI=;
	h=To:Subject:From:Date:From;
	b=Z+wYgms5P6L5Hp1LqZxgSgG2x84sK2pVRuldgqt9zRrVnq8n9VMQ3En6bQGVqlI43
	 NSHXlfr4EdNTq7rtd1ar4jBRs6r94dDAHvVouNkS9yiSfKuBRunhwaIMaDhFCK0+SZ
	 oaIlA/yGmHOq9kF96pRE/agwyFNGeTL9sNFYK/ss0u/53g5sg1sJr2t6BM741Pkeui
	 bfouOjjZv6Cuh5gLU0DLJ45pLQoGn1bEyhhhcR8WPPTxb9ee5BFC6osbCKWTQQfx8h
	 rxM5gBKAM+4+6CvW0VeCMmokvr6ouRv9G3pZvzhPBNQkn4nQWsCfdJPteocd/ZQxxc
	 wT0c8yjfco9YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926FCCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964759357.17258.14578221821042746669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813db88a713c27d67c69d85bc05c93249802c006d0e236a1af41ac8580b6761c
Date: Sun, 05 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759647593
