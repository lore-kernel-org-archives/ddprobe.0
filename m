Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458E113CA81
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727462154; cv=none; b=FDPGhX7aH499aBXr4gwf6NncJ/rqISFEmFtmmB4uLNbX8WxykW0nIC6HfyWoyB4RayVGTugTHpZCrVosHyg5KsXKNs1wvitunvlgnWWfNiZoXr8SeaaioQpokQrij/n7phADbJFBpN7iKT59k8621/Z8YuwqTFeavTLQw74CUfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727462154; c=relaxed/simple;
	bh=HOtrL465HkCzc1kyWgM/+D4ba6kM3s0czM54vqPKONU=;
	h=To:Subject:From:Message-Id:Date; b=Pg3j2QRxrDHiW+hnX9uceEl8CGMu0D0Q5wh5DiK9fy9E+DycApyuvUAeMrfy6J2/WfVvgcnypzEGczQDIGQpV4Sp9DWYT2tl8E5Friy6vCI+OFBXKtie2aRAEUPR6m3uVjtsN1taZONTBMlfogTdvq61iuJs4Ujw8GXLIcFdn24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xq75HD+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xq75HD+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE78FC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727462153;
	bh=HOtrL465HkCzc1kyWgM/+D4ba6kM3s0czM54vqPKONU=;
	h=To:Subject:From:Date:From;
	b=Xq75HD+Abnj3JdaVbViZnCdR65P3TTaYFmypZhsvy2IYhiibYWdiPBBLqpEaaQXzQ
	 HXtldOz2bN5Wv0ytrNPWpjeo+HVZhmMGTeuRLZtYbNvGGf3l9g9ZUkIRUFLJRAKE9x
	 YIJ6vB4vdyLrvOABHeQvhcXIAwlu3Ws4MS21YNnumyzBTFbPuLvElg5n3tk+OX5zCO
	 Gsy8iNU/NT8AD181iHZ9IsPFFpTEEmVYnuz44QXwS5GHY+JXIMZy3kDzhBgMYnSvpP
	 Dh1qcEEjqQpSThUowtqjPiALkkl6M3MJKX3rGD/7otvezMzTijwyQC4jUq0WlGpZxv
	 lzCPV7jrufhYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD54CDD1D3
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746215362.26329.12408692456928217266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197c24517dcde2c9941de7301f92c35d93772f6b6d9a9d4072520f2b66404e5c
Date: Fri, 27 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727462153
