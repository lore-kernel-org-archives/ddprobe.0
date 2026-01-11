Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AECA611E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768091634; cv=none; b=ireEXiTmSYwPOGIy3TJSTnBf2IFxT6rRDajy/mSu6O3qeGnUI1qR5aEUEg8L6OlGsvE03ggKrCXbodgHegSBY3T5mfzIhrmCJos7IcVS+HJ5jawPsPYY26VCfVQLXh+owq1zpFYC260iMISjiVIFgLZadfhPpGi+0fztpIMoRoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768091634; c=relaxed/simple;
	bh=Zs3bow2txTLnPfm1mpWE/HaFo4N50+vQu6YUke50Qwk=;
	h=To:Subject:From:Message-Id:Date; b=bMyTp2Hfg8vlS7jbuXiSLgRqI0GWbNZeTO81Ookjaywys4Lp/44RMZddNACATb/qdfIZ1AEM16QHkBDzltXwwAbu+pLlqE73dAEotdehQJV2KKDX3ZaSjBtago8LbnRmiN6BCyPZwsT1WNSQ51tZq7y02mRL3r03FSOgzc7vPmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZZufKob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZZufKob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1494C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768091633;
	bh=Zs3bow2txTLnPfm1mpWE/HaFo4N50+vQu6YUke50Qwk=;
	h=To:Subject:From:Date:From;
	b=WZZufKob7MmhKVa+Ueng03uztCQLzPXbmQ/dV0uTqmvh0LPORoq2TtykKQz7Ngv+V
	 4mdKzFTtA5NYAvMo6vDeamC5d7wQE6UdZqWefG7LO8ALpbV/DXJL3mO0EES5ImuiVL
	 iQ9LT0RBaewP81idCc/w2SheDirfLTYkAYv3PAVOxfyN6kIrpzdky/xsxeuS58bY3e
	 KGCQeGymwZ+9P3hXINWHHXLZp58514MLRUh1uepSI2eaZk+thIQMdIz7jgKzmrSBUr
	 NP44SVSNF2lQUoyMLyneIV0HqHSOI1FZ7i33QGNn1E0J+OdSRZIWD3w6lPkqFaz4ZA
	 LpWj9eWKYfySA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92DD25028
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809163357.13031.7320066615600509007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b9c4373c8cb03ea48cbe4cf96e1e2207477283dde2e79dd3a1b1704b5bde46
Date: Sun, 11 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768091633
