Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF01323D
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743092394; cv=none; b=p4mGxeZsWSf3xqFcf8zqMVlqVsLmZqryn2Hg1XcyxjU5uOYRrZ3RuzreiwYtu42xt8UEaGHeKYy5cGJvAEaP1tJq6Ijmz6ddXfael7b6KtcBp1IXWRC1u1L4Qf9fjvN5PxSDqUS/m+5jacE7NoG47AbTsmJoUU+BQgV4W6lPWMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743092394; c=relaxed/simple;
	bh=pjoBE3x3eXdiM8SswQCpuIH3c/EmQnsi/HzeEf162F4=;
	h=To:Subject:From:Message-Id:Date; b=kD3et2yUaqlJFVcfOAJ+OqK3d0MQ821fTKUeZEabQhpSczlOi1t7zazKmqW+aeKX2Sv6kU7C80rJb74ZQL6+etInsQ/jgunLE/YXA+iwv2DCBK6XtVFnSssvdBajaYWCbKwVCrWpTj9mokAlB64MjSfBeJXfkWRmDHDwFRzIRXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFN4qn8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFN4qn8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB60C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743092393;
	bh=pjoBE3x3eXdiM8SswQCpuIH3c/EmQnsi/HzeEf162F4=;
	h=To:Subject:From:Date:From;
	b=JFN4qn8DZ500oIT5QYGP74tK7fo8xZPahZfs0sa6lnHVJvdnA9UnHAE7wxAt/SNfe
	 wlChd+IEMqqFpE6dIsD11beBkhSPzs8WYlfosaf1bbs3Ph7r5evkPp27XA8v4D2q5w
	 x46AMdnKYy/MPGXKTXN3Xu8jAqBTg9Qb4f/lTC+xv84vz7Y49hvTVtSnY5AAVLIHIC
	 dzUAXCYUaqK00NWrftFDPWKJ6G3ZTXHpk+8//dTPXed6XP015KIjfj8CTxJIjvFvjn
	 C2Eig2IDott31PFmOhoURnPXCzex++wfybr0y7ivbhMnfOqwmKkGT/i/Xn9JwMqhgq
	 5/CmMAjoQdwWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93983C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174309239359.3415.9670904365457519664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef8e01416f148f154ce04623337c047aee09ad22fbff466523e282f3f8d6354
Date: Thu, 27 Mar 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743092393
