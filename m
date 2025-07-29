Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F6E2853EA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753792195; cv=none; b=iKnBo6NCYMeh4zuWFTbwBGA55jYk5vaqR5NbWjARYaY67j8rBK+rlbVc/vGUQCLfoDduHX/YZ3RBH8TBaRRCx4NrI6oaQ+uCnYdDLBGAvZpyNZGphXFgPZaoUOQeRfvLYrEHK9Wj1EDaMX8Gpua0kQTFCTCJnPBri2Ulyx0ElHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753792195; c=relaxed/simple;
	bh=hBXCzdCSiXJIn6X1MANQeWQcmNj1yRBt2T2Pi/x/xO4=;
	h=To:Subject:From:Message-Id:Date; b=ESx2Y39q98jYADhE4HORT7peVPzkWY2HO/FHUrvdOEHKm5tyQyDbxZ8kftbBhZaVNaFPrJpxyob2xHNAGzNXxYA98JwquhI2V9fN5rop6bkDQb7DViS4jZ6eYw9k3dLCQmYOl/L0TKpRcp3SXiraSveOP9mX+aicJr5amJySl28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0Ch7JPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0Ch7JPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F11CC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753792193;
	bh=hBXCzdCSiXJIn6X1MANQeWQcmNj1yRBt2T2Pi/x/xO4=;
	h=To:Subject:From:Date:From;
	b=f0Ch7JPhqe1pqo2D/zcnl4ZVC2SGm5EnJjqAsIrXBQ+AVYgXYexFwWQINK3S1vjD6
	 WCVXtl0+O/WAtynrK7gkPbNanimdzcqW1bdfD5gWdDKMYGUlOk7BcEOaYM803pkJ8A
	 E5ktZNIoAHO4XYkZZRmg9nU3dNCX8iRTVPdmM2I6iMmOSRRAnJBLX2z5+Nui+/XvS3
	 n8rGhVs6XNisnMQawPryjpOcdSC6bBgfVa4/hVEM0hjAMGujx0FaPzDZDF4Y+lk2Je
	 9wHpEKQo0I/7n6Pe/6JUyBTcYHOE7tCTPrP0KTXC/lf3WncvPKz5Oyk+FK5TpqQiux
	 FTXZGE5jtk6fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E02FC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379219357.19806.466512903072491101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1930c6bd2f97952e08cfc23fae9df44c6703b838e163acf4dc629c59075bfdcb
Date: Tue, 29 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753792193
