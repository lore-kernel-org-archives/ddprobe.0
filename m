Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3AA240EBAE
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789375235; cv=none; b=l5OfegcUUmfPVatl3csySWGCIJ4VAMo4Galtlu9eIJw98e/OAMDr4vFMWRtRY5xA47kPklmRSvAx1V3oJ0yBDsjMEzbGSmrLuutMENtZYUwdOOeeHTyC6gP/PDQsRk4LmnyVwRaY4HLbZbj2/1V7u8BtIwG/SiIZQfN5gZ1QVB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789375235; c=relaxed/simple;
	bh=FaEEasEGCfK13rfHLBt+gYJw0RXVhWLGbqNWY7d6ZIY=;
	h=To:Subject:From:Message-Id:Date; b=CqohV28E9SfRvai98vNIWG7aipt8v7WX+FsnXJSYSIDkkmVM4bP/opB1sdsQc0X4a+oiyhKOmangcixrrCRex/1GRH5bjyDJML2oNA/e8ASXX4cGcvOKiXtLuvCJeW5k84bu2LeVyRVX+HbRfwXl7t1OJGLCyx6yGe1x6m+e84I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWxVHT9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWxVHT9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC352C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789375233;
	bh=FaEEasEGCfK13rfHLBt+gYJw0RXVhWLGbqNWY7d6ZIY=;
	h=To:Subject:From:Date:From;
	b=TWxVHT9bfaUbgkrBSOfAE7bAuf0L/LFQIGfHzNqJNeP2RAIVHNJ1snciB0aZbqoj2
	 7EQTKHim/7iO2asx5U11osba6EWlwW0/087MffVfIaGevM1oXuwle//KIbo79qRg6C
	 MtmlXuBXVSw2agU1kVl/tmxLiiZl+EL3xHT7vEB/E+IBgSDmeolvWlKIcK3Upu0YP3
	 8uWtFYMPcxReiuuP2VO8M2z1tjqp6MsPFKj+xy0F3yAPsJnkOnPUQmztPv+2a112Q8
	 UQXjOmRIUstgFehTK2U5k2pmS+SKwMWICHJ5b7ENb9tqJ9gPYSScIiE8sIBjjRgEx9
	 4i73P2BYK82vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6EEC88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937523368.6698.651701492544126246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc850417d290dbb2f65a79861f3eaa4c5969ac7dd432c51e62887e0a195906c
Date: Mon, 14 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789375233
