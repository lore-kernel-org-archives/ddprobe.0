Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9AA224FA
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745971794; cv=none; b=JHwKm2lfchoIT3qE1Mf0UreEnY+HuGd3pZ23my7v5Y8SQqBGjAnTHctFAT7yHLOhyfdqqGDsL8YtHOeWcWdKrCno1wTocWy1mjPnVXVe6EZG7RImGwZSTaMHtTX12SwwUuZy6YQh1xJiP+Qynz5gdZ1bMQ1RED8Ms/jkfpIGFVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745971794; c=relaxed/simple;
	bh=XtzJo2dUf5efpgTpqaZneufww7yJBCFlv/N+/2zgL8U=;
	h=To:Subject:From:Message-Id:Date; b=MwEfNjrXBwajkJ7V5siZA4fg4lrVZOgSAIjWec8C3ynVwJQcVajUfv1R2jpsAL7Uh1Vk+3GMB41NcZj6MHL/0uKck0hNwfLwhl7gdyvThzyRoovGcKGRSCShyAHnnLsU6nz5eQYogh7N1UJuncH3l37IZUGNFDN2Suv72RTnqdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFetmUdo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFetmUdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA73C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745971793;
	bh=XtzJo2dUf5efpgTpqaZneufww7yJBCFlv/N+/2zgL8U=;
	h=To:Subject:From:Date:From;
	b=tFetmUdo+IXD5bmt9BbDF4zNSWQIbqjGAAhA9miM360xwrAg1+hoYsUH4lwWtLwhR
	 /NzAiz+qtMuRYo+351zhAlLcx1c1uZboxgJcDjajIFlJfhnayhR7BPpq+wbWxUauax
	 bGYlh22p0Ng8Qe5vEW79YLW3Dr8IqKhymZydif6EqwfZXJodgHyz2gZJtqV5sPW8Fh
	 2r2g+hsQrFCFQyCCdTC5+DJ0DuWvXAFl5P5JGBY2GlXzA8llt5yAY3NliI99G8iOdQ
	 G/Zpn8Ygsfb891okgJGHUQKqhbMJHdw3MJVG2TvAfnKkNc+KyNzoyZydCR6HzwByfi
	 nfwyKsNj4aK2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1AFC369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174597179357.24273.11494696559201996996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3830eda80ad5dbee44eb712c17548705fa7a1ae0ed45734eec64af34ee422c2b
Date: Wed, 30 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745971793
