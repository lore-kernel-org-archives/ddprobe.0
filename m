Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F32D442F
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736921754; cv=none; b=LQVVLmzBzFOj1r95d064qXdIpM4sXH1Hrvb2zrdWxinPXGEmqee0cCE23o+ot6asguP8/W1YLB03+GGhEbybpxnxextGvS7Pz1p69CS1CSbrzVo7j0FC7Uvsb+s4GLv0KdpcfF9i3D/4HaqyNfFxt6XPjM56pbbHacw8bdqAot4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736921754; c=relaxed/simple;
	bh=fhxwCn67Rekv28DsT6VyIkMGpYuwsa13/zXStFQbiEc=;
	h=To:Subject:From:Message-Id:Date; b=kaScSN1bfjmL/qRSisLa1ZY2rAwSpJ/CVyvtsfsXyLYP4wOQebDuyAVZqPAE3LXId9GiNTNiEz9Cp3gddLQ+Ko2br8q36VBlU3D2SF3IZQdnnIDpUi7ar7EBs+l/6mmXtDUm5IGqjn8m0hv96gR4ESVinETw+/KX7Xtqt7HtKPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbyJXzYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbyJXzYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EE6C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736921753;
	bh=fhxwCn67Rekv28DsT6VyIkMGpYuwsa13/zXStFQbiEc=;
	h=To:Subject:From:Date:From;
	b=UbyJXzYI2h/NDgKprwu2pgCtNh9qvtlNh0HuBoog+K6SgaIu25M1Ote2TLv2gyRm5
	 Dpny4JDiYagW3Oh8tzrf8q5sW1MqzQgov2mBfwsxI3KLUxx7eYYlP/IzoqNy9siF3y
	 Yr7AmZBGutsyRzA97OVu3vFCdCJotg5/nqN17dLOHghusaKVfZd/XDMRLu0uCHrc3H
	 uMyFcbnWrPKHrm5+zIrpJ5Dupv2iZ8vwx/5x7dJ+GNtQ22EDilesWIWq7mYNnymFdY
	 Lm1OnEI4jzHoGqTPQrLoDbaYusCn1osoeeUx8lZxNl0x6zgfxw8KFYgol0Iovyat/b
	 Hv5YbZVspp3FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A484DC02185
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173692175366.1377.15042111440283581317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aabbb24596f1f5c65566240a541aa257543c37e10ed6ad089060c8ea9746d16
Date: Wed, 15 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736921753
