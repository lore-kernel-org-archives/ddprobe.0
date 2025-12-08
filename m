Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19ED8314B83
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765200174; cv=none; b=OnYUVjuytGnUT5thKC34cQjdQtpJ0XszJsbn58m4hEuVfgEI0m0B8Z+e4kyoWFLLCd8ShOdvI3xGyyGdmSgRkXxtFMhU0Tp5vtNnmfZSMOc/7g3s3YLjTxwoTSSyA6aIdtP0ok7wf6Wjm4CpYbOkuJEooNTwDhba2KQ4VFseq2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765200174; c=relaxed/simple;
	bh=RvTYka4Cb9uNb3Zhblk/fKxtCxwOeXKJL0r51Rpc1X0=;
	h=To:Subject:From:Message-Id:Date; b=co8unxSwZoCQy9BNY8p3nRO2769vfxf1PJh4JkLe4ggPFCIikmbUaeA/oSwQ/YvhKoXj7ciGzCkuC9pZgW5aMpEYP+f2WC+KzRzIcGUTn3kVKvx3rlHXxZ/7S5/fPNGz87ZsC844ccKUX+ucL4xndTxdpZr0ljtVFksg8cblKd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOSuo/i4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOSuo/i4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA8CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765200173;
	bh=RvTYka4Cb9uNb3Zhblk/fKxtCxwOeXKJL0r51Rpc1X0=;
	h=To:Subject:From:Date:From;
	b=OOSuo/i45PWun1Wab7vgGStQBEyyEc1uHEoQgFYLq78PeYzxUVIj65gKfeDQxf5bO
	 CVfHVj3hP2p6himGuaYHI1NENDSzE0VhRHr4A7d97EkK8J31Zn3r7F4Z46MHGygO/X
	 5cN168cGwbtwBxvmIoQaSQ6F8l4yJ92wnXAHxr1en438iO7tmXvrX5SNBcG1EG9wO3
	 CBCPNda01Fufxv5ZVb0geizA9U7ZIfSEiMXs9zjBO/r/qYpI3M6SDcM3D8/7+A2Yzj
	 UT5PlPC0nvon0f9OkDi3y+IUKfdLZgoLtp+hRK5a366c2utWq7U60ZfaUFj7NPqtyh
	 I0oVJOie74BlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C621D3B7E1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520017360.10410.6432917131039551606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 067ba5a9cd02d18d91befcd0080d4653cfebea4a0493e94e43901ffda573a3a8
Date: Mon, 08 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765200173
