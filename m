Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04AC88BFA
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706237297; cv=none; b=eBXbpVoHHH0EySUtO58lFXbWYcUeJT/dlhDPP3KhwWyncbPcdSbEtfxOrWEAEQ7G1sUCRNodlxBtibc2Tewmvc2oLMG5n3kAQwNMu4bOCzeO+AoQa18lGrc80cLwU1RoteLrhVwOF/qP0vnSHPfAgrxE9jvY9ERzAQYyIOKpDts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706237297; c=relaxed/simple;
	bh=8AGRO5OqLZdnxmieazxjkuigfbkEeF/9qfWnSMxYAZI=;
	h=To:Subject:From:Message-Id:Date; b=gLq3GuOA0h7jq6bFo7j+SJWAX1RNWCdSDTi6yq5Xm2+FYIK5vkTOVD4A0bMZvFUI1gCFY+FB/1H3RU8k+DLOKlW07gO4nv/Xpkg9LXntbExOiI1sl6flvoYnPdv4LZyleejoX6paCBBpMkBAV+YuibUQEO1785O1F2dymw5D9zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxoN+Q+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxoN+Q+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76EABC433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706237296;
	bh=8AGRO5OqLZdnxmieazxjkuigfbkEeF/9qfWnSMxYAZI=;
	h=To:Subject:From:Date:From;
	b=VxoN+Q+TOcEcUj577WGz5dtrCS9/GgbCer+900+fd8w3j8GhXq5ZSGzvSdAq/cFsr
	 a5ENjUEQwFyM5e05ovkySEcA5jZRPqnP38O6gE8NSd/TrhB1jHZYvbobSaPOIMQjYU
	 gSYffArqjqiscpP6ZYGVtG157IEg5Xrtqo+JzEecWdLScDver55vThru2AtjEgkamS
	 pgueJ9OiwG4gw6dIn+aZwBo8qPGSKfxY+LdOxi+D84wn791zxIRZtQu/ZU0qxboun7
	 ULvPlbPRbyRK8zwQBnhFzS1La3FboyBXq0429q/o9HE4hkBxyY+NLT82xwKcsbCwKv
	 tzu8IlU+afshg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BAFBC47258
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170623729636.15310.8170432746253163507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df6025b120a561fdf6b842d848a974d4ac38b3788ca18e40b438f8cebf2d936
Date: Fri, 26 Jan 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706237296
