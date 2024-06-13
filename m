Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F86826AF0
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718297903; cv=none; b=Y0++ss1q+W+vX28KbvhBHvGSwYHMTp6Yl2LEGOYVuA010hTyuFpLnBHkdNXSlxMvPQg+kt6X0M8EEO1VHyt4bI4cU0g5Af/Zy6WTRtNC6qIhBj4YHv4WQCUoT+5ZsTjBypUylsAbsmZbErK7foYUnbCFlSZ18Ea74QzY1/na+4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718297903; c=relaxed/simple;
	bh=Urx81LAkz7lvTUz5HvvJIMP/zcbe42axhQRsB9oiPMc=;
	h=To:Subject:From:Message-Id:Date; b=d8KFEnQbNlyzi9OjKIuIMDNiKvZQpnzVotpO3wju891NU7bUuo8BpS6ZBkiq43zWXIVjHGu7RJfg0epT4r52/12BVzhLRQNdux8DkSBaNcmLUo04mc4DKUArDZL+6gMnK8xxpur7gwFzUCfuW3OIGEaHqWP3SGHtOURxffGI/zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8jiiv5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8jiiv5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA8A7C3277B
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718297903;
	bh=Urx81LAkz7lvTUz5HvvJIMP/zcbe42axhQRsB9oiPMc=;
	h=To:Subject:From:Date:From;
	b=p8jiiv5K+15JKE/4+Tgz5fXJECabdlpamxCDiI/5N/pMH6NxEs0SnYpn25IB320xr
	 MK/nxlw7o5py8rAmHtYFGzfSglMPmjQJAuyBM0MUi2DjSJWQPaFm6E3soztO+rbmwq
	 w5IC0yZmN3qDyiZLNDogAf7wwYhJx/rlgzAYutuFsth/dkw7vISy9cWj4If7SIuoXF
	 1Xg4zgta4Ubq3YxgpP2V2ETgWlvmd9N234NH/sEenkjV0M/q5qcCuk4J1X/jSs3Shp
	 f+qz8Qdjz1HTm9Ix33GZA2pij1O6ZCfZeweHV0H1A6nlzpVLPaIS2orlBjBeW2z3Rf
	 B90UPMVfxvHZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D26A5C27C6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171829790284.15968.11072369524453299866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa27dda5721bed48be766408499143f5c8c3b54628dcf0d5e7805201546ef3f
Date: Thu, 13 Jun 2024 16:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718297902
