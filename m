Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC2D8472
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745045994; cv=none; b=R4v2fkY84hLaS30AfOA0y2tcq0rBZ2aPvrj6UVurWCzdvsbMtFtAcQBsYQvMwyzYVxr0c8cIfhQ3Gf87jvsKPV0feSufLx2IC+6WLRqYbcz37F8EyooI+tgGRjPUicqluq4tlkWjm8ch9qauzm7z0/nMJSyeHOn0aGnmS6sYps0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745045994; c=relaxed/simple;
	bh=Dz59OgFIselYXWuc1g63fbV2fL2q6soKBDvvj6cgZ7U=;
	h=To:Subject:From:Message-Id:Date; b=STNBrJCCWsU7QfcqIZhtXNQj4GzR7VSGWI3cE9cb1yPnmEIc7HWtkd1yKjuX6jg8meMbwGpoRIF1ZS3gJiq8OqBkGOCjQss/fmyaOLktsedn1eI5b9jTUxgkCApbMBS/lHgcM5bX9awx0HwWAaDfdA0rd4QjeFcHwfXKVWnvcQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GU7pg6xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GU7pg6xp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5497C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745045993;
	bh=Dz59OgFIselYXWuc1g63fbV2fL2q6soKBDvvj6cgZ7U=;
	h=To:Subject:From:Date:From;
	b=GU7pg6xpVEl9LB70DTX7D4+pUSOKDOalT/NW8TuOAJcRS7tSL28FHRt4o3wLsfMPZ
	 B4LWjozw52q1cTcTLCPUf7Vra5jTaYMeTnK3nN6X4NL3IydZUS9q0CCtB9bv7s18KF
	 o+hwJvD+cKGMRYTLq/2PZ50sPYcer75Mc/kk0f4Tn+qx87oTjFZRjqYNOiMC1UWiXC
	 n5MlA/JLDg6QtZj84tcMrzZfoP8y0JPM1U3cO4fwV0J3KI4CHxV1XNEwOeiBsDRt6v
	 aCxJOEHfHcAffxulU8W7heW/jvWsd9vJ5bGoLRlkyUJkDSx544o6t3Us3MgczTvsDU
	 kblVLtWToZ3XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B191C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504599358.28746.17135865747673635507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19bf9ae99928cf09754a5df5748865fc6828f598049d5a00db7710096690e0c3
Date: Sat, 19 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745045993
