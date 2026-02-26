Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2FD5FDA7
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772065494; cv=none; b=pg9OVr0MQN//EkN/FFbhw7Sep0eRd3rk+WOF4HFfbLIIvbx7Lr7s+h2WYQTH2tt11U6SVgd8S5PUtDLUr2KU0u22lhcrIlGbO+EY5boyZVtHRhHAv+aTH1SSbBpz04RIXdkr9mjU5FLmcDE4RvPEl4/hg29Hh5pToBT6ul+C7DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772065494; c=relaxed/simple;
	bh=gIM8/bRTyhLRS2jWjfd7NYNQZDMDAVCD3d/xujS56QI=;
	h=To:Subject:From:Message-Id:Date; b=V48Y/zo9xT8n+CxN1g8T92JyBjEgv9PG63AtmEcUCRTqa1OeMCwiU+lj7EY1k+npOHUAdH0hY6nGkomQ9Wyu2+w0HvJw5aQ/93ngYfJpJirnM2MuDJqM1usGuA/THCIQWervk6Q7eVF3EdOxsI0LSTaTq7U7vEggm+NrhWdaqtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETQQWmBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETQQWmBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BBCC116D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772065493;
	bh=gIM8/bRTyhLRS2jWjfd7NYNQZDMDAVCD3d/xujS56QI=;
	h=To:Subject:From:Date:From;
	b=ETQQWmBKnih03IIvnejugS3BLRKnaUq2esZSoAEuvq1RoZBKqPFNw1dQFk9r5gtIF
	 6XQZdMK6JO2eJ4kmWaag9fEEexjyolrdgv1527K+K1OXxmHkSm2MLt2DfgtZ+OLWDn
	 MoxLTuZx8n90Xrq8vdmdf/UZ9uccvTxDA6LFkWClc74MZtcQ0ZRbcKg5+YrNOhL5VP
	 9yxtT9JgCsy4MAzaNLUIOzWGBx3W9CykVUv6BVu/VC7gqJJzFsP0xdLT2EH5WU5/9F
	 CoICNTm2u/WSwtrMiqKHSpehz51iEaB3YTnPl2SGffsmlDBVQVxJ7xnmK9UqnPS5S3
	 ixpQqh/05fSVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C078FD45FC
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206549362.25275.16452643132132319402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa0f08ca15856ce296aa08f04b0ced6cfa22a1bb2fc1c994fb72dd539c880b9
Date: Thu, 26 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772065493
