Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F24D2E419
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727132154; cv=none; b=F3yWtxs5n1r0cES+wCQRzSjh13rPzntgWkTTBwgh9mby98M+UTBhg84pVtEFeq+Q/Jd6lf1hI/PZSrMf9sK3YrbrkT5pfnkGcbnQrDwVTibsU82loHG2+vfl+8ntdxzi3zKlOIvViO0WoaaLFvbA3ZB+esRAfM+UogsWHe7bO30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727132154; c=relaxed/simple;
	bh=ffq8Eue4LA54F8vg2ciV/eRWBCUnWe+vEM/85ETXJns=;
	h=To:Subject:From:Message-Id:Date; b=ulsJPpFtn7tyt5BqXRVDy8/iETGBoI0e621e/hblE4LDKfgfnwdNc4p1LWkUGyIkmVxhhSG1/YgDByc7o/jlSXJJbzroG7biTxARYlxQvseEJSbCiX5RLskrJ1NTtXVmrsCieJWV+uSK9ZVtdK6gRnBypakT0PpN0u3kzlnva28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DL/hIVjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DL/hIVjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6084C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727132153;
	bh=ffq8Eue4LA54F8vg2ciV/eRWBCUnWe+vEM/85ETXJns=;
	h=To:Subject:From:Date:From;
	b=DL/hIVjxpX776zAIv2J0kC8xHcph0PYY1iWlvKo5Ua7F09ZoBL64TxNnHQwMK+UCt
	 pAoCXJ4S8o+dx9bhLvmIHNMoHtagHLBXTl3pu+AgWovLRuaVT70YJZWYrGrW71oMMw
	 Z73fFA+5BJ9oIfC6HS0lOzCX1oxDjsocev1l6Cs/9Zd/twRB3W4orvyj1eSSGN+M5X
	 Zu/1GiJQmgjJqx2LclcyVrBAQEyWUz1gNlNlhgYwVbk7HaBaY0EyS2ycmSV68TUP60
	 Ps8CtsKuFsQKwOTjZnBqb5QZfgZradV/7it2FXRWAxhuzQ+e23Sn4Y6DUP2dZsBwla
	 kaUrKO5QJMfhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938BECF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172713215358.5703.1083765986851414409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da58f145014da9bda843a49a9d486380623a7ae84fb658cfb00b84fafb180bd
Date: Mon, 23 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727132153
