Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B60335553
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768881234; cv=none; b=ZWpXkEIX8RJSDN92Sx7MKtVpljtqraVY54LkCUTeF9fAWz6Hal2lbmfHhXePc20oOLcbbctlTm9wsRDN9Br8O8wlIP7Z7njhsLxnxm+9AzYx21zt+6pClHHMF7gO/7nWgM9V0NNylL60vgE3PrAYMwNoF7KaxqdKFVVHHvjXvF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768881234; c=relaxed/simple;
	bh=m9sUB/4fRtsX6NehpVAIUj9Q4FPAUWo/whO0Lk88K3U=;
	h=To:Subject:From:Message-Id:Date; b=u/oX4CCZrWfoK47lRcy/BxlYO7nZN6kngLzHnv50/bwtcu5MFHQPUhijTdP2fP/fHAbM7cN/mHX5Xmfo/TfC/VNNQNFFebg7WnfXcjeFUG0mqxSmZ4ZTDpbp3DpseOkWZlF2ywv9bd5AJf9B/eGwEE1uyH7j+euWytH5GfAcEKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qA3p1Rl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qA3p1Rl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BE8C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768881233;
	bh=m9sUB/4fRtsX6NehpVAIUj9Q4FPAUWo/whO0Lk88K3U=;
	h=To:Subject:From:Date:From;
	b=qA3p1Rl47Cg3cBF4wowWgiV+7+cLs2Xsszxh8XHhYIcxVzVRkS7mntVWAXf4/7e5u
	 hbySlLlcfD30FuEhh4tVtnI+8cWSvCil7iCk4SiYvttstYJzwhMkyXcWsE+hFWvXE3
	 q53cSMReoQGaiHwiAFboCPYvnl+JOTqBprV8FD8/vVoZAmHTftoJ4O/NFCdeg3sXTE
	 H63evClHytigO2c8NacXKkuWDsA1CNaLEz0mLtP/BeAl1eix4D6SF6OeeQ3WWVZmmp
	 v8/dm9zvsAV5IetcZBX3N3Pu4SekCgzVVgiNKpYjipp8XhruvtuLXaRshl4azb79fC
	 qPT8f0sg0CECA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDFD2ED11
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888123357.23216.607494774138073902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb6165ecde03a3b56cb94e5061f8b92cd312e1e060d213406b3c45130d93cf1
Date: Tue, 20 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768881233
