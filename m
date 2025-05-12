Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40009293724
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747052996; cv=none; b=LVrLQfrTegD+d93PObXSFO3qnOogxIHDog9XNtO4DHvgMxEdFlho7VSOITTPMPF4/lQE5VeTCAaAX9M0WYIEQgcG9xRgQF6tkgoRV3ReVGwx8ZOMkFZerKRFiz1WLq34+8Mu4mPijKR1dSA6Eku+Pi7CJ56inN/2cnvduKPY7no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747052996; c=relaxed/simple;
	bh=dyXwdFeDTFRcYUIPb0cfmuhzk0RIYu9z6p3oOI7Bs6I=;
	h=To:Subject:From:Message-Id:Date; b=PKCMLnc//OxR0APAExfhNx+QHD3zmfIDlKrt+lxD3SMHlXYvcqqyYyJ5nVsv2CcKcwXlmyD7mTSSz3L6/tuG+JWdct8Qnwmr3eBI0d624z7vx6lS/royhW3XwkOpwElEQXQfkubBV19gQs2k2F+3SJHB1HFHMsz2aWTkzTi4ey4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2vhoUEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2vhoUEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53E9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747052993;
	bh=dyXwdFeDTFRcYUIPb0cfmuhzk0RIYu9z6p3oOI7Bs6I=;
	h=To:Subject:From:Date:From;
	b=V2vhoUElOq2brcu1v4h7PFkzfE3BK0l+3rNK83la87WsXeXbYLuqf43LHdc8AHLKD
	 +AREpx1ea+fwY8QRxzWSChwwRF708KqpdrMScFcBMoMiCfwhDa8Q5IU2hVQvdKZAbM
	 S+fY13JOraj+BiduziuJI7LChTySLrkM5BKKdCzxiVORzAi15u6pj6hY5g9micN/1Q
	 QBkpoKuFXldduA8xXy3bYiUoR/OiTeS61ywt+xxdFnNxYccBQZ/FLj/EEweTaUwOp2
	 jgEsUIOYW5j/v8nWiUolXPHg3efyJdsXD6BTpSIHe8tMJJu/kmNZB/I0SHFS67hWkz
	 lf1f+TDQ9f01Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D86C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705299358.5638.12440129970997371576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4330acbc8216ad2817b603a92f083cf509def800938bb938bac09363189eb1a2
Date: Mon, 12 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747052993
