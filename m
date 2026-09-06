Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617FF363C48
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788714034; cv=none; b=jDKE9s96tDA9AkVst1HSC1GjILmBhce3+jFVWighee8RGhML4lS/MmcIKN0/z8rQo7AwXwtoWsF3WtIdsRmNN30dn78P09HVNBIGrDYG9MIdHs8PzNesHvlXGqfDv5w9LP9FaBQPa/LHMHVFRxsiHis2UIT3a28zWNJ8N5p3/fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788714034; c=relaxed/simple;
	bh=Yp0sUfvapXQN8ZL7xooy/8lVYf5cwNPRvHaehnn9xjA=;
	h=To:Subject:From:Message-Id:Date; b=E0je14C745dGBDiOQA0Wb6wSR5+5oGBCUIDd7Vk59PlBaMK3abR0cQOCvuicA4iez/KjeAj5yLAXbQglgPrJQyAYgppUL1npFpv7rMQFmdI6d7Us2CQnfhbtMJbO51tjZF1T/qzYNbezl5Vp6E4tuX5RyK+c9ydbbdtunXRIfT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOIKeV7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOIKeV7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1224C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788714033;
	bh=Yp0sUfvapXQN8ZL7xooy/8lVYf5cwNPRvHaehnn9xjA=;
	h=To:Subject:From:Date:From;
	b=oOIKeV7f10T15I+LTzVr9rLyjOCSeHnAa6xvpFmw6Yr93Ydv4jYNVhTIh8Vl/TlLm
	 iv0FB99/NHjvFypgo+kM9VDwNuUr2zWfOpMpbPymbksqOStc+mFoQeoZ/oxpOQrMcg
	 +vEXQA0pLqvtv56FGVRzfrU7gllBNuNOL2hxQyDMdWT/d+7Xe6ORUS6ZqEte7RRsMJ
	 jgaNYKwTmKw2h3Bti2nxdrgx1wkFum/PCIycuB3Ba5uRbKzyAnWybZAU5/JHS7kf1m
	 13Z5dHdVzb8DKoTF/qePk/+iZC+7+GUzLHv1/SkaxWmOrWUxs+iWCIaQehIH6ML9Yy
	 Ad/fJDjuJMHqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF68C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871403372.18628.13583045018322533810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1513ab29f89c624e1c5d7a7c28ed20639d55ef27bb3d2c6769979cd7e3c198a7
Date: Sun, 06 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788714033
