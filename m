Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31844A35
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734902154; cv=none; b=Sgd21oRNk9kSm2fPiAc25DTJlvDzU7in9hG3LuMUV3ygvDF1uqYdtHYK8IOhKWl8LgAF5JZ2inPXsQY1SEUuEnth+YIbKpr5Pu5tSKNsHhJkJgVcgCDv/hEXUBvnUjtVr4etV0zPrfM+rLOOuQuIRQTl53XxCQmphyio0pCtlCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734902154; c=relaxed/simple;
	bh=X3rZLfe5x6kmZA6f/oPPzhLH0cPV1FkQR9DKvIIGzZY=;
	h=To:Subject:From:Message-Id:Date; b=Gqx+TwAJ82Z1+iJpmgJ7Ojv0f08mdbj/sNIOu3DMjvm479qeM3rpyxm/GwB/fTTqu/q+hHq3QbEBCS+YZSMernAJbab3B1Ay7fWiAJnldCLITfJ2XyRz/sS4vxpaTPGsCGURTUj2BSK7CNdVYKjx+eNqOen8qMdfCc3t5/YdRmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAH//4Cr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAH//4Cr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32F7C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734902153;
	bh=X3rZLfe5x6kmZA6f/oPPzhLH0cPV1FkQR9DKvIIGzZY=;
	h=To:Subject:From:Date:From;
	b=kAH//4CrVXwF1DB0BioLQjSuIJ6ebTVVT1WhsU804tI+OrpuVH2ytgu39ekIZhh5b
	 WBA0YRa/Zt8qO2/5iKHrz1r6MqPb3Kfzy3kRHYiz/V8djRw5NqvwhrCqdHGgyPOs2d
	 xMLyfE1j7EF/CtKAB9tBDCw4/P0/2CYus9WpVzd++F7vJratG7HGdF6rdCIFrM85fA
	 hi2O500u1LtatqQpMw5OQZMPyfCIUVbI1p+H9R2yywECAX2v29Y+dml/1CwlfxbTwC
	 iS/hnJViSgggaHDEChUMshRPHUrGlT8rxT+tMpeVVDXKRuGq3CPqK5fmxQVXGMlKc6
	 rGZX9K/xySCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F478E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173490215357.3711.3725436266039031877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c0a9c91f01583a9f7867c362f97f95233c96ba0c2a66475268759c4e20a5490
Date: Sun, 22 Dec 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734902153
