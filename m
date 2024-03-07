Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0B613B2BD
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709849296; cv=none; b=YeLDTCwdcPp6527EFbZe0wrOWceFvtKnXKGPkwlPyxML2mSQZz5DRqHJPiZPSM4WFkfiGXF2TspB5yWgWtwhbb5f6DN/7kTY8YUFwDyFcgIY9n8J6pbFiD+Y9HSvbNOHGcH6KjoBdzVKDhMVswsRMyc6O1bHRZZWnZ6VJgH3kFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709849296; c=relaxed/simple;
	bh=bf82oBJRkcm0fPuEwgn4aE4T9Hl27ARd/Ex5BN2u3io=;
	h=To:Subject:From:Message-Id:Date; b=nRWWavTYJOwzgAXpktv0uA2467quomID4xJJCazkoHJeoONcJsdKzOyuV3y5CpwSwpmp4K8A7JBtSLLGxmrJSfzuDaB7RcU2ZeJkdQjULtSvHRHsSoRuOd+mpG98aJ98YneHuSadvYcuk0Hpu2LKXFg+19qsECt08UvsKedIVv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJ3BgtL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ3BgtL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81D5FC433F1
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709849296;
	bh=bf82oBJRkcm0fPuEwgn4aE4T9Hl27ARd/Ex5BN2u3io=;
	h=To:Subject:From:Date:From;
	b=NJ3BgtL+SMLzTfakHp2S5uuVcqTBPYMou4QSJqOXT7MRlyqnii7nGA02ot8uXKfP6
	 hEo9i0xt90JqaOV6RtS3onIcekbTml5P1qZQpoVD0s/2zfewavy4e/W4rkOt/FGam0
	 /+i+XHQ5xSDBWkW62MkE4+8FeGTsUsHMjQz27vlaOroF/8tOJB+N4yBmFce0x371CO
	 05J+xVsKImY3qmw+Ns4o3qCGHZymY0Yp3gliZO4Ra4UHwCbiSgpEJ0P9zhNiAJdpVV
	 JZMK6IZntCdZ6uMaaY95Y4rsXSRm8C9jxueZAv6YqyXvSnU2ZJ6cwKxN9LZFM4bg/g
	 uboLxvPEtjmJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F447C54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170984929638.10203.8203835243427493961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae2da8b423d2e3abaaadcf6e3d09ef61113b9dbe41c5146f069747251585a571
Date: Thu, 07 Mar 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709849296
