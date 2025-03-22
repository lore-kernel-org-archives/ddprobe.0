Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FE913C695
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742632795; cv=none; b=WMYqg161+ihTvpaxPbS239+3iMTPjFSsZfXNTwbFrdTMgI9YUIgq79Tl8hMijAzhHU9SAk2c650R75BcZ3ARZB3C5fLk9gAoosWRIspBPWlat93mVkePtSse85/wVlpNnSgYIAACkufJbtQ8T38xw7u9O/PXqp0A7S/J+6Jp+vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742632795; c=relaxed/simple;
	bh=HsTnnGmoLSOp2wXCVf3gotlUGuuEgMpd1HX5uC54etw=;
	h=To:Subject:From:Message-Id:Date; b=o1mshZoMKpaHCpPZPQqiWfv4lKIrSRA4GIEKxr8+3vXXcWrHsLY15W6jHSO/O8bn7U4688pe/Hm6fMcUPt6am+Q2ov3pUHTREondVXjaBzqohiE+NtmhRHtyE0+LXG3X6scRVqRDILD+WheAHKRoQEuac9hjgFhD/8unFneD+ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzApcUvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzApcUvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48DBC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742632793;
	bh=HsTnnGmoLSOp2wXCVf3gotlUGuuEgMpd1HX5uC54etw=;
	h=To:Subject:From:Date:From;
	b=bzApcUvWcSChr69EigpIG1GyopY5OJOlISGnP7kpnQlmq4fVC7RcQp8ZINbjXDMs3
	 6pz9IDCkT4RMg05tsmefd9Mp5qj7VarxvOxA4qM1MdkbcMtwrY1HK8Q5hsXEgeZH4J
	 nakeKynDYK1uZsd+mKVvPG18QwA7ffBeNqvK/HBn8WeG5dWyKa7kmq8LbjSdrmQdxX
	 xXs8+7ImMW/YvQ/0IQuL900bMPRDfB1ZPcWiIKju7Mgm6x+O8bbpHxtTxokL5jhOxK
	 bWgFIUGZ0+OBLF/7t5E0Uw6vWErZca3NjjHVYoqAfu1apYBTDXvM1dfWTANqpr3y1H
	 Fg+FvDqN0+t+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F74C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174263279358.6998.1297070427606010016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8879864b36c23a1da1c7c4f7a36c5154ba0233d8877c3cf0924366c768697b
Date: Sat, 22 Mar 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742632793
