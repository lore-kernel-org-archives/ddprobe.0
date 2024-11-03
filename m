Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082C313CA81
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730666154; cv=none; b=tRZH7hI/xmOwDENHoJE2ZUBxq3waeVmwVAdicPgM1q4wNhObg09W1fgz9GiHMNni02fEYw+OY9kXL+1xH8WTkJaGMAaQOBrKPPyyuzN6VXNDV9J08vwrvm65Flwop4YyxJ2SeDsGVS20KZr6nKIy8AzxknNwKRw+ZAM7y0s6KQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730666154; c=relaxed/simple;
	bh=46jy72sK2ckkg8iwCfx+5ZqZGicm09gudXzhLCzN+TA=;
	h=To:Subject:From:Message-Id:Date; b=jzePFnV2jXmKhlGDSkT/jdH0gw30NkKZqQTK+L7xeM/OfFLfCYNPX4gAF6dqCjx6mq2IDVU2IU6tV818B5M3dvKS3Q7XCYvNw4rJNmgeR7R26S/9dZ3lFQ8o1UVZDcJzk4f0ECVOOBWxE/KUB6EgiZnat0yf2yEUJQ10NxWhBp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajXDcbzo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajXDcbzo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8427C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730666153;
	bh=46jy72sK2ckkg8iwCfx+5ZqZGicm09gudXzhLCzN+TA=;
	h=To:Subject:From:Date:From;
	b=ajXDcbzotyK6uhr9HG1h0Aa+/NRvTD9iqv9hF0Yn/jSUGdO3QpFRoekDM2BGxDVsQ
	 lflr0FZ70cB9w/WMLOs+jJHlSQF/6A4AR5BLQPoV8gdQ0mtiGat2Pgmmj1Kcd0r2Vf
	 F7BcUB8A8xNnfSPAoGAuH+HBFYtb1WIIdgyc87mAaq2zer7SSiWqhz4hjkPAJwnFwn
	 aF1DNWhcpSrA+bgOL3tt4lJNC0JeOAjEJP+4t6QJJbBTzp41qv0Ap7kBT2sTyjnv6y
	 1ulyAihl32xcylC72c0iuSq+TdJEfB3OMLR1bIX1jeBtWvl9LUgyZAE6Gg4PxCdQCU
	 tONSwpOdY7xfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FFFD1118C
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173066615359.10872.14671608610075542363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c733a1a8007bbc2130555caa15c2d401b36a653c1bba4439c7962a18832560b
Date: Sun, 03 Nov 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730666153
