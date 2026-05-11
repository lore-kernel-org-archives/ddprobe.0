Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B823B9DA5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778494234; cv=none; b=P1dTI+gDAiIoGVALteaBr0QUHjnsSwEeopnJPPQM/+mi0QJOopk7JU+B6sM7+cAy3nW2kQNNQmADnbZhYoeVmnt+Lmm6980/kg3F6qactM01+yjz/mC5eGMKoxajnnlyOvIXcHSMRLsonJSTEvG4ubV/ApzLIzYAoZlDAL5XWYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778494234; c=relaxed/simple;
	bh=C6PpQrXWTB7jGZVF+510ojrK1VUoHRtl0CKUlJ2poDk=;
	h=To:Subject:From:Message-Id:Date; b=fWlQz6wRv6WmyYsjVcGZkj35OwNJ4WsWJWuAviDiimot3Zv7COEvZHEQjgmfbqIBUkFZSzG1mdi3fARIIgHOfK7gVaJQPfdlSnNs14wfFnci/qNIlfjoyNma+08D/F91R0rDNwe8ARMRF664dswxUS7COjyjZcZJwgHN1nlLL08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P47hUMxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P47hUMxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51C5C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778494233;
	bh=C6PpQrXWTB7jGZVF+510ojrK1VUoHRtl0CKUlJ2poDk=;
	h=To:Subject:From:Date:From;
	b=P47hUMxLJvFWC5HJRIYkp15bgAsENd0Zqn+v0zXE/SGyYqhQKx5U1xNtvs9Il9S17
	 KN9V247Krs+JKx8tri7Fu4RuOYJ7EHpBs8lmfRwRDNeDNJ7S6SVGuJwDPWruPqHjIj
	 UhvKpkaIX4i/eJHvwdBwQg5pS+/r6DuJEfTq2RsNtxJ7Cp70V6pHxySXq2zNjKLDou
	 iGn4kBhG7ESlXshHqd8IwcVPr+rSvmevXd4ve2k2e2ugdAIQfpkrXjskkUERWCQIIV
	 /9soBApjbElSt4nnRpZW+EhE8BeyzobXEQqTLkbsLN5aJGhdIsd3IMnOh9rloLid6o
	 mVI0ByxrqJ+mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4739CD4843
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849423372.8014.6164882371476710624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f117b5e77e6afdb824083668883d98271307afec6b276e27f0d473f7b563bd6
Date: Mon, 11 May 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778494233
