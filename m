Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90A93D76
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771731294; cv=none; b=opyhWMi2pRVZDc6b4MOB1ycN4lgrXeXmWmcfS2+hZ1fiIYUWKfRcL9Q2ohiP+zXzplIeQXCv6n97zXmQKuWDjawrgEfZ6GceJN5cc/Ro8trTiPRz/sCIjHK1U4qiNOyiGoo3gFK9OgbLW5JBsk9lUJhUGcmoGJRkhfLBeiItMc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771731294; c=relaxed/simple;
	bh=px3GwJaGsk+m6CienecFTYzBQSb0SoDBA3RaPOXECXA=;
	h=To:Subject:From:Message-Id:Date; b=plalCwTizb1DICP+JKCu1ly97e28CgeoN6GsmXKLm3KyZtmSPdVebBuKSev6r9QX7nILFlLPjLRHn/JRTh7/9+gCuYFURwdVIem1gAL0ZSABg+R5953kVbEC9vsswJTnRYnW0+o6cwbZOQmWk1xrY5vugQ5gnyNq1SXuf3whRNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzbqvtPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzbqvtPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BEDC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771731293;
	bh=px3GwJaGsk+m6CienecFTYzBQSb0SoDBA3RaPOXECXA=;
	h=To:Subject:From:Date:From;
	b=fzbqvtPwSsTVsy8lCD+9MKzNMzOW8HxHJRYB/zCPVCPpLmtUAY5OC2BnOmV2SRLgh
	 frwNHqusfRmSlVCG/MYNl/hpg+GZJfGr6e1Hy8Vy+rw1US86ymIxOA+ohfWABaE+Vh
	 d4H46J5xzCaWt45fJdLatuK3lt7+IHv4Yso2fK9cjiduooLbTtceCI7E85rnSs6qsy
	 i0RyyWIlamSjIpSkct7eykEYWmRhgszsGMKnpY6gc/z0LiFWBZ3JM+7hGWXbVeO+OA
	 O7POBSD3u6kGR51IoApSv9vTKFHow+tNYA7f0I1Zt3I9L+ESvEsc/fME2d43pslvOk
	 bYzTHbyGX7FFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C22DC61DE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173129359.5008.12014431462993840183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f36946741ba75c976a4b5aacb36107f45071d351c36f84736b5ffcf2bb6a8fc
Date: Sun, 22 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771731293
