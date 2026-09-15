Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6280A194C95
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789515034; cv=none; b=npFuCABPNVD1J90iL+GtqyltboegBDZNRuead1UDufNq2wUy4mKgcKcndWIWCCFTrX0yBnQGivf0lL9owrjd1dPcuOn3W/znJlQbQfYEs95U6zW+HVCm2kfWbdXBmuKcj8JYJbEHAj4WckT/2jUfRG2ouNNukWiFnMAr12r9b2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789515034; c=relaxed/simple;
	bh=/oH2sqtwTN59GCItKlNtMBLeMJ/g55f8jY4xKMYPjic=;
	h=To:Subject:From:Message-Id:Date; b=uVH+3o1VNGmahM7AKr9pLtuCPvV3pCj4rbJ8fswM/CVwX9rl0e+p6KVTYDkLylOrCcNGrGHBHzVTskJZ71kZL99t2XnfoxNyzvI1/ZjIFi/RKp/YSG6FK2pVfszAQk5WOM7T0+AqamxE8IKQyw8ALVsvMdlx3bU0KFxUtt1Hgmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNjwGe9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNjwGe9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2574C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789515033;
	bh=/oH2sqtwTN59GCItKlNtMBLeMJ/g55f8jY4xKMYPjic=;
	h=To:Subject:From:Date:From;
	b=VNjwGe9CMi71zywJX3afKtqPua8f/QrZKsVmUPF18UHEa4TEcEuaED/6RPPGh+PJq
	 CkatskeOqRDs+W01vLsuq5b05rReP/jVxX45Ds8Ry7GjLg47XjHnUtNZsdxA4D9YOZ
	 WDE7Hx6xpQjrlq1TCzNiCecrJL8wV8AA0sIF63ajIOPuKhF58XWI8nmmRkf5Xk0tGR
	 +P6qluGty1I9LKbd+W//wsF6iTitAeaTL/H6mAJQ7xU+IQlWdSVYFppihalD25NSA5
	 xfU5ISJiFHXcv7YRQXeobOGf9bmwEtnRFrdWMKQfS8yc/K2yxZCbEilgivS2AFSk5J
	 XJFOSLHMdt/vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7E6C88E77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951503368.31041.7909676699177856671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec7b68bdc62414584dc14f08b4fc8670c03ed2c40c60418b3017ea480c3b0ce
Date: Tue, 15 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789515033
