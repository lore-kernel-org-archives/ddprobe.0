Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1A42475CF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775873254; cv=none; b=s1Uy6uyYLi8valklu0am/EvKIhKa71C1YbdpnqAQpbxNjeg2Gmne+A0GDIUP/NUFpMG4+dQLRUfPEXTlWMwqpLN9ypeTFxMFJyzojbWBoqdiDSzT4DM1AEKdnnhDZH7x+qypu8kAijAs4XjxCdBg7A6hcOKs4D0pNApGcMoStzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775873254; c=relaxed/simple;
	bh=ax87oD/SUUO5seRV9xmcKaeH0CiOnnOlEDkbJgxXet0=;
	h=To:Subject:From:Message-Id:Date; b=Am/RKgNkyx5AH4h8NzI0+O1FUnDeYfMScNxbwk0PcHvVXMUcUOOqlEFBhUnnVf1UvrZTTa/Mv3xok7oNnJ/GK8dncyt2L31/6jtHIWtJ1B6b7jsONV5++axhYmvTziuDe4Q6pmSrrvkpKdQyaISTBwYtnHXEjPGG/dH+1kn3UCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdzHm2oj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdzHm2oj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0446C2BC87
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775873253;
	bh=ax87oD/SUUO5seRV9xmcKaeH0CiOnnOlEDkbJgxXet0=;
	h=To:Subject:From:Date:From;
	b=hdzHm2ojTG37kIAbSopCGUx563Izfwsyy6DmdHayWAKHOiBMkqHot2u1OcssfoGnX
	 qqM+h1k4zJTZwybpZJ8qI1F+mvkJ24HqPU1Dex1/JC8goefIqlf49EJ8zx+ToDQPOl
	 OnJfrPtZhbc8Io0I87hUStfd/5nn64dvKK/Xs+MQOrXffP1jduWsGF6YYlqY5VTYL1
	 wO7YyHDTz6I3VRkHUlXT9qUhXcIGRvlJRMImZSmUign4nOa9b/tQaJzAnLutZOtf3w
	 HWBfgb835kSX76q5ujLFBPPj4wAn4TywOug0ZgLd+JlmCaBLkk2jrZNcyVEEzOVRnu
	 Mi4a6Ui7T/fNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD4EF45A12
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587325368.21574.808664942837152203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc3c6045c43231537679568f73ab0fed80ff137786b3d3acb3b0b7b04502c84
Date: Sat, 11 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775873253
