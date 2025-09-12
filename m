Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2E125785A
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757712594; cv=none; b=B5rA/4jSkFKM7jeYftJ23BslB1BgVa39/qMbec2La3yRpKwet9pHdwl2tTT+r30nbXS5XlxUNGbdQsU32biTNFYH2UISwpRLeMxTjNLB01/VDzE5vjSJP5momcKtBpjZdSXLM8hugGZ41ghN3lwqHhf0DUAESgcZd3IQSPTXO6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757712594; c=relaxed/simple;
	bh=Hm1IfoUf0aLCDkwwou6gOtZ5XrP61ozh6FUPtZblAi0=;
	h=To:Subject:From:Message-Id:Date; b=dOBa28/3U50/n66NDa9GaR/a3G4lXBt4ZgypBkcfnKKIdOgmYu1dHU8uhgEaKRgyYclurcWKZlEGwKYLJwRib6omqdYbo1Pbb+eAM7OmzRuFUu51UcM08tVilIKvrGcHpJDIp0rNBKntze+6ARc8F6WQTwMoclcTamRVyxWahQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7nfd6Vj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7nfd6Vj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAA6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757712593;
	bh=Hm1IfoUf0aLCDkwwou6gOtZ5XrP61ozh6FUPtZblAi0=;
	h=To:Subject:From:Date:From;
	b=C7nfd6VjMAJJcUZHIrx0gfXXLMqvGs2qxniqEpdC6nAuq+k0F/g5JPA5QL7RSd0lf
	 ORxKvhRI40RYTENZ/6kMiVLDx+zvHjzMEi9W5g4o6FFrRtyyHbTeFY+kQaH61c2/9/
	 HK3ZEq2PfV03d2SUQXG8++ztKLEUuLUStuIcxjpj2+IV1jEuEZt+dLzbetpvQRUWqC
	 8escZbTpoNyEOgnTDBkbaGA92j5Z+XBditke85SSqInpSsniVPekOc+1yqDxsn+w0u
	 DEpI8GZjMiXfcia9J6pBeDYW5aDmUrYbhygkMTYCYUs3+ekqYJMa+tQ71EBcerFjSX
	 o/pS/e4jCPbBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9031ECA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771259358.17903.11063630621430014370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b029278ecc570d8641e3f7424f0d38631f26333aed0d546c43cb9911c506650
Date: Fri, 12 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757712593
