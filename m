Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A99133DEDF
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790799634; cv=none; b=qCJmmd7jqP7lZtNxJUU2I83XMKWRLt0n+40mMaB3Tew9vDoh36R+wZYnIuZEnbEPCALzjB86BFh0c3reL9F5kCGb/v889rI7H5bygD2owjvfv3wctjy3NIETfYtB94LvHK3JtasEzYpn70h3DSIjXQBxTlsqloII5YxCN5cPrdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790799634; c=relaxed/simple;
	bh=JggEB6JRUOzahtfH2xsuSvLM5TZYxQuOJGPEBeaKP1U=;
	h=To:Subject:From:Message-Id:Date; b=pLOfe4RmPd9c8YSni1XCcv30XT5e4XaOoooFj96eleA9tyT1vc8QUHkbEcwBLxasPLd4FDiGxJUDSGqSYtPwpu8nhGNH9MHvFBXBJau5T4tdhr6ahokwaUqeg1/Xx67BF7rEOkAuyA/M5BN9fXNjZ9RzGVu+XOyK4RJe3w/pWtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHX2cjpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHX2cjpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA17C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790799633;
	bh=JggEB6JRUOzahtfH2xsuSvLM5TZYxQuOJGPEBeaKP1U=;
	h=To:Subject:From:Date:From;
	b=RHX2cjpu8DvtIEBDP0s4oi4tu7fosnDJCF2kBsk7FLmSdJFzfq885g3FeYGHCbJ+z
	 zsRkqQ/SgB1PoIEH62Wm5diwhDX5H0w9UqY2H3ttA3AHTtYhnKCXL6K2YZ0ZoYEDGj
	 tFOqX2T5tRNCwGuQXQuIUN7r1wFutfuMFaFoIKnBU5lJyLuNYI6iMmmFj49J/MmjKv
	 vFwr4+883pcnCFN0xobn/l2aWSPAMexxKfTlxJ84BQDUPWWeKx/IG537b8vzPyGUCX
	 P00DfpNyJd4MNF2cUaFEIDV7LytATsLoK89DKlb5tknJIrpxVLnU7rABQPpY0qelzT
	 YCNs7as66YxTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA82CCA5FC1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079963368.4441.12558960429482224392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4889e6ce90a01c8a7ecda9221614d8c09d9d2c421f39c176d1a6db0f36e23d56
Date: Wed, 30 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790799633
