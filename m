Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2441770809
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759071594; cv=none; b=Lgzcl/ijX+plioyhzeknBfyh8Ld825yPGMHKlf8RohKJLB3T1A6PUAOWfJnhsynyzeUYqXWR8Qf1HxztPWyA9TdNjaN/QiOAAy2O8r6qPssUZYesGkdE6lRs/g0feWCpgcJJ857G9vltPAbGJ8rykVHd02sicmgPy0vmljyltUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759071594; c=relaxed/simple;
	bh=Z0Kp2U8O+DFlJ7o9f2+i+GKL22QaA7fzXAcAbaXQpQY=;
	h=To:Subject:From:Message-Id:Date; b=coluGYEOj1rECHUOCK3Jg8sgXZIEKlznYLexh7t1nssyAty429h8MRdqc9hwWnCq/1xwAavx+WLUE34NKY03DiDQ7oMrsCaQQdQ9qI7U/lpFYn76cftrEG8DYWMIsw2P8C1dOu0VoD/saU3LJBCO9kI12LI+CXouhWaK0UwQMbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBDLtW1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBDLtW1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3226C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759071593;
	bh=Z0Kp2U8O+DFlJ7o9f2+i+GKL22QaA7fzXAcAbaXQpQY=;
	h=To:Subject:From:Date:From;
	b=BBDLtW1yNSIIjUbmqXy9cuWXgV9943470lJ+fzV9XTPYPrz9SbHpiPrntYyEDzjny
	 t18LYQbcagZ3w56/bQ8CEyORpoB7Fcoy4Tth/QX+4RwsyYF43rzr5njVeNDbnr+N9L
	 /5mfK25ETw2d20x+30QJgxJPPSRksUrXdqWKlLvbUYKd++lLHwiymbpjDCCU3f+2x1
	 i6EpJRmeyX+y3iVpQ2t1Fgt6o17A1C+CTgpWqlzH5Dto5mIMocOxq5UEWRvHzy2V1h
	 5vcAbXVAd7DI6VWsfz1Rc7qjBC/T+yyabsjnMgvr1MwxLW8LrpooUu5t7R6AXrASdc
	 yWVQbh/cQtvrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F828CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907159357.25035.2754037407504677702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc3589b45b86cd5e7085f8a0576e805789e6c955b7c1bad2603a2642025022d
Date: Sun, 28 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759071593
