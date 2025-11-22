Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568DC2C029C
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763791314; cv=none; b=LIwxyKGbB9jyGQ0UhDmZ1Kf84wcOJ3mb4vq7tEailzgS9TaqeVvE6Sw18K3Y25LUns+rNaMGSkcbVFK272HJ521eoLQUsnXH2Uuz5VH/zshnw9Xw3Utu7eOXUgSHYHXg/DHmNpB4fNP6dKIhpvAuHS/shV4SMfuxipJe6tq6sg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763791314; c=relaxed/simple;
	bh=rgPshcHT/g5i3961GtugbepBPLW4gfEA2LYNatzLh+U=;
	h=To:Subject:From:Message-Id:Date; b=Lg6kDc4H79bzxDS7BcVSuyAU6AqgasUyd393A4jUdye3iP0PqgIO1Rt7Fs4JAwLvp+rUOkQibbXKUVUfDdPPUus+0/lGfvObTAJUjOmvkHTmtcucnksq2BBbf1mWHGmquGP0sPnW1qAKq6PXjPepjf9quo7YBUTiuGB5e0nFdWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSGKu21O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSGKu21O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9397C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763791313;
	bh=rgPshcHT/g5i3961GtugbepBPLW4gfEA2LYNatzLh+U=;
	h=To:Subject:From:Date:From;
	b=cSGKu21Obz1uuydzbEVPonEUPppN1jR0pDpXwoTRBiGDjm7m5jgVsYrjHmdt9gzxn
	 2ZNjS56j8kM7NuPeqCCfcgMUNOp7kgdoGq9BVPpXbrxFJRu1uC7u+IOb5+C/H0XzK+
	 Vtk8xvG8pfk/WS0p/9t/ck9R7lBJL/nVVgUsL6/jLfQWv64YIdWarJdgNhGht+gjUT
	 p4f89obN5WkkLOfMdkiQggSdNOqPR6A3iNaMwtoIPk1ZppBpgN1nij8g6DyNMS2F9o
	 n39R7kxy4aV4tCHGgNMOAzZvgDGDS0H1ZoeBLvyr7EMqu3fNChtheYXW+9Srq942n2
	 i+IN/ALECRAnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96137CFC51D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379131358.3679.4615198135940886485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ee3215096bd7c599e1c6c914901c9a52c748cdddc94fb25276f8cf3d5490ef
Date: Sat, 22 Nov 2025 06:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763791313
