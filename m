Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF9323EAB7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769614433; cv=none; b=kPyDjrtnKrXvwMCiUuSIDP6X0by1QcO8flhucTcnIE5NQNxj4VhPaaEmN1uprn9OJM73i/Qi7tm9jVX74TvrH2v08bjgivwSyuHdFtY8G9Fd9wUg49/ORtZ3XMUnerabEnbxG+n7CWOMG1Sy4qNKoGJ7dvjGMEZGSrDKqldLgpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769614433; c=relaxed/simple;
	bh=dOOK9A0dZUS6f2iMPuRkXYrhZJkmRIv0smfbmibNGvA=;
	h=To:Subject:From:Message-Id:Date; b=PrELAOsHP+iL2zRpfnt1qyJDw7BRPN1lQG2Pw3bKtHGYqvoNeKVApIRuSn9MNjMR71+byjUpo+W+8pm5xOnTTBY2Nbcqh+krvJNtlAv9/Y0eSAP5Zk+Epzn7zXK/uQa4XhX0yjdp651w9eXPAiLFEZnKaC97SA8G/R2D/hTEyi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayub0LlE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayub0LlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF2DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769614433;
	bh=dOOK9A0dZUS6f2iMPuRkXYrhZJkmRIv0smfbmibNGvA=;
	h=To:Subject:From:Date:From;
	b=ayub0LlEkVse6QCmougGY40ZEwC0S/j1EzoYF/A/97wIADGjt7XLLDzl0ZONTj5Lo
	 gptmXfasYZauHq0paD7lCynMQGJhkfK4Ondj5w1xNxvoa7knwyjvv+2qxHYBrpsIEz
	 pIUjqQJQv+MUcP6XJnblfqWxvU2qiW/iTSFWJ11LMnkndFnE70Gi34WUYX50XdVogd
	 L16vyAUqRTJGQjZdgssWJc6YfomtX5+2WNRMMiHcCPGNC2TWDCR+jlUzuMB06gzrfE
	 OX6qcKHc7bq+FmB2JzqMYz1tRvU7RCdeHtQXAqhXV+jYi1eCrJvdhBflOtQInjxaCx
	 KUXTV4YZcc6kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E2BD3F080
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961443358.29159.3399957723862278222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8401cd6955b61e86b6186a4e4d8a0fffa4f79fa9277fb6b76e373ef846ee3f
Date: Wed, 28 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769614433
