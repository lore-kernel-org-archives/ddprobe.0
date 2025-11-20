Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A017308F32
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763661115; cv=none; b=VauH0ZsM3sTdJtT9C4jKAFVy7tJgzyKH/nmHzBp2K6vZ9F5RtJw/J3cr9IT/Z7FXjtVzqYwNBZgdB3PSX62joXLPcLGwfUB2p0Y5OIttjPpTjcfA5Bge/cduouzSuW6Bw4r1SaKSR67prPwOU1SLh2E6rNNi2Fs+8bTF0hludk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763661115; c=relaxed/simple;
	bh=qWf5Asv9joDCBVT8aY8DDyKU1XGWm3afWaY0ySDWgQc=;
	h=To:Subject:From:Message-Id:Date; b=UulEX9yv0JG3p6C9dRILVEXlvfuW8o2pt0C/SLqyC23/Ur3T+Xq+bPoNUZZuxiQ+hBROFWJo5BxelQMUlgN0vclMXI2tbvKQBf8KtRdpurvNyGyaIVARxbc7Q6HNjuUkFWXRDqa+5lOjokM66iTs/a5Ny35FzT5pXuIX/KnLOhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKhsbJxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKhsbJxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF815C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763661113;
	bh=qWf5Asv9joDCBVT8aY8DDyKU1XGWm3afWaY0ySDWgQc=;
	h=To:Subject:From:Date:From;
	b=EKhsbJxiit8fdTzNRplCoiE1OtUm7roiSc8G70ATSdMxMLPdk5WDYT0ymEx/1tLEu
	 MbZt3yqf990aBJjrOU6NvfIYDNjWSzQmEa+gXf8PWgYS0jF4jipYSuQxQDbCTw+ryC
	 +McUTF1FG8yX4ttpgeQ60uCa7qPq+xjCzR57Bnh4j/q3L/di47pzMuwmyNAmtCNXxq
	 trECwSVZQEznlTgkq0qi33mt+cIA9WyFnmyAesNvVsY2/XKOgkDDZrTnrsClUvJefy
	 HXwY2pazc5WfuDmCKRhVEGe9QZJdlaCzH5IBT5q1Fux6AZAFz6GNGGo6JCai9JojFT
	 gKkZ1wghIkHPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BEFCF9C51
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366111360.3692.1246758826695570321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad1bbfe2eba54a203de09547c72b65e8cf9500ea09e1b8124e73f92f35446b61
Date: Thu, 20 Nov 2025 17:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763661113
