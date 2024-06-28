Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EF529B0
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719581663; cv=none; b=U0nveDE1wsCmmerCTc/eaR71X/NPxTnnbWa1uSGCbyvKWiQ31pZgnuElJYHESShfrQR8XO7S0R7s7o1TWx1yltliG8q6pS9tpqx6IpBxuVECwzqSHySTkxs43ZSQpXsqOLdPHWq4idJzYJ8555kWviMa0qhIlDuTQ+t+iy+apIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719581663; c=relaxed/simple;
	bh=c+3JHa0QcSfx8BtMxQNcSPlYeZriGLJC1WzmtpfAmVI=;
	h=To:Subject:From:Message-Id:Date; b=tZInxKS2DiiCLGcXQRbWv/VqhIu2ZUZDv5i3m8qlOzBvwt6u9xd+JgWR3myeVH3N2tNralrXa9yX3GwHhUEI+j41n9wHHhxjWnUeMHYe1JGCjNRttbcXHW0dKf4K6Bs2qtrvYHLUt360Uqry441AQa5VdT2Th7jUbJ3iGYKYGyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5PUB7w7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5PUB7w7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20EFC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719581662;
	bh=c+3JHa0QcSfx8BtMxQNcSPlYeZriGLJC1WzmtpfAmVI=;
	h=To:Subject:From:Date:From;
	b=g5PUB7w73LN+Apoe1UdujPoGK3hyC5I75Reut3kNQ/qA4mdRRpYsKMoQxOGXfQ0ne
	 sqF0BvzO5K8M0Y1xZB6ig4KB7HVFJl7R6cfmT/aTJpBfwEJiW88zh+QvisLlux196A
	 1Nju7+pO99G/mWPVO92wlqdSMeObglqCd4Xh+iHRFds8EbECt4hE8CNbonckCJDNx7
	 +CKfgk7SZuJYXD6ZxnGTKPVcSkrUWBqlxGyPKCAb1PF2P17X61vEs1OnY60vUFLKL5
	 6Tzz+Ra8b2TmNjbcKAI4lupJOYTCLokjLq7YXjMN7yljlPScFmb+TEmHB50gu1DOyt
	 pvN948qiHDYkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD69BC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958166276.18042.3214225122844176155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b80b2d3049c4a75c7645c1002a568e2909d9d4557937c1503931856a442579
Date: Fri, 28 Jun 2024 13:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719581662
