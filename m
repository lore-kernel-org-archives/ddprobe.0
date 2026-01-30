Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F151C3806A2
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769798034; cv=none; b=PQrQQHVsM4CTLEH9KA7+U0UOL921GwLXOCjUQ+q0BghcWfQXqwv5NADnNml6w7SO6bdi7kvnOLCpwJfQzjrXSwBnL5cHmtdMChmY94zDSAZT1Mpr/fGW8ZQAXNQ7bbQO24RH9dMmq7icEux6U6h+sQ5uNZNjc6i7GtwibAw6WNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769798034; c=relaxed/simple;
	bh=pLMRpitYWC7BrtFSnlSjVe5nrAlveyOjRO21meLY6/I=;
	h=To:Subject:From:Message-Id:Date; b=SHavlYfTCrmtcFq1lScvx7fCIBCpAHMw+PJ1I+v2Rm4vHZu5sTAr1FBvuo7YAHPBVr8rXTbroxhCNWseuYCKWkOSgb1ZvqvkNqwA4HXvpMW9FP8j1fFA9wOn0ZgifyaWKuUnTn47TqItfWbUFhtalIJxQNNwkqKwMwDqvBG9yVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dm+4u1Xf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dm+4u1Xf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69A5C116D0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769798033;
	bh=pLMRpitYWC7BrtFSnlSjVe5nrAlveyOjRO21meLY6/I=;
	h=To:Subject:From:Date:From;
	b=dm+4u1XfzsGXXL2YIaB4B8+KtKv00r12XcUCuTZNYHKFLRbk8WP9R5T0HC7Py9x/l
	 G1SqnOrVXW49s0ewXBDWK7IqFlewK3Md64hMXfbXlUE/+eDTUwqOnylp5h5gyRLvks
	 8C/HjFtQ3xhtoh/WorTAsaAWba4U9eZtWMBvYNHph1J3CnARxWjqTO2n/Ea14mH3gV
	 9bPWFUI4jlUhMKWQRggC9f5CFT/BUgyyaLmnzbbBnDa7h5x30Mte2aTkhGNiydhOFY
	 9IKlI5KQGYEK+5JlNsuHYRz8sHNVV9fEaM214Js48asYQ5WAYSrgR/A780SuUXLivl
	 tQJcidfs2S3Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F39E6BF30
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979803358.9443.10505872215831204833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f6b2e13d2002a4f29feabf66782d5d0c27f9ec6dd9e1de130cb0e1636e514b
Date: Fri, 30 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769798033
