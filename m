Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3B63FEC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727921154; cv=none; b=P0ijQO3Mwu/d11H4nqx0rAEUpZybLTKhGJkedwTWHPt3SLvGzFKSiZc6cpKdD2BMUT0B/MT/v8aMj7ocwEKNugiqNDfvG/Twp6Xe2juPniEdAwJKKh5c7c0JiGSdVgSCYAtmlLTTZ1eUHkI39IANpHaUQQfh8Lx39XHPdVIMiGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727921154; c=relaxed/simple;
	bh=RooeZfqKaY+QZE/kPqCHsJmUWjGGoBqk2nPedZXAEd0=;
	h=To:Subject:From:Message-Id:Date; b=nKlJEPpID4sX9RWYkHVOn5H8gHvVYCz4C5neojNU0qfVej/zjhFrJoqGRpPCRLWkQ5PrteyjZZKr/rWhS+KWXmQ1scRbuy8ezRfZ7MwQ/VheoCYq07t3VjsPggMXPbtpPFFAlgUktlkZrDX4Ey1luOENh5obrPoAv/fe3KLikw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSjjsjJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSjjsjJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53CBC4CEC2
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727921153;
	bh=RooeZfqKaY+QZE/kPqCHsJmUWjGGoBqk2nPedZXAEd0=;
	h=To:Subject:From:Date:From;
	b=YSjjsjJaSqnXGaI6ZqcoPIQ4iH+euwKrN7IatitHcUorH0t6VDmX6gjhwrvP2iriT
	 JWTBs0lDgdNJQvijyi574VX/u/UT3gTXlyj4HlDKto7qvN1XDhZeLT96GdWRFQAX3x
	 d8dA6bfxerMkgqrik72o0ddtWJ2fGprcWpGqv97OGKbauJm4vkB6BjiXFOUyeu46k5
	 SXLG7xtkZ4wr02NDEE10iOPGK3mcmbjPGesYkMNhD27YhwVhpWcnca85YCfC/FQXro
	 YowknYIxJmG1jvsvv0hQT7Te9CtqXcIN5p/MzWgOoa3w9cgO1aB5WcnhMAdDh8MgBA
	 VYPY7oOrkRboQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A709BCF854E
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172792115365.32677.12650516759305632920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207028ef860c76be084c3bcacb2f0bdfb4461626c8e80d5b7c8901af1cbae1c5
Date: Thu, 03 Oct 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727921153
