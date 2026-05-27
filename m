Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F08A3C1F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779874354; cv=none; b=dBwboAmmRbPOHvTNsfwxHAlUsX8EwseCPsQBE0Iay52cCSIOJ7NgcdNtSqMtRzuCfQyJbW3fezZz6mI8AYoeYhSEh2Vu6U+SQ6GzAFtz9T9Wq4ANPBT4g1saGB8s+/CmmPfOs0/wOITgNR0W/g5Z+O+1tqwp9nTcfwZVIOZN+hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779874354; c=relaxed/simple;
	bh=9etUSx03admbWMyv7GfmoE9H32sngBRKEK5s3mnmoPM=;
	h=To:Subject:From:Message-Id:Date; b=bTaOkLybxDakqMckpDZL9nW2nXVL8CUrzNjp8mct2OxvPRrWRSvCx47PolrzlP7YXzAlRR6kMS3kVPHEGjMCBNiYML3SE1PWSm5NJff1dT7vbqAHeHFcxAuGiqmEpTeMv58Hj1fe4fKxEJDVf+8smTF9VhuppzOcf2Q0H666i2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KllXuzlv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KllXuzlv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF6DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779874353;
	bh=9etUSx03admbWMyv7GfmoE9H32sngBRKEK5s3mnmoPM=;
	h=To:Subject:From:Date:From;
	b=KllXuzlv7z40jc8iOq4nB0gdKGmISoD+HVM2nIurfxNaFAJTAnYzdYmKE0RFUFs7A
	 6O+8D3ZJghED7fkQjx3wo2Cx/0qlsl1QhvMmFbYIse67Ghbzsxtn3DJvxSsUdNjYuU
	 /QOE5PIQGstXtnGC6INp7QbevoYA+zGCMLvrpymAbY9XUZ/N465Sfng5cYkpPMgick
	 118AYwHlb09eHbEo0mNnufuCAeR+fIeQMozwYMFFNxvFPjdow2TZk0OPcpNwu51YFQ
	 gFYrgqrOE0o0jzZy2cyhTMpUStdtIb2etHZDiMl5PmkrMUGnYa1LPAnZAQU4kpgskO
	 +g/iRJKGyHzHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CD6CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987435367.18294.14344665845315318410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22fae5bfaae34022b8278ab50d8055b5c2d110d9230299cac71bdf5e2c5ef4f3
Date: Wed, 27 May 2026 09:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779874353
