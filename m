Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271062E88B5
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755848394; cv=none; b=BCk5al0RTuiTd3Gd2icnG4gPo1vgBvrc13c9jq/SqIeoyJht1B3Na0a3q6HZ1NNPuh0xxTe0ZuPdxAPcjVkDDQXfLdcu34pWS7W3d7cAaTqw49wN3hwITHCLt8EHfqGK4WcIahWwrg9pK41nnhQabyPOSfoDwpBjKAaBdzFyz7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755848394; c=relaxed/simple;
	bh=2ziu/AuN9f9tML2+PUOia8aDsNdHaRdmtugpQbNAKHs=;
	h=To:Subject:From:Message-Id:Date; b=MZQ6Tx7Uv1OGkXA0p0zhFnXXCEdIEYiCJOFFUvZiAOs6qVJAcBplZeFbI+pGWhCyus6SsrG4UBpa5eTDhr2kwhx8yhFrGegJsXAxsW32pVl6HDJ+QDZ9vLMBopYvbkAVtxII0mzUzz2FAeT2X8VKkh7tRAdTIAyx/sSpmfxpdH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gF4gMjEm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gF4gMjEm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BA6C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755848393;
	bh=2ziu/AuN9f9tML2+PUOia8aDsNdHaRdmtugpQbNAKHs=;
	h=To:Subject:From:Date:From;
	b=gF4gMjEm2wJKxZfYo47D5ffmesofufXA2E1GGx/72uEEUsP15uI4qiDRWbhYHuBfL
	 K1VwxzQU82m46xUqJHUJqSTVkN9Li6WdJpE19Q2WDl9L2qSX3CmhqSqKWtyB9rBWT6
	 MES5wMU+vZnIbDR8Rhwpcgpqb5ztpJCI6NK1uqAqTzuSXb7Sp+EPU4Z++PticC8aGE
	 GwPmJUnPN0K51YeC1D6AKJKRRWJhTkuKJIXcHCMHVx3Bpad8zGQIHU+ffmOwKP2AKb
	 Q3Qk6jdf3ZT6gD226KS4GTThafl6cwkzMGn+MqqoVjtB1lh6kCQ9BR36P/FVTAZ9qI
	 cppS010lFYAvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F60DCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584839357.5265.12125191983194152428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a37ee3e2a08e480e48d655bbbee6d491852b3a19d4ce38d3286494cbbbf5be
Date: Fri, 22 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755848393
