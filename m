Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1882528FC
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753480794; cv=none; b=aG43tJrtW/xevibhLTDJM2PzITpZ+4NvqDo5xe67JIKq6w2y1NJ5Tipm8ln1FGAVxNkAEXhpKX6r41IbyfR/cLy2E2VdICfkFxLZ+BXXRBWqVy+midXqvWZlRRHkKdF2eXg1NWeq7Ytel51ta9gu4l2K6UL5onLkjnfP+R+pSmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753480794; c=relaxed/simple;
	bh=MYZqQmDvIikODYQKdFZNaMpjlXFG3kSejEZQ7TS/jJs=;
	h=To:Subject:From:Message-Id:Date; b=FtCBBBh0cm1lDffRxZpD3w24jz053OdNlw8cDOB5VJml5dMrkTBjTAg0Jtx7SAyriNWzF3zoX9OCqbcNpTGVhRbFWrP9gUfWzlrfmfNc/qY309g3keKIAlUi9gQV8jZNou7HJVXcW+soYOOrNsA/nD4Z2HIfJHOAWJPuc5y5Lng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeG/ocVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeG/ocVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECAAC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753480793;
	bh=MYZqQmDvIikODYQKdFZNaMpjlXFG3kSejEZQ7TS/jJs=;
	h=To:Subject:From:Date:From;
	b=HeG/ocVCIou/XWz21b1vf/y4ncRbAOyf07DHnJ33KpLqQjnjXF+O8QX/wdo5bZqgP
	 Rsfd1SPuZE2bqH/FK02W8L5rR+iMMU90K5KEOmanJGOD5xl6bfp7CrNxZpyIuJHOb+
	 t7AEK/ZnuNiG0n5jCYEP14HPSE0rLqpez3Ato3rExWjd2msRHxwNBs0t1evox6vF5e
	 g4mIY3E+z8qOtxSdSl4qgUKsyaVZrSaNYYrJEyQQTk7J6N0x3RqhrC/NL1s4q/OJJn
	 57TgECCP30eSJ+LVaScp129TI9o1sBbC0QKMPAvVMjnFUwleHZD4ueNel63pP6v38J
	 /WA/XRpo5n/cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CDC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348079357.8506.5739295588275090551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53eee9d6917103cbe8b072f4dd32293aca3c548c8603d664827f2c6b4229a140
Date: Fri, 25 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753480793
