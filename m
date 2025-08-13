Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1202D028F
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755115194; cv=none; b=oCzB4XdViPEFzx838vnZqKc+pS3z5/DGJFjAHaDYc05VJR/BIOlCGmvpPoSkdYNS3XCYCZwVdHlmpwSkBJjKwtkwNdJXlEzBkdoS1OeV3mr+LA9Gu2f7kthTdJebsVQEj+g4mW4OQUffHnlrJo6ztNfHll/5cMfFuc88e9Va4EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755115194; c=relaxed/simple;
	bh=LlL0hMJYZ8lcukjHXhEnN568y/SVMf39wSn8rciKpVM=;
	h=To:Subject:From:Message-Id:Date; b=FBdeMQc5Xts1pb+GVfp7a4aRgjE5atowS/fqhHmmy4+0ap8UiL2NkMKr6uE7MqA64TeDPJAmTZl/vnws16BXppfEo0BEYQCTl8jjLYOEutNe/48BTjP2uduriMv9QFExeOzlsu7pJzBf4Zg23YbLd2fE2YfYkP3HGDQ+2UnYFFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgQaYhwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgQaYhwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6459C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755115193;
	bh=LlL0hMJYZ8lcukjHXhEnN568y/SVMf39wSn8rciKpVM=;
	h=To:Subject:From:Date:From;
	b=fgQaYhwy0qPlQZr2dwbrXPP2og22KBWG5ZsupEIBmWrl7dKuA+el8hSs5vNkWcupS
	 /JVMOQRjHngQqi6d1Emn94TM1CezI7SoSL7utX7pDUwFZ2p9GQ6mJGyc6df/Z0/NNS
	 BGT8Nbgt6ii6j7TlQUqz6KxFNjja7QOxC2YrbKquxZ3+gKp/qE6SpEZO7pCLcHZbCL
	 5ymnmEMQ6leCpTPUbsj48YRnCkO2K5V+YQVnFhvUWKITRdsefQ75rkhGukenhe+9EJ
	 KnzQfn7WTtTCcoPK8Z2oRzbY+nMUZQKcJ7jArzpbe7o/eggaReyx4MCDBYz5KiyVFE
	 UzgiawTBItssA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92321CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511519358.20905.13048292351543095205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecac7bdfe50e43937396c748098931076e0d333f0fa7e75069607b1ac18a8b8c
Date: Wed, 13 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755115193
