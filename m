Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFED7B3E1
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753403394; cv=none; b=odeJ/n0Utw6dhq1Xdgpqdba5ggzrhEpN2JKJKkWxIFX+xDKzDkGWALxnJfyf2iBlS9Uo8r4Pp9+Rg95uBykQYQ5AXgwWNGCw0YWn+wycOtDWGYMvnxRbpl4CUGPBhiTnbU/pILxbCdFBmetBMPlRZ7O7JoBDQQaxkvEL83ObuMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753403394; c=relaxed/simple;
	bh=96DPbNPbyl35hUI6srgMo1qxiElzLMn59Sj33dGxiHE=;
	h=To:Subject:From:Message-Id:Date; b=tuTyXss39yCVLZ9NVgdk6saZOAzPnAqfwZucz9F/l2UC/zYC7sYX3Hfu4eK4Bxhreg8PUSBT6OTQFahkP22UW/MKS9qlQcGYgijleAsTpIty1L+SdmiTTutYbEte1VtFB7nszt4eaAvKfVt6NNar8gMaQ8LcoX3kc2hZU9/Hn9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ul5u45i9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ul5u45i9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2652C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753403393;
	bh=96DPbNPbyl35hUI6srgMo1qxiElzLMn59Sj33dGxiHE=;
	h=To:Subject:From:Date:From;
	b=ul5u45i9YN/bBYI1+hSIbmfMv1PBXwp/L/MIjNgQGUudRTShUbu9Ur5flYGOnSj/X
	 bfgDlPcVzkpPS8vM7ZId0xZEEhAi0uCcmXg2fAbWkYnSNKD73CzHsf9lppSZ37euYm
	 xQdPg3SR+UTRH/dtU7e/OGvJznqCOK0Crh9Fvt9B2XkeX4X6DVRg5arCUy2NshDWGA
	 x6QX6E1ArHsBl+Ayeru6qKjUke6TCCyt8Alm+B4zWZkBYuSouZEz7NvovjOGWDQHXQ
	 bdR2JSNyBFd6tJ1yfZuMFSsDGCcFIm17TeFexikfNy74/K35sLZcS0aXkzef5zG1is
	 mBaGcIiwZ02ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F64FC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340339358.24926.11316306103076592726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073286ec4d09d24949dfa2343813e72c7a78c7d50481690f1673cfea7359b77f
Date: Fri, 25 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753403393
