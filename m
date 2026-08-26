Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDE13A7F69
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787777434; cv=none; b=g1rvee15R8Pcd++nclB1f4YLdoOQUHdnaQ7XrRM3MUYHWQdzUxUC5CbszoztRVwC4Q4MWNwFtKNXTaeL4oMmvwcQD0+JFT3JH8o2z9py1QTVFrnHWxUGjL6KPGoC50MIfQxC+oC6xpWM+92ID4cfpEc9fsHBaZlyWEv9tINQqZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787777434; c=relaxed/simple;
	bh=7wvmFEwu8PxFd+mIQxtkd4ykYEUfDfEHE099o0MjTLM=;
	h=To:Subject:From:Message-Id:Date; b=XNhZ6DQYss0T9g3yfKc7HZHK+sTYTt4Ggn7V3BioJgdJxNiBNpjE12gfmLKQ71WxGBpiq/LYeNoiecPL6SJtlq8hbzMONpP725xb0ZdbTx8KW5AMOb/EesojlYEZ38csqngFtf4zoXOwqbxheSXpbUwgj9HdfVTCb+YT4Ap+IG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skmh2vnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skmh2vnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBBAC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787777433;
	bh=7wvmFEwu8PxFd+mIQxtkd4ykYEUfDfEHE099o0MjTLM=;
	h=To:Subject:From:Date:From;
	b=skmh2vnfwJQez4YauFzT2EwTvZMXqsLQ4UpERFL11eYamH2lwY/Ol53cYnCsm5cnL
	 NA5YcZbOHZfRPuwIPSOkA6xnyMQxY9rlx5TW5EDRJ+33G+QwZyjQ9+WN3gEx+NP7pZ
	 Up/Hz6SdEUz4At90C1AoJgOiVha0PYY/VhDEK6vnBCmh7IUo/KALdziIZ0Rcwu48dz
	 bLiK4z2J5pTjHMvkE15relzWS9yL1RYQir+rOLXxTX1T6jjfTKlBm/55ZKoMbPSLW7
	 xnlVV0/mWgqzQDksZGdZH6KtzJ+HK8euqUXM0dsaqWv1Mtw8oSbjUe6SD0Omaj6A98
	 /20zUdsC3X67Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA789C61DBE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777743368.5507.4359396131128694696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed7a8c6ed748ef2a190c4794016ebc13b7122a46bb806a52c9ffe2951349306
Date: Wed, 26 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787777433
