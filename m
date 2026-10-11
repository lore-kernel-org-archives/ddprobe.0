Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 992DC3CAA53
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791707434; cv=none; b=OhZgNEP1i2jNNX2kcPUXb3G3VGyn2HGWV2bRS+pReAGjDY28NkMna9TTVFBOXHmsbZDY1WBAV7pqAL0EjZ84f1Jp22kyQ6XMukylNL+7u6gudKB3KFBe0xBqH3XmF58LFMJkJHKs9Xr9NtOILJvw621znPzT3yLIW3kN652QuNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791707434; c=relaxed/simple;
	bh=NNMqiOMj6/SVa9DcgHQIhf/zIBPbdKiPFPVdm29J5XE=;
	h=To:Subject:From:Message-Id:Date; b=XgDvuVVxmw/I+d37D2tfua3xHVnzADC4+IfRF3CDs0lmLzCldmM7dK3cV0FY0nDO+VD6X1QDuyjZ7tAzaYij0Jf6Fs1jPgmhJ3peudglZlDiquv9OZzjou5avJ/orat81CR8HYVWDPKkAvr2Yw/Fd7WSyI3bDdYdDTjzubOzghk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCjfD2Sd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCjfD2Sd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE67AC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791707433;
	bh=NNMqiOMj6/SVa9DcgHQIhf/zIBPbdKiPFPVdm29J5XE=;
	h=To:Subject:From:Date:From;
	b=FCjfD2SdqiiXZjmzNd/KjbLffN6dJEZQDth4BflwNcL7hpXg9Zabb2gsOE7/M/YeE
	 rGJOr4q8AUMpNBpqXC7FahZxnrl8o9ekEajDyhZOoGZs+74NcHqtyPaEHQ4iohmjPf
	 8RYGVyBRWaqFxc6q6b516S+4lCss6by+7Bay/YC2eST826Tmlx4VzcNIybHnGNKPAK
	 S8pNj07cP/DHrH8n/uVK8N17GG2I/0YwbKRiBLqT/G9g8uCKit9Ofp2Jy944Yg+rHj
	 JnMqTi4B5VQDEVfunoHxtsSn/DZddTIi5qrUqSuuZIw8NDJL5tctP4Xq2o3nY8+j1J
	 gGp99bRJSjeeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACA6CA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170743369.10331.12157891277049923024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 952d523ca6e54e33d73f15c9e4b30305e320b9edf47e93d6c0c16f80852428f8
Date: Sun, 11 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791707433
