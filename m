Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480ACF9C9
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719366203; cv=none; b=UfCkLymOiqFL+qDELjjHtZHx27FkbUoSbqA1q3I9V9S4Fpd4K6tz7t14GnfA7DdObldDkGIN7V6dMhhngPH4jHX/8LlVaaOlMTZSzGwwbfzgCQJkph5nnpN/e0dLF5BUPIPOcLRLSM5EhUehe3L5nyVYR5amjAwLUdoryXVIvKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719366203; c=relaxed/simple;
	bh=fVG0Q+HwtPjxNe1/NyyHLYtwK7MreL1Pg2uwvP2+Jzg=;
	h=To:Subject:From:Message-Id:Date; b=RnoNQzpLGvnH6J53FrftdypZQYbYTSXYLsLARftLxcTOwNFicmQve53wqACgiUhmHk7tKMiI7tFRg1FAFbBZNqzN5K+czP4hURWvIQPRv/aWTNM3095UpbdEvn9RlSmWq6K4TcoCNjXaU2pd+a4l9OcriJ8Nm0b9BQcF4BYl1Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdJHzPYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdJHzPYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD841C32781
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719366202;
	bh=fVG0Q+HwtPjxNe1/NyyHLYtwK7MreL1Pg2uwvP2+Jzg=;
	h=To:Subject:From:Date:From;
	b=VdJHzPYEbrEHG4UceCkW4HvTXdT3kDYFUXUTuN8cC2Y+UkT3+r266HJ0DmFKwy1tK
	 t8EN7rUd+0SYNeyeQDxmYgetujOSLVeH9TA3g3pz3WObWYhR7rApmCIxaCOQpPIfFT
	 ApQUB7+cGiL0i6kzo38RAolTXjXzN0nkugO08+Ud1OXD2rrUKKQtzXBNGbNEnb3/a9
	 vYtnO1PjQDfytD2SkQabzt6YtEU8G/VDn/FcFiDaNBd09k05biXPnqWAi9mfgVHBoq
	 fzsoFZ6yLyijPHTgnLbQWVyUHPoWh38+kwJWdOn8X8VD7Rn1bsoToobUBbT4otsS8b
	 nLT8F8328Ye2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD31C2BBCA
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 01:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171936620276.19395.13757184942714594419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49fff47375171d6ce5459c7c912744a942036c896081bb3d013fd1189cd5fdd
Date: Wed, 26 Jun 2024 01:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719366202
