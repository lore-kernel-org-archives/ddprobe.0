Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A3328D85C
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753100994; cv=none; b=plF2jw2585fz445tatNFWhR8V1sXIRJN557P8h7GzunwqCtf1fuddqGbuzRkUYag9v7pYFnbOorLbm5SmUYAjBTUC2y/BFwtmRKwVub/X0GbiZimcm2QOsm1Q/8yISl3SOEZb6jc/fkyy87DldCbLttKyZgmIYiEtXOcskAIAW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753100994; c=relaxed/simple;
	bh=2A+hJkHJLSdGDrVuPE2BVP6wOYGPsctCqbM64uSE+Do=;
	h=To:Subject:From:Message-Id:Date; b=i0qf09NiN/Du59DBMwXAnoJEbuB5xJlHAtX1HeM8cFUJpwA2kAYRbolLZoJF869bDsUVSEkxTbi6D2VF0tNiwzg6wTwi00Do8dRMlB3S/hukfIJCOZpMlbNh3rx965dI70zRZXrc14HDvl6gJeJW5EAqI9PrcGLio9ZkI0xbnOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlLvmJy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlLvmJy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1183C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753100993;
	bh=2A+hJkHJLSdGDrVuPE2BVP6wOYGPsctCqbM64uSE+Do=;
	h=To:Subject:From:Date:From;
	b=AlLvmJy6j34ab3yVbPfhii1AaqTbWBbfCb6dZRLe0kTPFI/Fjatg+CYFY5nY5Zdhy
	 p3SA4QqhhWpYm2oNh5cw6l6qO8/ESh3LZWoM/2dExK4BqKl+KQmyLuqMe83TUDwWiT
	 sYIjn+5Fmnc4xMvrX1oCYPuX0449IYZhNWF8xxQzLypZFBehUQ2pA4K/mbwpHoTRKF
	 6kq4PJW1jKMWKuEM8qfvr02loNgeKdFr0wQyNeGjbsrmD0IpBEaENRvhmE5bGyZcrH
	 GnxYPLQvJc2agLlTi9iNspQjbFjHgPJe4vVtwvN4glwPmMZZvtehdIcNAVwIhj8txh
	 Jx70IrH36/9Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CEDC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310099358.21522.6171761438902918883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 439b26fd91869c7951e60a1677a53ca9fd08adf999a232c77837fe2e6520b63b
Date: Mon, 21 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753100993
