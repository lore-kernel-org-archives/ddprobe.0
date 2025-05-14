Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C4C270552
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747219194; cv=none; b=HQOQOJEh2wA01DwgvJJWGtVtIhMHm49VSlKPbxVzIBE0WlTWCwutVg+wa9UgQssmqsAgJJPX5TTczZdoeeEmfvcqSkw265rkT7bYXi1LUiwVGxruguXn/vmXmOpNf85M8S2+ZRQF+6UrsfFFolzXLctT+GR/N1tMuhVSlxuMx0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747219194; c=relaxed/simple;
	bh=b5tchcjXrxLiGEYMnb3L0CNZXpgyWW4oPltSq2DJFZ0=;
	h=To:Subject:From:Message-Id:Date; b=YFD8rt5KByRHKXfZBgaygEnofgUBy2Td+iWjCnwI6iTkAznCvPXQXc1DDsamAaCQVqM2KLl8kIgfa+9cD+lyOgfvN+21tfGiuxIkPA2yas9Bvwsu2rrOVvPQ8sWFP3jUtPq45IC7D31RTZ6QnyNy2MBSBfLAhHF/zTxtW3oClUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/3nlU36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/3nlU36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C1EC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747219193;
	bh=b5tchcjXrxLiGEYMnb3L0CNZXpgyWW4oPltSq2DJFZ0=;
	h=To:Subject:From:Date:From;
	b=D/3nlU36e2kRriBE4p+MzAmWgUhESam+obPHg41Yhf4oBucuscI9uQeJUPwTjY7uy
	 Qd6FQSJF6w0Acb168zJNVt0OJBGJnyNrl8DCKS3U5GHZFFw8vOZ5aNEf9Gp67+HFEb
	 7WL1NqhX+//BPzDYoarLjmzV9zTtSgiZJhxIQqkaNqCJlRNQo82a4ubr0xxDCF/hgv
	 I45Axv0XrBu4KG4dJU12F4cnuJ1ChaT14jvA0biFpXdPRm3j/iYNbq6S3SMYMMvIlY
	 2v+HcbBalDu/YfbqGkUm6qNRPmKcMoPQEaBKkYoPCFGXvPqOYrARpTw4Mt/v/f37S6
	 p9RKS2kGuw9Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F438C3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721919357.21291.15606786119514227520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b4c9c9198f0a87d17f13f81e6c20cab5d6b8ffd1bc2006db72fc697ce5fed6
Date: Wed, 14 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747219193
