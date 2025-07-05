Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217131386B4
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751735994; cv=none; b=Tf/8S/gZlHr37RFpYo7lzdANXqQaoC0KSDByXWYPNzPbg3nuaY8WxTYvLLk5zJzAVEYvMmb+u/3zE/YAHcibbUPtgycWzWHAH1PlnRexa75ReuQmq9Eqh2GE97aU63eV5wL49oPK1ksLzXgNLxXCszByHuHG2ulv1r6sCTUO+is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751735994; c=relaxed/simple;
	bh=swZOjYb1qqWPWynKwSfnTQ795XcaEj0byJTzWNnFR4c=;
	h=To:Subject:From:Message-Id:Date; b=CvP6Bb+GKi2iBBfdYKmCKFQ9xcqSENdxaSgYPCEN6wEz9IlKZFDKgegKcgqSJsAfuZMeEDjp/EtHFecEL+G8udg9XluYxQ4bKr42Ar6sezSZkn4T3ZO+DEOcmJxYuPpE1Jzxnm1QheeC0+PEBfKiRajyWjuWQsQ3MkjrEynQ0uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JW1kQnFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JW1kQnFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68E6C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751735993;
	bh=swZOjYb1qqWPWynKwSfnTQ795XcaEj0byJTzWNnFR4c=;
	h=To:Subject:From:Date:From;
	b=JW1kQnFW7G2oeobmaWJ2q1Rj49Z4IQ1n7ZwqR876y/+EMADJ8SjZmcMErSbqd7n9s
	 0l3hWUyFdbf8+i8yEqACIwbMNw2Bjy2fmJj1anHyVCfdbef1eB1u0sFT6sqKTcQnWz
	 dvgAdQFyE1oE1sz8nBqAU3/dhBuHc+Syg+plZ4B6pr5dTWstGouDQ5EErG5GOA/P1S
	 VOhZ6yMm50u7BA6HpztSKDDEQgUc3sNEn6IVLLOCJufPmrr98/LBCE3C6bwWxLwvBg
	 3dhG0f+g3DAzN0l1Z0YQS04Vx2mpG/IR5LK0LHoHl76llHqeU7QREfRBIZrvjoFVaT
	 SwDMKVqgh/T9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9382AC83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173599357.16052.10286068006011600747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19c8f13407c3f60af169fa44b8c59f380b45d87370920554047576cea6a949b
Date: Sat, 05 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751735993
