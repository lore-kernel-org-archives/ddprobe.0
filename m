Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154E3391501
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774492494; cv=none; b=V/NZwdv6u5Kq4IPEsc11bUSSk1nTBXfpibLUhzsSheRGakfRdp9fYV91uOtphSp91XiPAS/zzB5AEWjKbDDP9LpDQIkbtZNfiAucOB3VTddVC1r/CWaGjUdEgGUlSwDX9d4d+rCRaw7rBfEuFybXPekZbALW9ZlXmSsu4QEfEQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774492494; c=relaxed/simple;
	bh=sEM8XGS3iiuUrkl16bThW+X8sr01J5NF0xMarh607Jk=;
	h=To:Subject:From:Message-Id:Date; b=adsvcqSOaZjoioW9dDIKt/g2iyIfJwWfN5WRpOZPEDB/EgxJu5w+hoEKYAVel5q4cvHiHMWiChqVsSdT17rJ2aKUP/9WXbGgvdUxAutgzV9U/1BsWxpYs2ewQ3Hknw/7Yn1/yDC1qqqMv2PxO5cY+s9cxlTuIhU+bFgoBc6OHoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gs3V+3Sx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gs3V+3Sx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7218C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774492493;
	bh=sEM8XGS3iiuUrkl16bThW+X8sr01J5NF0xMarh607Jk=;
	h=To:Subject:From:Date:From;
	b=gs3V+3SxAWoySrQd7MbPTBeB0Y9zYJdlPICnHbW5+DMIgx6+Q2V7h5i6rceaSCfEJ
	 8twoDcBbSLecjNmtvfId1RbJwhZDS+Xvi7NInMEK/upXycnEfVa1XdTbMHKeha+KLg
	 ewpOX6RguxcRTtTCzfUpr6NIDHXKcZ5gHK7eZ0+31Il+LpOExbYE+2Tk1GbRIGheeI
	 KmcnZxuTOZLxCsl1OblXRiXjK+5UGkwa/MDRpHkCPnpLD/npZHzbYRF6HboOq6Fn6i
	 zPBaIxmEiVF4H0SOEe5BOE9diIAvj+Wkg75k3qdlz6Bes3t9HyGvobXdig3zJyrVq2
	 cS8rG+Jpsu+Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946EC109E53D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449249358.14234.17947397560145933587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0393d49cd1414544f762886433d99279bd416541eba5a7b55c8bd59f5eb8d452
Date: Thu, 26 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774492493
