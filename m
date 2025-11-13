Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347513009F1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763015994; cv=none; b=EskbMO/8pnwlFQelSezLX+lC6dYiaCbeJ7LMqdIIjOx4rUzOl2gjxNJlVCnhu/buQP/T3zpEMdqQttiiBrUTZ2wd+N2BTICrrK+zPGBVTlQv3cblumFBJknya/JNdQxrGXfCPWI9Am5dl+DlphzCSYLQfvUNWkco/jhBiDPB2E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763015994; c=relaxed/simple;
	bh=4MXaTRm3gUUTj9jJXi93L3cMGBK8lXmgsMuOBSItSd4=;
	h=To:Subject:From:Message-Id:Date; b=IcsCfhzBcqsXa6s4bLO9lF+n9GJ51MTlyYis1FpC12b3nIOArTW6PpGHDSfD/tbGnMCmUW/62UO9Dh9UIT7tqbgvFaiJNLfFZQNvzj1gaCI47TzEG1eBqqFRlFLQtA/Ev5+zxLITLl5o4JNSvGAtdsD3CEFDDvQ/xEWmJvCRWis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrcshDml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrcshDml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2041C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763015993;
	bh=4MXaTRm3gUUTj9jJXi93L3cMGBK8lXmgsMuOBSItSd4=;
	h=To:Subject:From:Date:From;
	b=RrcshDml8YOrfEALZlJK13Dsce06TUC0dgms+7mDDHEbmrlOZ7RF2DgVy8/Tho+nq
	 tUhsV4O3xfqDySIr0xddq141R5OrfIO4Uf/16Pcrz3a1E1oyKzahPVaKx282pmTfbx
	 oEogZbklM6Ntm2OuYYuGTsH4JduHnUyaWRa8qceiwZNuaPvsoeZtbEXAGAtJeZRhQg
	 JI1fy6ql4+Ngu087i3ZNQSNgV2Tb5gR++7JMsXhCq4lHhwhwWOnlPTwu2en+1mIbO3
	 mi7IWpNJOpmOgTslrKgaR8dDddWu99Wt0fWmuzVyjBd4w48hxCOohG8+7MfKKwBy8z
	 D8iyxbTZ5va/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE39CCCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301599364.27990.9903001036405910513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90fd73f39e08c05221868ac0646a00e11525e2776bf2b1ba1d118789ca342e73
Date: Thu, 13 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763015993
