Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E7D191F91
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769364834; cv=none; b=RRTDZUS6YhghfDyeGfNlsgkF67RNvAFktNceMKpZuWPVhj4XE1Zi9dyjZL4F5RQzN6m/PuyDXQi5y6LOnEDr/WJ3VDaqT/OsUK6DxGXe3pldXXhbeDocjr0juNoC1tBOijJac78EwEz8q8KiA0X89HsI89kAxWjiafgPXNUvXMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769364834; c=relaxed/simple;
	bh=w2CnB0m2EcX+hRnVXBSvEWvbchMzTUH83S/mFNXlP1M=;
	h=To:Subject:From:Message-Id:Date; b=q877d5LqmWFSA1FJwksNqQdUZ/PXKUSd4nyJ6c0V9MfOq43b3qlCT2s8/EkBIvdNVnujJPPOUIHZKuZmUMPTGWsGBEVMIu/7vxaZEDQixzZ5e11XA2RwIoyztbCCBzpXUxabcg521Mer6Pg5jyRklX0pKAYJzcbCw15oydVR5Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fimGX0VQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fimGX0VQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEB5C116C6
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769364833;
	bh=w2CnB0m2EcX+hRnVXBSvEWvbchMzTUH83S/mFNXlP1M=;
	h=To:Subject:From:Date:From;
	b=fimGX0VQTJ+Pptpc/QBTAK0cLmq8BhpAchOWLPirwuJV//NK56yJk+7aHfe0RJJnX
	 I2qYLBcY2WS89rbyp3F+/cscgenoo77lKXQg0/rBFLB96ZeR9J/L6y2KMBYUxcmQq2
	 nW2yM+0fmAuSTqE3nj42ObNbh86xZB7eYmxIWz0iMYd/O/kAMb9Xabn1zx1gshQAhQ
	 ENeS6JATuAfu+mVIvz7ORFU/BBJ+iqDTYWS2sBCrQB6Uqvwh/nsnyNlfx7LYTEKPtb
	 qGuHbtyAyTx+McCYBNBDU/QRucM44pHRzSUI66+fgIHks3d2x1cW8SyUuWBXhmnOqL
	 +F8QHcRJQKByA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901EFE63CA3
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936483358.25538.9158425052369842051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c155acd92e08dc2b9a3cba32b94447ab9b2565e0578bee2ecf0d5940fc931ff
Date: Sun, 25 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769364833
