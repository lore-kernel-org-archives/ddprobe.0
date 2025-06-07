Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262091D6DC5
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749333594; cv=none; b=O/LJgJLjjDqAKHlWOq4oPG2k65HZ00OMGgIy41bi41eSkkRTh9F+50CXcwz3hla7gUTKlyGZnwbd3+VyQEGQWlvfyrlT5jtowNv1XBBJb1xo8IYDIoOHVmJEKP4CXTAIJX+TTxPomxiToi7IzItJtp31ejDCf3+euZbDOvL+XL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749333594; c=relaxed/simple;
	bh=8fnwQX8TM1O5dLR1Zfy3XJzaRwKOSExd4vnBLXHOb7M=;
	h=To:Subject:From:Message-Id:Date; b=nzn+3RMgdEuERrXOF1+sudZ8/Vdk0fuQsvwgUL7pKcnjepp36GAM42O7p1G6Yx1QsrHM/NXwNWYWM2z+aNaCnyDPc/Y56OIjZmqjuYWExzoHfWjykEKWnA+2fJGRPh4Y+CQsXlS8/zirgqNrnUhkWLQT80g7fXHUk61nLbSOgS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UE/p/DAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UE/p/DAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75C5C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749333593;
	bh=8fnwQX8TM1O5dLR1Zfy3XJzaRwKOSExd4vnBLXHOb7M=;
	h=To:Subject:From:Date:From;
	b=UE/p/DApkDmoBx3dmSTCY6qMVEPCXDs0BEsCgZkWEEjhzsiwkIJAWrwt+3B0N9BIg
	 cEOoXVYnrRNk3Cw4sGPwNBOSC85gx6NbbUAUDYhCvma7LA8THva6+LLik6ZABrBuvd
	 SIELNygZFn0fNdACwFgwh0vpUKkIjc3sc+NMZ6z99qlAoowJL5XZIWqBE9K/IKMJth
	 VS9uZYJoVvguyeTU1cpxNSViRoM3+bMn1iu8vKWVFRPqMkqGu/xBAYN2HZiDtd08SS
	 NHlHtwlGNQME3CJnRFN+SO2J65pus1kNchkkVfwP8AFyHwt1xEC+x1Y1Fwhqo1Jrbh
	 0dPTOgnE2xEDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E0C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933359357.10369.4367677182704755244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907584d44fc22fad0204c0ab966945726afa50731f541524241d259fa002093c
Date: Sat, 07 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749333593
