Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2C546BF
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771114494; cv=none; b=r8ZfopXAmr5yPtG1+phFyxpIR308u7sBmRJklHkbzzMtKW8VK4vzwTbbctWERFVFVJZcLDJq/4MLiF97OWd3mSr1bomUueHAVS607WWFJJxZCWsW0bPk5wntAuXkoepd1bqOAYTaDk4KLWem30jnG5Gej3c7VvM9+FFp4WnH45w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771114494; c=relaxed/simple;
	bh=bvFIEaf2WvDun+7zSESkblOsWL6rtCXM3cSMeSFLaX8=;
	h=To:Subject:From:Message-Id:Date; b=sQxaEh8/LLUkgdfJEWV5fLWsh+Mp1vVrDTRQbj5hnjKnEyXRYDo+Ntjl/VEBhQsUfjirxGaxKETNkbubsTHoLg0A8cMBxyfDKfi2kbL+vr/pnUw43sk6kn8JPMAhd8frOkD0Ob9O0QZL+HMdMg4MjOLS8xPKoQXTw5Z38jKa6U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehGuYahV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehGuYahV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECEDC19423
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771114493;
	bh=bvFIEaf2WvDun+7zSESkblOsWL6rtCXM3cSMeSFLaX8=;
	h=To:Subject:From:Date:From;
	b=ehGuYahV7rwnFaq24VvCMoHO2Pt+Rx5geK6M4KGQYMwVADEQheG33YHC24AJ7/nA1
	 PexzB4kyxmJNInzySEypM1bdy8/El2tvfe/keSUZMqf2dwIq5hHat6/RuIDSyhqRno
	 APy8s+2QNglqy4M3HsdQ6iQPq8Z6n2hRdq3ad+KVWW34Rg4ieerSVnnPHseJ1uYcpb
	 T9KmEl+8DQLmwMknoMxSm1Cq9Hg9d8Yx34IKx3F/zLZqSraq56gtUeoN9n2jzB8gqQ
	 QfaxqNH5iidybPLVAOADwMdhRCNiJMKYFrkf9/JE2X/42vOzO/hOteLiNuRBhaQ0mF
	 l9X8wFOZe3W/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC49EF5858
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111449359.25675.4732238717939517339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d48ce1aed4d7a05083c6c0550e6dd82f11a3784b176d7877fa4560b8e6e9e22
Date: Sun, 15 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771114493
