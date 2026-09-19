Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F2E1DF27F
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789778434; cv=none; b=cRUC62vCJmiYhPXvbJPEdjW/fJA/wVs6dHzPm6zrUzS7jLVa4K5ZcAmCUx6DaVNABBQmGzxTYP4/z67CLY4IZfvojo5pwMOs2hFLXlD8LCKqfx9lNTjJKEzOlLsFQJy3gLB6BsBpB52iPn97Pdy/BfGM+7pRwLdEJvC/bzz7B/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789778434; c=relaxed/simple;
	bh=EKRPKqUVxX4SCAbrc1QUwO8B1iitHUTu+569k9H50I4=;
	h=To:Subject:From:Message-Id:Date; b=scBXuhRmq5n0KRc6i9M8Qusy/5sVdFKkEg0bzYh+iNfiIQpHzE1LWbsXeyZHCjHlaSKitdLC3OgpHI5j3m6SGKY8wCgPly93TqQfWpj92xOaJzW98bsXvMAHHFJNcSnohFo9zJTdJAEoceZhpuwdeVdv3ODAQ5fTwNnk7rNwmX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKgC2t7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKgC2t7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B65C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789778433;
	bh=EKRPKqUVxX4SCAbrc1QUwO8B1iitHUTu+569k9H50I4=;
	h=To:Subject:From:Date:From;
	b=HKgC2t7E3laWgfyGAlIKutwUNa4a/UUv+iKrceAGFGh6pKmWYBacIQuQZEaeMEi5i
	 gf+uoIl4dc0YusEZl3TEEw1bxnaAvpUCFWA8I2+SAR4qquNDA7VHvHWSPf6tT1plBH
	 vN5T0J/tM1lnPoWcUDABJmiXLqMQFudzb8rt13RRIvKfGh9ADpvCz2AfqNEGk9XbpD
	 nfLUvcMhVrfazrtHAdrskPpn+kfDVbmfGJxGcb2sEW6yBJENDviCRVa4P/4dNJ7NE8
	 Ed06E4y7ltE9cY931tBSKcLBcnTyrXx4TMYCEz1p6WNhbUYKYg9GJz/eWJuUuzqJDF
	 D4cp5MUBVfkRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC227C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977843369.19389.14473580465012527009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af2bf9c9b44e61872d4982fcf4af91bfd56ef59353c089d8b25026bd5938949
Date: Sat, 19 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789778433
