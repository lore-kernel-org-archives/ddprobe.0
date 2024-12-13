Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3430157C9F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734110754; cv=none; b=lTOSV22tvhMgyFrssr2jXiGeBZEctgjplJVWS/JIKNi1X1FYrKNhpbzBbWEdvTbqxVq+ekjKZ9UU1alhjupht4fHZIDvtVaqARVS5uiedpcB9L3Y85xqaoyudeP+SqSBYMOYid2GZFlHaEqXiLJUnU05ySEsyELisoLYs5/evnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734110754; c=relaxed/simple;
	bh=flcpuF7OY5991iycXciCbArbnR219skGVkLI1Byn6BY=;
	h=To:Subject:From:Message-Id:Date; b=XPG7GIdwhxY2nw+4VhnPsR12Fhy74RqpbTvc40RpfottLyWvMFnW6EAljaQt2xU/CQZ8b04pFTdeQn18B6EKkeBB++Pv/CFgIiuU98IF3P5x04W1/JWVSHWHEZVRtChR1q6nKAn61OcOLu2Yt+fwfrusz+NgNQNpyB5oeczVNoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWcZDdIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWcZDdIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FC7C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734110753;
	bh=flcpuF7OY5991iycXciCbArbnR219skGVkLI1Byn6BY=;
	h=To:Subject:From:Date:From;
	b=kWcZDdIHYxwhQaDsvufuIoPN/p/vE1+6xC4VvbJS2aODOBoBuCgzE3jVs3EuhCxtn
	 WIkWWsitj8Q1B6p8050s+yFTTbX4dH7kJBo57MPAB2wstpx/QGEIhIDAX2L/5xRztI
	 rIjBggbZk6wE0k3erejj3rXuB1cfiYAxzlU4yqfr/1f7EvdDLX78A8Ssa9XCz7pIcY
	 fbHucceNRuMPSdwqqg8Atmfed/tg44VigYnzlmrp1yVqm37lUZAUmepZ3VX/j197AS
	 4YEvnTYbUuRxdJ436O2fmDRATOeGt61fRdHc9w37/2WYFVXwclhh0fwbjvv4baRAfp
	 2spd3hPbr3cQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D325E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173411075363.23291.10898949965374256266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a4cd9e33f01fcb2cea0a40a2a9d85e80dde2f7eb4fad0e75d561aa6d1300a4
Date: Fri, 13 Dec 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734110753
