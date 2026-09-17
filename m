Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604EB3D3001
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789677034; cv=none; b=e3nDNsRZMT4IuMqBTqbTALMgTI0djD9qVtNMpPKMFdB+Cp/UlNpPC/EzVSj9ybk8bBLCNyfJWcsjTKQcNMhDuz51ZcpW0dFuSQY+vDPxslcq6YtEdErF8N/maxx7KmwREr0tKB09fYwV8e2GKtJ3FbPum+varGeLClGjrWR/IeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789677034; c=relaxed/simple;
	bh=+gR74i/ycePOJAkJ9GyPcRsQXAX/qzXsAzZIbKvukI0=;
	h=To:Subject:From:Message-Id:Date; b=MeA5D4qXyMml8lAto+GugzSGl9KrUqlHy6l1Z/X4lwdr14JC6QyftuBt48bbursh+Ek4drWZz5DgWkcULChgheoJcGiSx2c0xkyenRskvrZKToLf2OpJBYHWchizXVwsG4vY8xV+KNuYyGcu0Cx389HI6rLuK2sBMTxNHqf5Yu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQvkqbaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQvkqbaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC5CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789677033;
	bh=+gR74i/ycePOJAkJ9GyPcRsQXAX/qzXsAzZIbKvukI0=;
	h=To:Subject:From:Date:From;
	b=eQvkqbaA7KBQW51t7KHp7DX9/4132V8C4907p1zANI+RNtnoF77CHX/lii60Q/1JT
	 EbZ6tpZuokzGABWFdWKrm2PsVpH12g7eOJXrPFXtdo/NV2WJ/Eb3yBGI4tnKlYaN19
	 wd59SyJqb/B29La7wDcdXqb5pCDAE7Y9nqevz3KWfyMotDt7mC8/Csos3ZW3wqE9kD
	 9AOxO2GrTrViXf+e1t2xUGcN9c9sytJvgXouEmqm6FBzHnXEJYv6X5iWLa8Ri7VcWp
	 2NHCS/lyo39zCuXxHq5YOCgl++S4kHWM1VnZVoFHkyB3eTgmgtCFEcXa7VS2trvpo8
	 5I/dyB+UwdoDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99A9C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967703374.14914.9326611275606178972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888011bc6c4be462a1ca06f27c9c4e9b88be69d04d5f0c943058668ae7381b69
Date: Thu, 17 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789677033
