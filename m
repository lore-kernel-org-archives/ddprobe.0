Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F3B23E33D
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777004254; cv=none; b=kg5uK9TITvkX52tg44Abicm2EBzALvPPlFMFx+qh6FBG/3av0TjWNbuE/A2d5RLfuNRB2hqGHFZcTDBhNEhphHlpQpPJ4hIGPRW4+LR5CMVOAFPtd0HmvDP6rxqCv07pWvBtlu1S70iTnBAcIHpXGIcvCCeieMr++cSag1Oflos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777004254; c=relaxed/simple;
	bh=HK6CavyZ8rput9RQV7N3AMT171Fn/98ezuROSSDo68g=;
	h=To:Subject:From:Message-Id:Date; b=RcRJFdZt7/ucEAJQmXkrxPnq0K2dUnM2GNCbOwDNTZ7daCn1qg8E2y80UwWTp5CGM1S3yQnYQnsFjNW2pwdyhca5nId+2V7K3UmuqUzuK8UEI8TuD3sMyv90lSwbmZHxaAmPsByCpqLikybD4rj7yDqfxUxVRW6effHWP2t4kRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hj7PVLgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hj7PVLgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7955C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777004253;
	bh=HK6CavyZ8rput9RQV7N3AMT171Fn/98ezuROSSDo68g=;
	h=To:Subject:From:Date:From;
	b=hj7PVLgUMrIk2AfS8Pk/Rsfh+ad9c6XV/UbRQS15VBtXHylYmTwHeYA1LxusYwL4L
	 Ib/8dBE4JktCDzBN7lQM2VIpGXMfVdTL/qEOgXXf6oPYplkFw7p3Py9cvnnQCk8LqF
	 92tuAkHM2rWk5/wYuQOp/n6Yz6q03MB+3sg4mIZH94SlPSgTTM3+rOwdsIhzwFqor3
	 lEk2upgnrZdTWxvGC57etvPRF13/7kv88E9gvC+cuuguGTimQnscrZcn3Ps5JMJVjo
	 bCm9HV/jftq62trdYbrsqJuGJe7eu4g3V+24XemL+/1LEhcY+qNkeA1AREclc9l5S1
	 WEK/62tj9wYVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BF7FB44A0
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700425368.16559.15238069596872124213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db339f78fe6c80be166b65fd6606bf1442c662f5b61f53762868cf772b8a4104
Date: Fri, 24 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777004253
