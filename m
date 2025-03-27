Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6AA20E6E3
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743071394; cv=none; b=lIubFIudYDpGZyVfoM0beHW7FN4WePjIaFwAoBoXpo+t702h0uX5emEA2ToEHUTtDK1rnXVXoSjmQlptOOsOi9eu7tk6IpFf8SyRbg9QmemXG/huSkGf3SY70FiamDQbV6UqJRr6fi1g7KbvPBof+i9EibMIDImnhY5vmqrQJ4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743071394; c=relaxed/simple;
	bh=eBUBHOp9XyU3IvfReqAqFjKJcV0x591kgj895LIt5lQ=;
	h=To:Subject:From:Message-Id:Date; b=M1uxsme0UO+YTe93LPu1vSwuSleIHYB8oF+Bpx+apcLs7e/SnW9uI7gZAgks74AhU5g+LPdlJBLbY1Tkd4ukF7M58b1POUDY/yAgEtICsEeoiD3qqDEyEFG0qMJt4WGFhvQQ5dBMKzCPuy0JMntqDli5hH9yBPKJzvRH1Dgl3i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvsoRX7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvsoRX7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1026C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743071393;
	bh=eBUBHOp9XyU3IvfReqAqFjKJcV0x591kgj895LIt5lQ=;
	h=To:Subject:From:Date:From;
	b=rvsoRX7DU4FP7ip7OIk+B4XMtNbM50HOkrFFPt/OLJcsTAKHZDsfQx0Xy0C9Jf8E/
	 aJ0wHfRNj/RtBjymB7fvu21/jJZNeSdulB5T3jvyHRczwx8QCiDEWRRh/8/V1Kvyej
	 QFAbhoBhpYFbCdtpsnotbkPBCMlSdaPm3aBNzfxJq1bqPqoOZp/pyifC7EwFhj4+gh
	 JzS81CMyBUhujOLARv+o3Is4WK1JztBK9Jw29iSbrQivHH1vawGINoutMJp+mCTYFK
	 svUb2IKiBy9oBboYXukalWsO5NdeilTf1hKMzOI6UOs0sJC1Cj+4V+mgJCFXQcVSZG
	 x3qWCvSyF7JvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A089FC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174307139364.22213.991360609843535597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4065d9ea2ac1f9814066d0e1ad6b844ec28d13b2dd1102229251ed8850779b1
Date: Thu, 27 Mar 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743071393
