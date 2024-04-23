Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7E026288
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 22:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713910223; cv=none; b=USiHciCb9Llw4m1XtVUJ/9BqsID4UCS2rnXMRhhN6O7JGF4JqkDE5Vdd9nuuxb1kYPM2/UE91KRl3e2P4G4H/JqHqol189oW6Q4ZWMlSA9IOhIeLCNChOSAbAk6phQ2ZAH4TjycxutHw29UIHYnPRVW8WOl/ocA4yJYVqTNlWI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713910223; c=relaxed/simple;
	bh=ykZ4fI276KD7pL+WUMHsbz8H3xxX+atDw0q4fo6rLsg=;
	h=To:Subject:From:Message-Id:Date; b=BevApMBjOSDXjZd9kkLGTG21Bs0iULHHXfWy7BMEgbTobC/ZPAFwMF3mT2b2r1+qsAzrZa7uFP+C5tQkUrGPu85srInw2l4CM8Y2X2M5Vk8fhnZRjarz6IzRO7WLEZFO3DszNHwkPUAC261NUBePBTj9pR1X9zXhATzSK3tYFmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7o7Q0Cp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7o7Q0Cp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0774C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 22:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713910222;
	bh=ykZ4fI276KD7pL+WUMHsbz8H3xxX+atDw0q4fo6rLsg=;
	h=To:Subject:From:Date:From;
	b=t7o7Q0CpJSUQlgQ6+4ptzem2q2mQO+JPrD/AVZicn17QxJaSFMODqEVvKo/rViscp
	 CMhrDmclcWJnOlmWHX4XiYsD0ZNk8xHODUV72EVwkkdXeRpA1sPjGclkxYWCcFfbeu
	 pBNvxk3tGxF0yH/fqXnnYdW553KGwUp5SpoTUXzLaY7vMNajX7RvBOdF1x2ejJdw4X
	 OD4ycAcrkyFR+ZrVGpw1uiRVG2+Sm36RAuQIZW32a1JV/K3uBJWPEH+k9BaQ3Yl1I8
	 Mw+ZfWIBYl1N8SpR7f+pbXStZBv4QX7VbbXlGDDM1qSv6NRDMCJgMY4pGjyGoF7mB2
	 d4FUyRxSyt8tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA42C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 22:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171391022279.7759.14179901766059846767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d109d8648020d076b2171333b47fd2f4c7f5dfe3c6f878065bf712cc895fa2a7
Date: Tue, 23 Apr 2024 22:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713910222
