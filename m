Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE0525779
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722771954; cv=none; b=UD0BTAg6d0E0KT84oKzlKiEgDCR2i8XVwk+LNSECl1+h120A+SydmtMtIq/Xb2T3Gdox3hif94Fy/5ktreuTXDynqQgfnEU78I13dNbQ7VL+D3VNhJV3l/r0DFno2hwayPtsNe9s4xd1nJgOvr65mkgU6m2RTSQsiTm3uZv1Z1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722771954; c=relaxed/simple;
	bh=cKjpApjsiUIP/bBQ7q74d2L1FVfpov5FHJmQt8U9wv8=;
	h=To:Subject:From:Message-Id:Date; b=Ew2yZ7yEHqexu7I7caA0gKLSdNSOIlm5ueBvzBvhneFq39ehDPmcm0Fngaopm3cWYpo/aLnPv2LK+a0DaMpEw7uTbafmnn/tC/PCjKDWJUtToSXX2fVs1R4bTRaBgqGK/6mzaRK3SPOe1fVGhn1JL+LyDjrxZg/yNRYdmlsiViA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tP9GBDYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tP9GBDYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B033FC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722771953;
	bh=cKjpApjsiUIP/bBQ7q74d2L1FVfpov5FHJmQt8U9wv8=;
	h=To:Subject:From:Date:From;
	b=tP9GBDYgolwxeP0GshbsonW2PpMriWPltiso6ef18LmPFyyXeudSFSHlipSvGDvx8
	 tPFQbs4YvQI8LXLp5zsF61lO5TKOy4TWSzDnQ3scGeKIkN6DbOzyM6fT6/La63sW9a
	 cJAbZCK5eQRpFxlL7/uhF6HB6KIkeg4zT41DwvfGxgaU81ycPnm0qw92OQF98hKJd1
	 GHBGW2mxQ/tyhixctKGnMk/fxSopyTt/vtSPlhDoeXbS/e8q4xC6qR7lZc1S9Ef6lF
	 1dAfu5ASEryv5lwETlm2Dmv/w57YSTow7msOye0lcNk+RvfxBDqNudTq8MtzjM/gwm
	 wRS/rcvDjPAQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDFDC3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172277195361.25377.7508508800443849980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36b5ff55b16f35c40b83d7ccc1c289398b2af0f0f91fcca033ac5de74199e48
Date: Sun, 04 Aug 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722771953
