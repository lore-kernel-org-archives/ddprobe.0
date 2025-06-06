Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6F9257D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749169194; cv=none; b=qW8JBkIHjguLX/XDJ0kovUV4ypcfG6cpDyHu47mUlM+qvLAnFnuDqpk29TKG1HyuvOFZudICLio27cIBtnrGLFfIbpT832Qpj6r46vhR5RbH72itI7i0XbUIgRX1Lm35nAsSxjymN/6+dw8w9SJ0JgCX4RkDLRwEXGbBjUPB8y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749169194; c=relaxed/simple;
	bh=fV39H8Q/yPMgp7eVKVc+xJZ3OWnpMnuUzlGP1Qf0IC0=;
	h=To:Subject:From:Message-Id:Date; b=MMrEA/Od9vUI5dn/D7vm1KTn12opNIILtZqdLsq4ga9mDeVdDfxhVp2Mqka7dPmGyCmM+4HMyANd23W9mkvsXCWH8zqb2fiIiVtJkKq19/qEjEyjc0pex3nJ7SPm6osJj/2rR9REXGb7f4jta7ahJTw0FM4LgFZmL1MzQzYICq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyTfweHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyTfweHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2357C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749169193;
	bh=fV39H8Q/yPMgp7eVKVc+xJZ3OWnpMnuUzlGP1Qf0IC0=;
	h=To:Subject:From:Date:From;
	b=YyTfweHggl4vMFvjCCouVnia032HSCzOPG2Sgcc0jRnh8viRdNH50q7s4lPCetSpq
	 KDxQCHEiO1gcMqyFK45FQ3S2ncK8p93KM3w17LKJf0ZUAypFj1IqjAwLvNVxNwI64X
	 n2+PiOJW/B2rVoO/MPxLAWbYF2zyYFnq3xt8EGDZEaiQ3/Vab0s8R+k3GaUQNphTVh
	 X9wI/SUY9LNdqTdDF5VRJCiNe78bJgJOWMkpx80/GG3y93pwpzxwaK6Dy7BslJRvjl
	 8YtSCR0FUwjPVvpslXyKVtKeTpU9rrWfiGuJpwNlgGnsseU6rdPa5FUDYvOw3rKT5g
	 d7cpwGBovj1KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6EAC5B555
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916919357.9732.192848171796129141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea8e4f560a0f8718dd9f1a41e3f81c6f0aefb1507255af5ec9bfcdc6f29747c
Date: Fri, 06 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749169193
