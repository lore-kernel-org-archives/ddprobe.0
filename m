Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1970E1A267
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758939594; cv=none; b=MhQH4huVoQ4WdxM7+2PzNTD3OVMJ+7RFraagfWkL+QXItsbzxlcIRkMw0Q7DDJR0q+XeHMyzFqxKcZIWlnaDlSV6nwRuIXC1jgQEQubmnz3qCzbASG6QMaymmyG0Wb5S5ISfbpVo1utBAxKC09s7YI2t4pcE9a4ULq25YzGiNGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758939594; c=relaxed/simple;
	bh=6bg7yDXdDfGuwbKviy9AGs0pGETIvygu9f4dOHI5REY=;
	h=To:Subject:From:Message-Id:Date; b=VVpPQ5yy5U2NlNRsGtfVx7LtDyJq29yzx7h092kur392cHxPJTjAtQrmEqPAgGI+jnf3cL2nx/MXvCwLRxQvP5RtBRtHqfYz4QliHer7XVdftbOwxt7y8xQCY1M67KNOGswwNLs3kii2xTJx91UgWcv7xg3flqW3JlTJRm3R6sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtMzMkfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtMzMkfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85B3C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758939593;
	bh=6bg7yDXdDfGuwbKviy9AGs0pGETIvygu9f4dOHI5REY=;
	h=To:Subject:From:Date:From;
	b=EtMzMkfUhmh8V+xXOdnSp+QMJPMQio8WZcOoiw6KKzoCBkUtrfi80KF0A6hKhByQa
	 Pef/JG5UPsrVROVLI36laBR7/aOsqxjf82EJqhtMgu+qqsSTXlYcChPR/CTxLRgaTT
	 Vb7XxPfl3PfYMwPwB+3oCxsdY+s2s7U+HLn8Uyy9VGSA+pyTVoo31AmuhQvoKIXx9G
	 FjfuVkHBOGu/Gvv8yjQXGR24kc8isPEHUAgphMj84Ygq7rr5cU6qU4LoB2Dz9VZLaY
	 Sm9K48JyZoNGkxICUKH0zSFlggssQcOfGzBtLkNLFhwUl7bkAEkpDCuNUfPgqJVlRy
	 KEKXFZisUvCmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96075CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893959358.3668.2966655042846340715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aca53453bd84c44d79a73a5fa2194ea012315ef6431db56d637497ce7960a63
Date: Sat, 27 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758939593
