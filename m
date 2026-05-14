Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA532D6E44
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778782234; cv=none; b=W/sMNmvopTdJNtD2k78FOb7kmobdH1QCQ0ErDxtqey5H9IVlz4RDpfwFt8HLnP2amHiyoORMsMGoEe6mVf2FiDLxbCWVArjpTfLoaasQE0E4SYHEs4/zqVrkea32OnJAtYR8f13wBcfaAxTWfGzZH08l1XQQi3aCRhq8YEvT6XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778782234; c=relaxed/simple;
	bh=tWBWpHowQyDIn8XHMp2OAWDjwUAWcdhyT36uXA99JyY=;
	h=To:Subject:From:Message-Id:Date; b=cRRlDnZa2eZNc4gr6GnZej96VNbF3a4fSv1Rsb0lwUbw6Q4sEhppE2H2e1AXWMMIn5r0afTSsSOQotTETIQufTxZcR1rCVFyvGKtVU26qmIlh1c59/hhgkSkAc6LY9iuJRTg7jQABPMs9dTJGoHbBnTnpfhQuOizJG3DxD+KqpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+mSPT8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+mSPT8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C34C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778782233;
	bh=tWBWpHowQyDIn8XHMp2OAWDjwUAWcdhyT36uXA99JyY=;
	h=To:Subject:From:Date:From;
	b=c+mSPT8dUSnIlwauP0V8VP//SU5YiDjwsQxOxbojSllmCrQqy71aOiTXdxVTKXGTl
	 P2og7a5kazb8N3AL4/jekJMri/lGaioYmHLRMzJEQPqYoU1eRUtmoqJ5mmWlblZ3GM
	 0UXvI0zu/BPzd/U7OhJ3hFmvmumuEB9cN/7R68qchv6alhKv4wCz2J5LzpI2efvxwd
	 aHRRhF4gCBWE4tsScAP4qLjqdZ63Xmq1oOueE81p+lORD4N2v2TgClwRLw8F/F5ggn
	 K9ejoKp4T1VtAfXkvRCtPmNvZF+X2sA1wrJbPVe9fDH3RBsl1oQQshKNp354X+F92v
	 uB2lNf3pGypaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB178CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878223369.2861.750598306520853540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f910012032186b72c5f19275f2ab54912f462ed18d6f0a59c2c44f9d9bfc99
Date: Thu, 14 May 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778782233
