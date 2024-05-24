Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC0F12E1E4
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 17:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716571403; cv=none; b=X2Za3Gvyw/M5gTW62xt9XF+xfzr9cfrKJmHXJoljMQVryPcVkoiVx4hBZ2Y2QvppzOrrGum7BdzJLGEQAEbn9EaGDjjJEMJFo/qtXRJGAijGgN9IhG9uvLfepDfPcWRiBOxrSeJm0U1NL796/P2+7EwSTJacEDcb6BS1KDbXqCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716571403; c=relaxed/simple;
	bh=T+/SSLEF0LUQsNcF5XLHDIW5ReoDtKEnYlZ2es0RObc=;
	h=To:Subject:From:Message-Id:Date; b=IKicFHWyJ3HcJNKNfltgbG/i/AeahaSUQtcwWsiZVcxsvI+xM0CV2glG2tDLHeCycOHwxll8sKvTGAzgbldMsQRCfGe7yMr45DBZhFE7pOD5HCEwYi4xK/qhOG9c1P8NcD8PegdFW6vKy2y0dVcnom3ODmixiKVCxrFrs3hWQXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wol1zIIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wol1zIIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5600C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 17:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716571402;
	bh=T+/SSLEF0LUQsNcF5XLHDIW5ReoDtKEnYlZ2es0RObc=;
	h=To:Subject:From:Date:From;
	b=Wol1zIIaXL7+Ne6FeaxHVW1TAC1Yk3ye/z4qz+8JNkDJKvZgxm7BAq+w8PthB3A4I
	 7+9tqRbDQaUV7fdnrQxX+PC6hIWmiHOIZ18UPS6KZ2562PjGcspRDo1XtWeFtgEafD
	 evqaZbbgAf5G2sVmKuMbf54jeITosbr/yYx4i6ztzE0fPiH+y3zHx6gL3z2pNN6o9j
	 KWAnVl/g5EfEQQawxToI2VyEX2IiSl5LQ+jWfQGK4ub73USyZ1c8e5eXarqhHPO4ag
	 Qg5zeatPlec+hsCa6pFGKrhlcR+vDe9xhQWXMB++/9sWDjh4lnl177jDEm/urHLLs7
	 dDFk/OJH/Vs+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0A85C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 17:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171657140284.24513.17763495979886618361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea6a9351ea8027aab667fa31352a07f551b380097a6fadf02e517f4995b6453
Date: Fri, 24 May 2024 17:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716571402
