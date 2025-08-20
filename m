Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204E51A58D
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755691794; cv=none; b=KV3a/IP6XbMnkD29T7bks/FLqVI2lauWVyy5e0QNQRvHgeP1NPUPjSsttKncp6k6FxfqQJaBrR/FiKkQhCNtkado/x6YhJ8uPak5N9jj49AFGtV17g8V6GjS++Xx1SsiK8q/7OdvneencQHEHc1hKZo3NTvOi9xDG7o2NLLGNYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755691794; c=relaxed/simple;
	bh=yO9NcLXarq8vKp2nFAIOu1jVe2uiP4ACFqsQt9iwfg8=;
	h=To:Subject:From:Message-Id:Date; b=m0/74HjpM9hQafgj567kzLBkzSygeFUUf3iq9g2J0C6azPnV81bJeJuWXTHJvtdeI8VcG708SslY3qlO7fhK/7bJ5bg2TjTwGGUItwxNv5Xo30vCS+jpJwjBO+5Gvj/Qgxz1A/CSN43MJomTQQxzVEGgxdTuObRQ9TwWP0yOt3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECQ326fC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECQ326fC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2818C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755691793;
	bh=yO9NcLXarq8vKp2nFAIOu1jVe2uiP4ACFqsQt9iwfg8=;
	h=To:Subject:From:Date:From;
	b=ECQ326fCPRGYr4F5yMQDzoSIREkCa6FINXPhAifAIBGHIMp0XtoulL7hfskVxPfft
	 qPjtNINph5PFloFKg01HjUGE40075yxj31VPqXOoXdsbBinWBM8DEPnvaALqBI8bZr
	 ha0eNAUeoGz6+fActjL0u1t2x6RQfE78PzO0nvwZ8J1jQVh4HXXcKFmdC34hQfg4Xd
	 JCNUV3ACTtqnWjoypgKTI+sQwwlSqL2tJi+bGqiRfg/9dKTYkF5l54EsSS9rShumCV
	 m7A0mu3wPodglAqRQ6EHLmKN1Rw5Z2GECQsPvOQZUorOGlfr6gSn7z3aPx6e0MGC3k
	 Ry/GwJY98PFzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC70CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569179357.32108.1583882744456221762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d91281eca137ad33e847a93695cdb69742acc2139d1a912588800984a8aad6d
Date: Wed, 20 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755691793
