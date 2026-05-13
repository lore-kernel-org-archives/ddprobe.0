Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C103A3E7F
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778703034; cv=none; b=MHJFXUNF+Wu5fLPmbE7JRR2/7+l/foYX5MiJ7bEic3PdqhLz4Q77g/pBT3wIqXyEOEa1dLDfVCcFEnnEofOivL0E5XFuVyf7+gEq1EimAAQWokC3zakFiwbnmjIB/GRoQIsHPijawUa6F/9eBLh6wMYy7Hy23whyFfNFPQzMtyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778703034; c=relaxed/simple;
	bh=rUB/NkI8JZl++k/1VxcZrbF6ze2N1qjrJVWptVCs9XE=;
	h=To:Subject:From:Message-Id:Date; b=mYdj5T50QIbnTJXR9fqCp3VzA/u403faJ2yna8ppUCk7hKEpP4M72lLzUDd9iEka4yKurCun+VOTMesl7vBAc60ZfdWkAqm4cka6T0TlDnaBGPNP8s8GVD9KyrH1wakgC6eazsScHsoEtg0SH+ASj6ya8CtF9Jhgu9TdQik/2Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKtyb8T8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKtyb8T8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECED5C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778703034;
	bh=rUB/NkI8JZl++k/1VxcZrbF6ze2N1qjrJVWptVCs9XE=;
	h=To:Subject:From:Date:From;
	b=DKtyb8T8AEoT1y5o1o1ZjHBQK7ET6k4ZjLuSxpKgqYtgIzwVtD3FBuHHYVXymJFmc
	 nL2+1QeDAENPeMQZjMFlYDRKNnt5P/doiiWlzjfd9AiiZJ93DDABySvyYcfMhQ3fLk
	 wahLReGCuJ3hJhk+BkojUi7ZjhjDyt387FUeaq8rErChAwjx8lO/l+l14DBbpEs/rF
	 /0oZ45ss6xIM7bU/oY426GtCtaQp4w+pCpQ2zsVziRlBdUIZXd1DeGgdRLb7D1xIhd
	 ryYL3AOPHMIBEgDAHImxsCcZaXDNfiPL0MKyGPfqlrSAEHJgenOTv9M1b6zdSFKJbw
	 jpWXXK3q5L0Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5817CD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870303374.13054.12474333202408167258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334bebf83e94b3be7e04eaba3549188daf96cd8965b0ec67bc7b612b5438b22f
Date: Wed, 13 May 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778703033
