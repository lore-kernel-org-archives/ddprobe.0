Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50637386C3F
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791097234; cv=none; b=umgavnN6hR+qNyghJsm4kPpasg00s19ExxPlc3tKzZW22rOa9pOsMkXp2oVGdiv3TS1o5bpX2NjOe8NGPRhRjQ6MkZDZO9Wc8yTfKLt+CYJ4ccqOdKcc9F24KMNUh8vgC87vc7/a4HC/oPlblxwqt81byfTLaxNLHSOU9t3z+Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791097234; c=relaxed/simple;
	bh=m3sZ3sv4l9UTNIe7zdidOaP2vQDpmu9xhdmD5QxQaEo=;
	h=To:Subject:From:Message-Id:Date; b=hGw1sXrqBwpn8kGm82SBDOKf95t9GFLNOL7vXMTsob8R2XAWpr5kGUJCjyyLTVr3shyeRgWJF8PBf+C2M/gvGC07EYpc/5Tz44ahDICFCKUyAOA97RuoSKDo/i6N4FjDZBV1qrg7VzvlScpaXambI6OwGG/NCnE2uNiBJMD7dyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcJbhbwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcJbhbwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4C8C4AF61
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791097233;
	bh=m3sZ3sv4l9UTNIe7zdidOaP2vQDpmu9xhdmD5QxQaEo=;
	h=To:Subject:From:Date:From;
	b=YcJbhbwy562yI8kU5kfTdI1c/9xvqyvbVCZ63pGOEtqhhTsyDE2CxoVOS64okn2ny
	 eZ5MAkePidszrcTEKwcV+pG13lIfQfzBcBrTwiaXHm1YafhzfiGLSCMsWfEmyUiJZa
	 k4XYPEqn/1E7iFQMik/deYRr+W2wSzzV7DX3ReEGQfwmKvtMF49wtMKqJo1paAcetX
	 X5z7veXvkoEwf+adEPfjh2kMruH4gcb2dLIxM02Z8v7YrDADESnJBNwo1YJuV31IIF
	 ZHfXAmXjCpiYWU5OTTAub2+WYh453ldGUNFKPKNE2PEVdN0ANxHGz9dDvu09TUU2Bf
	 WNs9O1PFj01Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F6ACA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109723373.28372.10207781287080459510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb750f5fb74256299582ffb37ade41e84107e5bb80c3dd15da31b82d8f5b528
Date: Sun, 04 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791097233
