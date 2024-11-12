Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250745234
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731393354; cv=none; b=cxkieJRNSrjmt4mUmW7xebNybT+CprUOp4tKf7r3DKxDhS/xuyRJQwdIHIvSSVLPmxuG4VxceoNniCy5+bB/D2E2Gi972d5QtujFOQGvQlwMqXHUccwatW8UMj/K9Y8MibqEzcZt/rN1N6bNTbFGCPN6hjP2jpI/YCd4A+kbG1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731393354; c=relaxed/simple;
	bh=gYuWncZO9qrQYty/X1ZFWnXeYlIUVeMISS5O3F0QvkY=;
	h=To:Subject:From:Message-Id:Date; b=CzSvqo9fO4PNuKZ+vbaptH1MeyQrzSSxMX0nmXDpA/dYBMjWS87gYRJ6vSpxKC+gBCL8DrLWA88wBFP8x05LB2nj96/cUca5e7dqcnR2QosHTQmHYurQFNMcopF4iSjowD5L2zcxDrGhc6mqJzeb8Ic96RF1ZuxsFy+1M0oKsF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbPuKV+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbPuKV+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97C7C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731393353;
	bh=gYuWncZO9qrQYty/X1ZFWnXeYlIUVeMISS5O3F0QvkY=;
	h=To:Subject:From:Date:From;
	b=NbPuKV+7ReYrD+13/KFtU1nb8nfJFRrzBG0ydANSW/kPIAT944/PBjn4zjQGWENT7
	 wA6ZsxW4Ri4OLICaiB2DMXN0MqDloYS0ZQ7BGrdzWKLtTcYAayYoMKvl1xwJrmymEs
	 spEHjLWsYXKNCA12iRPgYjCu4Nu4OdnwwSat/OfzU06WjcZK1Anik1Z1yUSXlk0xgV
	 9Natss2g0F6XQdpSnRDHwk4YL9SEeMIWdej0/TtobifJIBD0+GIyFitZB5f1IfXe7t
	 MflU1q0LwsHw8L6Hh80dPQF/kVxhjT+ZEB5ttmN6AWqmktWcB0wrRIh2gPJ3WshDcS
	 McJB2dsx71Vdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C19D41D5D
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173139335364.9282.9528746111206545741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fbb3905ddc51576767e5cf2517f3d6006eff852c22c813e5efa0b5859169c55
Date: Tue, 12 Nov 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731393353
