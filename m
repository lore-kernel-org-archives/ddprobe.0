Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E6F41C6A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789125035; cv=none; b=jW7dh+Toa8qwyp0HY6tV7wblIbhwjGF9s6OMRrjQOUqtineumqwjYROUb9AzeTnM3vMtowHCP9ds9mCCmE0dnI1LnR90GPPGFKHXqJSUr21DFOJhyYAPKZ0G2kbPWkDIpXb+BIvg5RGCe9OfzqAVBG/vJNLd0pASsUPqbA/kXLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789125035; c=relaxed/simple;
	bh=aSh2eV7dguL3ilSlG0CfiqIM/m5vkVlknObS1fHVrc8=;
	h=To:Subject:From:Message-Id:Date; b=e/NKz87qXrRAtlCPd1MJL3Ea9vApkhPOYXhH890zXHvMN6cfilmf+fheOAqjfTX2BebvJZxG2AEcjzBCWVqg4l/zo9SP9mVHCmVl7PKp/WKX2sNKzuBdV0sy9YCdgY+m1K3IwPAc6JUqRctY+0xK5euGSPEwvkbW2DfkgyM0LRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Odi4fww7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Odi4fww7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27A6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789125033;
	bh=aSh2eV7dguL3ilSlG0CfiqIM/m5vkVlknObS1fHVrc8=;
	h=To:Subject:From:Date:From;
	b=Odi4fww728OAVkef54nZ4deB2HTqpKDGFfnURKDdHzUhMSms5RAaGZJJtWlEfscVx
	 ZkZ1GXul0MSTufHYcpUb6NSgaADj/xkBsN8VmOIcrPRlICiC4t5gonMj7k/dSisrMG
	 Mt97OsumbUevNdgucvFFQyoXI0qxRmluqb6tpQcXK8DAHdtV135XIxOtm0MIZ3ZDP0
	 hNhdy+7sYRD7z7PPcM67qOOBZWbdGFbLGsO1L96sCY+cqdR1F/w87GWQmATw12u+yX
	 3yMwcx85Tdfm1iELbq4v+kxlZymzqhzWtxYIE+YiJeEP+t8Xb+Y6mcu0GBrBPylzBL
	 NOq12yQk2UAKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEEFC88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912503369.18461.1126964857651225312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf58fe029c5cabd682fc15389a42aab36b657b539ea3fa551a4c96b615fedc59
Date: Fri, 11 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789125033
