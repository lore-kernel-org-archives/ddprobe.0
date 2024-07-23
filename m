Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F7C1E4AE
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721704554; cv=none; b=g4fWszrkDsVwi6fzpsw9L2ljOUT5wjU7gYHogq2nnmhYvrRK30CwD9wk+gG9eTmBikK7krdzIU/C6j7WfzO2GpkpGnwIIhbXW7GT35t0p6YwcfPJOA7a4ACRfv+arNlDv7SNNZRwGPFrHIms4oE1yR0PboTHdgOGgdTygQuuXyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721704554; c=relaxed/simple;
	bh=aoplD6uw2CZ//5IYpi6FHG0mDOoW3jEhU++bMnHbKv0=;
	h=To:Subject:From:Message-Id:Date; b=s2F7bUvuUR2YftS1XeKliyInITJ25u+a/a20XueRMfdwAXziK8nz7vFN6paGYRKxDs+/WH3VQHWVtV8S4nxrJ6w6heJzGu+Efmqpb3KoPrExhSXEWoHBy1ifKdK+YQo/qwjG0d5qLBT/x2yk55aQ9YO99pA7rviFldoFBzxQKgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWS1m4F+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWS1m4F+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FD7C32782
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721704553;
	bh=aoplD6uw2CZ//5IYpi6FHG0mDOoW3jEhU++bMnHbKv0=;
	h=To:Subject:From:Date:From;
	b=kWS1m4F+n01uMLzk3A8xis3CoFWxzeSYOUIfoHZy1c3Udzv/qpmMXQx82ECKcSIPi
	 evuz/k5wbeh7iWG6Y9IFWjgQrgf3pUp02lPe7cr7DDR3yNFZHOdxKLg64DynAkZMSD
	 zVgdrcBORkYACneMeTWcHjYo3ogAnsGZ1X5k3t1kYgiTCKc9o2dqE28/AKZx1CJN2Z
	 OTTKs36QojL0vAZKnqUDAYlYSijTjNd6c+HfMmUZCYoH3ErxiH36DX7yeae6nvSqzh
	 eDQCnkarQfxRb56YslDEDY4KkRD7FBkSBL618ivWeR4x3hoFTwSfliJSaclg73n/Gz
	 WS2W8n+Om2vmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8F4C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172170455360.9148.15965254362883663500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c36ba05482d729c28f731009714ad8890555a3c811924b7d9152dafb2e3e07e
Date: Tue, 23 Jul 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721704553
