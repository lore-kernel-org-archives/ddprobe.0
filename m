Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3D04ADD9B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778087257; cv=none; b=G3JlkTe2t2MyHzPaie2kqZS4y96GyClToWs4EuLch/6oAk417Or+NcmLTsOLCM/xcXbwPnbhHBlMdODPIwX4SezLEcLL6ixtWOsqfMEmdEuP8a817pmQm3hWu6ZasovHU3ymteptcHFUAeXO10+tcLpF7yi8MNmrsBcYR6rUsNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778087257; c=relaxed/simple;
	bh=WXBuXZEAPXuW+4JOKl7kYwJkKXrdZCGIP1feaKhvIkE=;
	h=To:Subject:From:Message-Id:Date; b=neLLHJnFRHjrrGZJzsMLrVR11nUTCGgWsgs8LBJmbabVBtB4WO7ijr5ALeF0dFk/vaxD4ouXc9F57aB1vWTqFrTeWYqSpZ4YTxd/v8TXSBL2Y0axkJNGwK03v2B1G7YYKKaJDWM1T0w37aQGHEhaBvf9MdibQiPsesJZWf1OMVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdeDkQX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdeDkQX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D8DC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778087253;
	bh=WXBuXZEAPXuW+4JOKl7kYwJkKXrdZCGIP1feaKhvIkE=;
	h=To:Subject:From:Date:From;
	b=OdeDkQX6y8IT3iFQ0EJW1mpy1zhfeZ+gF0B8bQWwDbiUsonGLKmrJfTWFCCCKIlc9
	 RabErc2cAnFxQ3sekUWZMspim1aH5qD/PcKS5r60ckuW+0R6/e90ZPKjNWUJrdvg+j
	 5t1hOdPow9Bxg3k6I6pR8XUp8a/TZ6mUq5SM5bw08ERTTPZ4Hw8cmEeCBrJ1DV5kOB
	 A9fYTCvsIIguiABGOS+X/EbyYhSHNZq9FMYuJFl94ytIe94bct+aDPCzxqjdwGtKY/
	 bGrT4IUrhBgH2WPLS+yDK/sgpnTGFAbkBNtPDExz6TxJtZIvqaiKLr8NqtryLaWXZf
	 ZlTkSxMlZQpIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD38ECD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808725370.25829.584695858960454524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8534335f3aec9b8a59b2dbe703fe7170fb488c0886c7a6457afeea2fd0054940
Date: Wed, 06 May 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778087253
