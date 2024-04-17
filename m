Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F101E888
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 03:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713326363; cv=none; b=ti2NxqSmLu7ijSxGCWmOYgB+pcNZv3zetPKrVwgQpd4fX0jZCrOQcAQ7crNtmsmkwYEqRm824vbH9qCeKSMsB+bk6jYzMVubG7QaQz7f0wPY/nDxAQwLSStnbClJeICjPL+vgTv+TZwYszvyNGKBL7L+H6f2ngEOV+AuG1ZOuV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713326363; c=relaxed/simple;
	bh=ooC8FGzawxLnpYah7NcaKuqbq//41123jfAU8Mzh1mQ=;
	h=To:Subject:From:Message-Id:Date; b=Jul/SWAkUYI5IAo6h15Tbj2LhOpqopv9d6eQpXwlE5QsPSJNGEZlc4YFxxuAR55xrmac96QqHFjAUnpHicl4Vx8/CBJy1JYMkpLxQ2WW8n0tVgt6QN2qhXl6dPCyp/nSrhWcPTa0n2pFqaaHokM8jG1qlGXN8xyn/Xiw/sy+5Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TS60EnCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TS60EnCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62F0C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 03:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713326362;
	bh=ooC8FGzawxLnpYah7NcaKuqbq//41123jfAU8Mzh1mQ=;
	h=To:Subject:From:Date:From;
	b=TS60EnCwbh/d1ozKbbVlDXh+rYIXzBh36zGcZbjoD3hrdfZ3yFp+QcTCHptNMIBc2
	 iBqG38KHt4ndGh184J/2en4Mbafwdpx5HjUr4UdASEYa02GogAvgPClezcOObs1G6o
	 b8ujHd0Y+1OO4gWCJL9IvDzNIHo7NK9PKByz+7Pj1SuHWKrlDkApQMtDvplDxX8Aq0
	 1HbnoAOxvZKTIwPhCzoH3mtsoNB5zNy0Gqb9p9bHv5ByihVL2ZAdUAsZ+EtCVGO+5m
	 Y+XNBTJecrYR5MfDe6g0tf5vK81E733d5u1RvEKUGyzLEksG38bQGFT35C5ggKVB8m
	 4re71Z02N7nFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36E9C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 03:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171332636276.381.14178258102652587891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 612767bcfd83cb87cf55d890fa401bf638bb5a2c3d594ad7f5e9fbd11fa41b80
Date: Wed, 17 Apr 2024 03:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713326362
