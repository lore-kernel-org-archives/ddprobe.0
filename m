Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F0730FC2F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765825974; cv=none; b=uh5TJxpKELS+j3ezcl7eb/WK1050S8wX77oOZUrr0i174mT/M+L/UJvSZGBB65r/2vQSlmOA84+TtEoBtMu9mQzORbGozPdDPrIHHKXUPeo3CLIXJAsfNrL8IJnvGb25AiE/nnYQssPrsDQ22kxemkq3iyXNTyu6ISEN2P+6TmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765825974; c=relaxed/simple;
	bh=01p22UFDJcKX0bGJxAWS6ASfHW7vXuXEoACb60nIKT8=;
	h=To:Subject:From:Message-Id:Date; b=ghbPE3EewEqk8qheEIeTlYMpzJmsBWeo3sPWgs5vGToOvX1yXIBfobjazunUtGBk9tt15vFxvdpSsN0JLYkQnIRMDIAKdFh3pwhFnyVqzaJUY6nc5HFr7u2uYbk+FbjODaVKjsXmke/FE+7WOerhDefth98hwwdhEVPU+Gj3xvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMfWhB/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMfWhB/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A517BC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765825973;
	bh=01p22UFDJcKX0bGJxAWS6ASfHW7vXuXEoACb60nIKT8=;
	h=To:Subject:From:Date:From;
	b=XMfWhB/AkGuFMARgAGbQsXxeTd8jHWwrwdIO+jbmHnMIMcex7AHPtjwKTuHPxXWv3
	 Ojkd+vakIao4w3R309d7yHwiXw1CV3aJYDpllHL4L/8/TwmvZMmMTFRM+1tlJ6yuXR
	 r8TpwPr3iKno/agZnzVDgZEoXhqn21ixtE3Vrh3HgpHE/0Hcp8vTCTvs7C9DMogt5q
	 14M006EVauowNdIDdrmUpiThEYo8MYttYJdZ/P2H2obHNjqn1KMbGL93LtFUZHESFH
	 i7UValTjm1++WDTgJIYAnpVJ6DntOCWzkN+HgYXwQN9sypKGOTCUUJQwvq5j6sUZRz
	 9yeC1jmJwoRSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F2D5B867
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582597359.21244.8287785670282336618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f190ab160306355d562af7817ffc76b3906275fa17e25a6df890205f081212e1
Date: Mon, 15 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765825973
