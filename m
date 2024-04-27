Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559D2145B23
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 22:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714255943; cv=none; b=Hp6gtmR4edX6mnNRVPPMgJxVvbCMEvuRu1m7AH3J3ALBEo8f5HdNOApt3jR74UEdmIcJ0KK7arqaelMyFrp5JWZ+0GoKjJrro4YrDeM1pq0+27OS0EPUCdOp6aJU96axQdFJ8IP5rpesYHNfJ/HTdZj/IsUs3fc0K2XUk3YTGUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714255943; c=relaxed/simple;
	bh=QCr48HXTHxwAi3MZX+NxhtrZkRsfzK5QUR01uo1Cnfk=;
	h=To:Subject:From:Message-Id:Date; b=mVNSwacneqpc5pS+HtLwz9kQPxAhK01Fo4UEK4SvjtpYsPz/QbIjVPRHVJ+g9pGIO+yZpmV1bvOlDioH2mIFlaEQ48NINrtsrYQdE5+FbDMTrZaGm7P+WOp+B9/rlN0KCV/tvyHH+44dvVpUnKfnmnNT48HeLcgm3nnJeZa/vQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5d12zq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5d12zq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DA2C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714255942;
	bh=QCr48HXTHxwAi3MZX+NxhtrZkRsfzK5QUR01uo1Cnfk=;
	h=To:Subject:From:Date:From;
	b=A5d12zq7iAxeq9TUb/ZNMza35hmsiDjrv2XRtrQqnvyBGmhsiNb3eDcNLAXAFPr/V
	 b11DUlQWaHwLec8qP5uwJp82mfSo8daSAm8RgNG0gpilOxzC/CI3xmqCCsSxL72ZdF
	 +gb0oJtKnjVzkAQrQXHTp1CSmYZhuBF1iif3dzrMfwHM+DicO/o+TjpizlUdFOCYz3
	 ZycilqZzwPp9ZwezqfHNz52Xc7SSE9FYEJvOYzl9vmB7AgodtqTB60cwqIJtbbapXl
	 iHUsgxZ3bttEvCFBwsJIEwpmal6k78dDj4f8DObmsepRdQDa6LREC+cpc2U72etkbM
	 lrBSAKRQLYfJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAABC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 22:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171425594276.28546.2802489940728730794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a6b8cd7206c4d5e2099c1cdd250c3709dc0d1a6c9ab1d71cb66c39d83f5d81
Date: Sat, 27 Apr 2024 22:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714255942
