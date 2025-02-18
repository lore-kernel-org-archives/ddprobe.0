Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4308F26AA94
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 15:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739893134; cv=none; b=MO2Dj6Psvv1YXq86FOMEHlCMcJ3YRPHKUkY9n2pSiSVLGJizN8XO3c/McA2WKHcVPZbtd739TQ7zMDo1S6OHyDDnsXptZx16qNOisCjalyvF2u1N9OU0anraSfYsheo4ZcApRgXnMDgZ9vUoi6icjme/fxKms1qlJw5LlrcGDPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739893134; c=relaxed/simple;
	bh=wDvZXq6RXthoflifTp+uNZ5KeK2xccSSDRrNpXnCBtw=;
	h=To:Subject:From:Message-Id:Date; b=V3EP/LOaclCsUmGHmG2L23DcFMronGkSu6U6UMbug3D8CJ7/laaub5OOUZIMYu1j/mJdRw9k1q0xt2mPI0S7lJO3ynU50OEP9E4TIfcTBYXY+jtSIn5CvhVs2mUNNtGrtq4mI3t8pRgRtPFJ8bt2Hal+aPzRlFxG6WdnjlCus4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+rMLD+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+rMLD+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEF6C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 15:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739893133;
	bh=wDvZXq6RXthoflifTp+uNZ5KeK2xccSSDRrNpXnCBtw=;
	h=To:Subject:From:Date:From;
	b=D+rMLD+e1343OiLJmwf/Eal95BD8tWHTA9KLVecgvLQvGW6blQ07Z7nCq44J70SoJ
	 DSssbsjempTcTNUcjnnx6/afZcCbLa+DsGRcje4Rzfitanei7IUz80xVw1IJplsrjL
	 z8zJ9+dCtxtPJR4pRM0XMp9eeday2URum3n5CYHBDtMuYZ/0CdYUf3AB4Z0/sTbQ8I
	 47na6u7sWWGkCW8KHLVd7vWjYvQvF3Bu3FCYRvkJFvU2ayjqnV2taLFQ9br3UFf7Ps
	 egD45qV9jhTd6ro+p+ZxST9zfLNWX/KJ1yJP+feN5tPcSqgZlAFlLzDidm0tbb6C/W
	 e3x/9kNGYGXLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A849EC02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 15:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173989313367.2475.17500912533312856354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a886b49d3d79b662cb66a6ea47a072e6ea607b5561d996b3740d609c8e4cf306
Date: Tue, 18 Feb 2025 15:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739893133
