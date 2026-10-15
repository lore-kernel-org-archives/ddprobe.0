Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 877EF5187E0
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792065034; cv=none; b=MkQb0pTExWbzDa4ieRZqPO8TqKnZkcCAtUul3PNXarlzKRpVVA+3YMv+LCqMxaJ4g+xS+BVa8TkKi8kUrgkQfLPbiGh92IpYSVdOK+Lyyn/2JMF3KgSGsccl+oxexEIz5HuMLovNbWW1o+9QdjJQ/PeNvzRBT2u42aIqzcIJghc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792065034; c=relaxed/simple;
	bh=HNG3BPA7HuZgc/AsOu1K0tGO2febQ/FhTtgGf3whmYk=;
	h=To:Subject:From:Message-Id:Date; b=pPDXhQdBQXd7IrDWlIJW67rEjRoGlGN13r0OChhW57SiiPdbb3BvP6+FUUK3fGE3kCZGCPFitdjyjXgIOeKJSJfCtNb2todWSet46orVqwfZfk/1G2I5Zla168llFkC6xpXWtwD4mn0/HbbN9HI190aqLCGmVOfF25MCr9/BHo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7J2xdnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7J2xdnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA758C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792065033;
	bh=HNG3BPA7HuZgc/AsOu1K0tGO2febQ/FhTtgGf3whmYk=;
	h=To:Subject:From:Date:From;
	b=R7J2xdnKCLku3Xg5ftOE7rn5uraT4RMiWmTC/wtHrO5RNSflpG27el3i42oWlRXhK
	 iKGZxSoRjLcIwIrQxn3GkWtdUaW6UIIGyWu/DsXQG6CkrpgdJJiGFHxN1eltUWrt0/
	 qqsg6cqSkbMTFOjAO4lcUtgFCUzc8u5mPUOwxwHJHk52ZxXd06shml0rtc3GrYT+N3
	 EcleC2bEJaMY0pVbnetbIMBsA0iRkkq0BApxLaEIauS8gGq3egWPnAYUV0Rbsyr4n0
	 YwznbuKyzfiN/YkrhPC19kesjqM+D6WSBDeQLnMM3n8boTVmRtogfLbE9hTz8g2zeF
	 yGv/ISqY5jFIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6DD0CC6B3D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206503373.4772.9791927112605150777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd3ac72890608a8f4c1093c267c5d8c1282ed60c0f2d350b4320c3749a8587f
Date: Thu, 15 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792065033
