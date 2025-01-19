Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FE82F29
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737281154; cv=none; b=emdYUY32VtxKcN8TtrRBRHM274Hfp81LHMdAWhUD53YuhtLYRry0pJO5EcNEe9UW6YWFkvlLAlNsdOk6ELRofGBuDlFEiZGEBJPAC6v+f2OrUle/zlVRWtpbgy3MS7ddY4g/Mn56dQdc+3UBgnA3DyEXbk6P3oPWPy33f+RUUO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737281154; c=relaxed/simple;
	bh=rf2EwNGm/UBz678vThyH+8cajefCQ1/wuU8YndmdfLI=;
	h=To:Subject:From:Message-Id:Date; b=YvmkFQkEzcX7OgDbGteb0LP0fg2bzey5LaB3y2XsGAfkydmSNHudQUc2ss8vDhOfo99k/uWP3NtJ3sjv7ZSOGgB1XwbD8LqtFpy5zeVUCIifMc1Y389T+SofTEQqZP9/4dzzFfgRpWAzKpW8SOCLtw/GVl1PFIY0acZiBMrL8Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIPjE3Ms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIPjE3Ms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB21CC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737281153;
	bh=rf2EwNGm/UBz678vThyH+8cajefCQ1/wuU8YndmdfLI=;
	h=To:Subject:From:Date:From;
	b=NIPjE3MsiCGcfdDsV/wifIJeyZi+z9A59LDfz60XjVruCpIPsAHiBk70MCfJl3bmN
	 /e7EgkUwrH5HkP9n6qr4nGuj1rrgQy+2+PsA0ydJGhtwoWTdxhaURm73LRSp7p6wg/
	 SZsDZ/r1kRrKeUJMTaVf6vFn3OMWxBun0aMsbRSal7tf0OVW9UvSDZGR6VCRLLgbDN
	 c/KCQFScJ5bjLorj4PQLhZfX/hYaT7QB1y3qB8JCGxgLzSP1h7Uci+cSsSj1AohrZN
	 Dkkri7nnrNCU69L4W1ASxlYWpID8NPssAhyKbp+9r4p3I44RrnZy4CO8XhJdbF1vy3
	 jc3kG9H9aDt+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FE5C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173728115357.9499.3665326167713082893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 071eff24e65c1a0f917cac19d93e3069e6e60c6e56344e4c68c97b104490d56b
Date: Sun, 19 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737281153
