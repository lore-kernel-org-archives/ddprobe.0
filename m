Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075CB2E413
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767981234; cv=none; b=mJHf/wMsqXOPe//fpobkmcji9jtSvgDK8dPOs/9b/3Q4bGMNEARNlcDQVGWoJcRGpUR7DpRAHc4LOGQlO9zIVnPKgI71lKuL23QZlRi0gvHkcHNGZIRNsNKyQ1mWrVCgIXdTfzI36wMRedzoqi4AxKYpr/zrDe7x+mvwgLKfHf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767981234; c=relaxed/simple;
	bh=h79TldS03rdmkEcTcLZ/BSN5PdkHt737t8I9AERtB1o=;
	h=To:Subject:From:Message-Id:Date; b=YMzGeQNIYupKjT2u6q99/u8ih0uuVA/n9RZPUCDf2TBtHsBoPPHZB8uGgkgX1MsktB1XjMVw1IhlF44jmBxxzSP2p7TBZKsKdDjqYt8FUdcWA8IM7/Bk/6sF/3CqXhdUcpWnYz18utRSqJszfIsVrQn4UhxlNaAOJ9pziVcbQgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyjByKcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyjByKcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A370AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767981233;
	bh=h79TldS03rdmkEcTcLZ/BSN5PdkHt737t8I9AERtB1o=;
	h=To:Subject:From:Date:From;
	b=dyjByKcSFWtsCbuU+rXoBaUAXms+Uz2r9v1Gw7yJwXhxpMEuKQ18zhXdksy2+VMip
	 pvLT0h1FYYFipc92v29ychhlpGstqHxLBl19Dohd93+MJ8TQLQtmnYEXrBwqmISLyN
	 /JkEeLzGsYCDsZqm67dnFO/ISc1n7scop87u3P0kDSa7tOKCKihFU//Gu+8PW2Xn0l
	 sES+jYdtF0Y8tzc8mGcU82ERwlNPR+nRNYCWAEWhZotD7Ts7Q1ilx5kzLbVGsECCH2
	 aJbn9/AhTMiT59NwYykZBvBQSc4byYgxilg72VvinrBi/nyN3ipkwNlM+bAf5Z8Sc0
	 yHTjNDaCO6mGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C2DD26D7D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798123358.11148.4955192182532057158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2868eff0816f0834f38f739a95983b26bd373edd81ecf8095d39a1c877d94e8
Date: Fri, 09 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767981233
