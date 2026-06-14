Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396AA12C534
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781396794; cv=none; b=FcCizXr9fUpuRTE2/IhaDiVWpyUMqGJP9vWN+4buXsXsFqJvyRiYcH9IxMwqC1OQV3Lr5Yf2AdaaGItPEuC8yIyGzBFzdi5Jg56yjL2qS2Lu28fumASOkchRuegkm7GfS2ewiEAhWVW/lAbgyH0M98bwsyI+oTyuaRL8l0HRgX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781396794; c=relaxed/simple;
	bh=bvyIex5z4X6U7o89T4KhwbUmKmLtIsqvHyo5pSTlCew=;
	h=To:Subject:From:Message-Id:Date; b=qOdsOG6pQeV1FKvSfIcyM45VuSp6wfmNALy6ndqK2hNagBYJYbNlgLbpavPIsFG+PM/g0ta6hqU5oJFPO2uERyyNFKCuVml9S4VO3JunrWFrkgUI0BQnxEqoSKwPz+Grv91AHieDY09obKQucfRxQ+ZuGE8WOQiFwrBk/cu9tsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUzhByXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUzhByXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9602C19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781396793;
	bh=bvyIex5z4X6U7o89T4KhwbUmKmLtIsqvHyo5pSTlCew=;
	h=To:Subject:From:Date:From;
	b=gUzhByXBacpBZ3Xyi3LPc05NoI2mUOqHBcF+mVilamHmiuvrezh031yX7W2dMpnsP
	 iAfjRbLPF+IVKOa8KG3cZjHsqubvvzRFm6NiimFOtWKw3evhRrMde/uu/eeu7XgADN
	 zOfrMPaQCBWoS3L/FsejS0GImIrivNVKaETTovWUF6tSpR+62/BkYWQUu2wVzou6Ps
	 rXs9O4UQS37bKTU90NSvV0kcCVGL19Z8kFFl6KA46bgA4EGu9aV2lpJLSh+uvJGJOI
	 SwJlYKnAEXjl3DQwaeZKKdtkQOJfRH3WdlVQxmNiVEUmQ6xvhh+jC12XYVQs6K84vf
	 QDdx/aXZ7vHfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0627CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139679368.24813.3744821037060305170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a987ce540ec486e640a2cb580bdbdef0a42cd5a9e1762b8d5591bd6749136d0e
Date: Sun, 14 Jun 2026 00:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781396793
