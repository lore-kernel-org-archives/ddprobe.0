Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCB04685
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753417194; cv=none; b=MzCRQdkgyTLPUWrrL0hZR0bqjHGghvKLKj80Y0TsA59knIcm1fDZsOtPaMBRViL6297qXy2IJidm3NgFDLQWWO3sRbPptfynJVvGK3xGK6io/FfewqjDJ/IfphGDtQN9Gbg5xuT1jhfWWQE0T2ID06ygTs21eMWE5IPwQpAQuis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753417194; c=relaxed/simple;
	bh=ESbr72MEUz/gdKGzzxOv1uohYQ95mjedzU2amivt7Pw=;
	h=To:Subject:From:Message-Id:Date; b=np0Ez1UCok6x59XrJAakzoFqRT87cvlBDdm4SavDyLOaK0yEM4FCnHxhhQpVT854mMvl2FF4dNq1uhi4aSJaFQwQBNoSvobLBBFsuqLqDZwKD46yMmY/TK7vyZZmdWJn4tPXkvYfc5idcmAIhoRwhXI/dgcP50NM9bAFrpDrvdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJz70Qa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJz70Qa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AE5C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753417193;
	bh=ESbr72MEUz/gdKGzzxOv1uohYQ95mjedzU2amivt7Pw=;
	h=To:Subject:From:Date:From;
	b=iJz70Qa/XjdtIqDj2UhbkOw8+X006a6+ritfq4uZZ/YI5LQl8WKuPLGMsjTAwz3tu
	 Bq5UNUAcMftT2frABQWywN8QGdgwe+Yqw8Bf5E5zzwRcgE1D1IVDpCRDyt+Ig8xdr+
	 /0hjKAyZBp/GzQ+r3vZXpaHqIJU4XKH/7JFHbYZi0TlckPr68KXczJIFdKf0l1qDum
	 iavK+XhdrLB4zv0X5ag/HZ4120pJJkvJEgoQH0OCMfrl6h3RLmoRtJrr46CA5v3KjU
	 6KX3pMIyXyRfC7siQmsEwzSQ2hkzHZwDag2fdojJWSAtOtXTd4lOaRcHeOUMi1Q+zf
	 n7hfXYN+2NH/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BBDC83F27
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341719358.11409.6215204532389269855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee10568c711809b535e019833931d1cc1ed6d4a40e58dd2d1477374c60557da
Date: Fri, 25 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753417193
