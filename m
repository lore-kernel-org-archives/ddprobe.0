Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410EB28FD
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759472994; cv=none; b=jsPRz1Jo5898mjXtGDYkLANi8rpbbNt5v0aPBKCE/KjtXgrB+k8li3rtKgm2Vrxqs7JBoPUunQLyIAopUGlLmX5ibDbKWkLplApBsaAszeb2daxXkkm1hJYWsZ0FdCpsFJ4EmV9/cUyABgJrVYrN2d8P3ZrBCcxLMWx0EzbBP/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759472994; c=relaxed/simple;
	bh=37jFtPqiJob4hHTtLOieCFat5fYjExayF7Qk/jpF/0A=;
	h=To:Subject:From:Message-Id:Date; b=n2JKCxDvBM39Y7dDUx0osIXQroSsPBadteRFPrp+DgoKQ6aQt2g5fyFbYRCuUAc2ay7LwP9lxz+LLkLsDXewjzYhX/NiFj/HaTfsRqSA5+jVrHKiihFAgjpRuT7rpCS2tYz0+6UKErtPr76HgQZwD6/az5UHwezQrGKVy6ACrFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqM01Ect; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqM01Ect"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F0FC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759472993;
	bh=37jFtPqiJob4hHTtLOieCFat5fYjExayF7Qk/jpF/0A=;
	h=To:Subject:From:Date:From;
	b=iqM01EctpJe5ftFK5nqQDOYmrPGS4L3lDOY5GNiYFXkO10MfUBAddF1xhFQVgVDCZ
	 fKU/m3Y/ps5H5L0cjCKKmTvjpE+S+tqlu6TXQsI3J9BCNTSXXkJyjcTNIHiEzBITfl
	 /lSulArIoLiLtWPw4DTw1vBmH3gSac9Is47R4uhPFBw0M6TLRC31Jn6LeKJUsai2f9
	 Nv3dS3aEJafrwvCNKQriB/3I3twzUeEO0jGJJrqQudgZcDW8+DBNhoM6aWCiJL/dyp
	 3cerS8NAcXbEnrnLYmOgX1Og70zS/Bw2rSDTsr/45ASe25Xs34hFMpGAHkmdhzHr/8
	 krLjh8quRH1bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E86CCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947299362.31987.16165019834565355004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b732a436ddaa0bfde13cf4b2014d782f948cd0e45020af2afd4a12f8ae23fa94
Date: Fri, 03 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759472993
