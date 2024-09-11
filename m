Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E82515383B
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726054554; cv=none; b=FMxs/R1VsYeqwH/BIszc16Z2P4KBztFSFlqaWrXZPiM11nXiZalqzAv6cxvxr0j3LFOj8uiq1V5FyplcpIO5kTvP4NHJFgfoPT3UWS86Fvm6WwiFvJyisUjOgk83PgUt0LuvOXTg/KfuVIZhqqG/njjzokpKLN8yQISQKVczs5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726054554; c=relaxed/simple;
	bh=132x3fhgyOounne6UUs4BwLVA6zhlBgqJLSt3wq+7Wo=;
	h=To:Subject:From:Message-Id:Date; b=SNYzUfmwsLCWIUssaehiXfgkXEAZ1Ra+bbu+UKsTIoRsgVFD2t0O/bo9oRh0z2q31DmocrunQN1VZ8ON7wvnCTkFHKZQppxpP5ywHPJDs02R0eosVKaSqJLIShU5Ky9j0kz9AMavOcZ+NEeEjU4zm/+huP3XmqJeJUM+v4w5zYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWj8Q4zh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWj8Q4zh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FB0C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726054553;
	bh=132x3fhgyOounne6UUs4BwLVA6zhlBgqJLSt3wq+7Wo=;
	h=To:Subject:From:Date:From;
	b=VWj8Q4zhXvCRNYx6Ep1hqIcN6bV0osHav+k6bRF5PYnbId3U1yjgC/zaRCatBgG6G
	 ogPp3PPbw1EOibnc5PTKr01zLgz7NW68qJyLl76JSpXQL+ZIJq3+LIw6D/5LJNn2k7
	 U4MssztpnTQ837r/pjnbZ794tGrRwIm4vzD4ZOjvMSjOV5Onp3X6l6B4hxyDYBfYcD
	 9uATHUEUCG7EYGB1RIvPnJpbCcSklzlIO0BhUxQFBQQ1BEC+qBZXRQohQxRYKvDcmr
	 YEHCaJWdZ1Fh/ZRm/sHjyai1y95C69txT7pyixaw2191msPi+m8SXBJwzk1jZqhflt
	 XJLXibuGprCrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DB0EE4995
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172605455359.31220.570407986075096649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbfa4801492050d4cbc7ede3ba3d7883620481a4096b6f61027917269f3355cf
Date: Wed, 11 Sep 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726054553
