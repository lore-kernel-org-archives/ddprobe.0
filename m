Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165BD338918
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763722314; cv=none; b=sw0KzjvV5NjnlgpwBUh6Gy5nXwcrDyWTR7A17bDy3EDDOPbpdXeGRMN83A5Fw//jxIgYN18c3ptCWdM7srT2ms1dmCmcFADz5B6569BMvnSUwUSDkdReqn0oBWQI/cKVjZ4dwCArtJZJA19TuodyHdOExxUeo7uo8Vs+hfh9fSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763722314; c=relaxed/simple;
	bh=WSyKLxI4hyOE1sLEqJH0ISGOKhOLhEgKARVl0+oHhQc=;
	h=To:Subject:From:Message-Id:Date; b=Y5QPGM4l5nkFZq6+ImUABoQ0sYNw4zBfjW8au1rwdJk4OgRCVZLz4qMjh2XOvBRAGwGtWlvxGWlN69VEuyiAOKFgwDWtTzjSiPqPGJ43I81ePZ8imvrTOgRhZf3oeLb+1b3g0G0SFZfJa+tV8ddIFDzSbm40gzVqaYtSChJ16co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipkPJVd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipkPJVd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A318CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763722313;
	bh=WSyKLxI4hyOE1sLEqJH0ISGOKhOLhEgKARVl0+oHhQc=;
	h=To:Subject:From:Date:From;
	b=ipkPJVd7GwvOjh/E+djWrK9a3gq3RyarQswuqzyCIV2iDzWho0MZzcC1qeD4HwzoM
	 R8lzG1ghC3KrR+f3DhWDzHXr0TUvw3Xc4Ipr1JeN2CkmfBq9/3C/By3Dxm+iO/tnWT
	 L7MgOH2j5mZkOsLfck+HeoD8YhyhqTXaMn/nSCZAL1volnrO4iHExtFV2f998SR+rd
	 2Zk88stpd3ow6jXoxtScA7ud24sVaV4P66jLOOnD1X04B7BqXKCVsxxpw7iRc7B8Mu
	 q0bJtG1yXEzXXxKTgZkiOHOyoWOIpL7pTCTZO7aeEPAbewkKtj+a98E5XUtRDJJwPd
	 n06L2wfhAVoEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B42CFA76D
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372231358.31176.13732734051870380724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14662f0eecac81fdae0bc412dd99b50123e1f4b031b44944d62daa2a68bb94f
Date: Fri, 21 Nov 2025 10:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763722313
