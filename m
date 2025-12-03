Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D57238C1B
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764733974; cv=none; b=NEPAV/mw9ji6omQ6a1LDaLuJhSEGAlKLfj/7vNsQeIdpzPVk9f9zPAzpbSzWV2OA0BY6GX9o18okx1Gd9XyMp6geguRNxKwOeRPvbSV9QgwT5Lln2Vs6dTGVs8UVR8B0SMhaLhmyPLwNBYnx9KyZDgMxpdjfTLPcn2QWy/oWyFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764733974; c=relaxed/simple;
	bh=yCMzpL+bzi4hq7hsZ3ERx8J3CDg5bWIlC540TEDNjDc=;
	h=To:Subject:From:Message-Id:Date; b=fBe2T3DK2apjoAEy6lxN2o1yS+2+XZdYyZUwDhm97GwkbThz/bm+10WVDZV+vUKvebc40IJX5I8lsooORLT066Wj43M2OQUUOqRvPbZSBXugkZ6oDlegv+iJ3pzdNBzMSPlss4a0gnBWJngU57Hp4xVMCBtZKOPqns4o/JMenNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPYib/Gd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPYib/Gd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2751C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764733973;
	bh=yCMzpL+bzi4hq7hsZ3ERx8J3CDg5bWIlC540TEDNjDc=;
	h=To:Subject:From:Date:From;
	b=sPYib/Gd1dAiKRo1hc7JhLQoYZkQ1DNNpveFuQ4/+8n9rzToc5/WRlATubpvDSsdw
	 HnMlwy0Z23BpV7zxMri8WoiiCoNngfTa2Y4D/jh2Z6m4hGoOwp+LvPFyFUNcbtP9ea
	 eNLY7LSCmdvDebhkVgyoRCuz6vKIhxVaO5uKXdGcsv80rSXrtR1KcMgtK/g4uNocQu
	 Ey2edS0vht1SpXpc+a4TNPsdRrBI8osSd7rQniv8xL4fKkPTIX0LLa3smaJ+puQim2
	 K0sC/EEWtVEx7F3VrX6fH67XLwWvD9IjVxHds1hnFGybhxueq87TeoMB/HP6qlc1LZ
	 INZFzTt7vQpiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC7AD116F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473397363.27805.4333401215239446191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f779b0f791de7c7b03297d11eff95f4995dd6297db3b2f9a47f93ec62b8b9b48
Date: Wed, 03 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764733973
