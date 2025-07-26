Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E741BEF7E
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753541994; cv=none; b=LelKBOnDJwpasJaypYfs8IS4Sb+TIJ8ysIkrWUuJIi53DB95BBgy+CPd6MHbl2jYp2rPIrQyEifvaQfoBPNDcnNC4L1Iy/qQPPfotU54VAXJDscLBlO3V7wRRsDtzGwm89JBzQZqhiruOf3xDQxnGNmh+D8SWWFuPYWt1B72hlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753541994; c=relaxed/simple;
	bh=1JVfCp6a7uc4YvQ8czgD02BYu2ZA9+U8/iDRG0ySm+s=;
	h=To:Subject:From:Message-Id:Date; b=bOdpyfK2MzEXcjqqTp2NYgX0sETOvEQSGWAslJonPmj/mT7t+IH4g0aDVe3lTVt+hCpx4h7hTjNUBa78olyqcgDYhpry1xlqCaQwb9xPb4W1Fm9fJ1ugxwG8TbdB0c+jVQTgGcha7juqWH2JCwYCZv+m/UztNqZiCoTOnw3p7KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neWdthUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neWdthUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5407C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753541993;
	bh=1JVfCp6a7uc4YvQ8czgD02BYu2ZA9+U8/iDRG0ySm+s=;
	h=To:Subject:From:Date:From;
	b=neWdthUItS+xVrUF/fMqOVVYYLLoIh3EWj8CEVPNEuuVwDWXi5J2sPa6zUUQ9gqd4
	 vXZgWnimwwOQhK2I7eOQneSmOTUb1n2UMr+zAqFzqw1Gy1pHSgKq4CKoda1zU17cU5
	 UgSiUOKDeEFffqxgUM5ZPmujOITk0P0Dislm1x9H8vjMK9SGnz88Y7j3L55jXC/oBl
	 LsyT5VIr4v4k3iH6feYEgaS4qTeSYAqiD2tuXpn3Cq95cFjVMjaGFZfEsGWurL77MI
	 NG7vqaZ3zu3S9CivQPyrdZhwf07vZSXCrlksd0I9vcO8XS/CWCk9OaUWnhwGVLx2Oc
	 5A97aaNXmUDUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94169C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354199357.10979.7558092507571018323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3592f1f8da5a59b0767624b88315bd6a3026f7e1037ca48a86816f9e1f3ef0b
Date: Sat, 26 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753541993
