Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621A517FE
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 23:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713052163; cv=none; b=WF2PCR8N0rB2dZjNz1VMCClwcRCAwCZ7Krq7IxSMRLz9yH9dhETGG24NZTXwPpZGQbjWcco9BSw5gAH+XhoZaCy3qY6DQNxlpxzh5n8j5iwwYQ+GuYwHSVxFieP0CSVsvVtw69aMNRR+vBkcIHIza18h8E8xduyka04tYsiiqdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713052163; c=relaxed/simple;
	bh=xJdApFIxAe3pEjBRH2ezM1CeDtOjNfBlhSlRiQSbz5A=;
	h=To:Subject:From:Message-Id:Date; b=mwACF3llscV4vxIgYXwb/WuhD6NrgeQInubkmnCVYBtaCT64Ph9bGw6gxyxZc3rrqXNi7gxp6rqHJds3uM58mzAIkKnbhivimuAY0EuJXthahTM/C2mGzUnKFBvrXLy336Cj70t/l6xL+inU390V5ToqBFx4OMXpIT2kKeQZsgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ei9/VAO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ei9/VAO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A66C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 23:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713052162;
	bh=xJdApFIxAe3pEjBRH2ezM1CeDtOjNfBlhSlRiQSbz5A=;
	h=To:Subject:From:Date:From;
	b=Ei9/VAO5kfEXUmdvSCNGtQLmGC9lumxWzuHFSBG193u3Dn71Z9QyF5TCBIRe2tSAW
	 djv2KHGEP+X4F2NRR/W40gqLCpiu+248ZT7QUyXYvpl0BkPsL70SX8u+FZyTyrBUFR
	 B4Liiy+z7bJqdnjPqDJkr2mIAuZokFrqF8/7a6bIayTNkfuNSqm92peLCjqstC81ql
	 mq2fabJ7ZtP/Iyx72qCxSfMaYQoGRTPEVwd39ZjF4UIsHNqIAfb/EHeujNMEw2zNtG
	 T54OIpvCv/goBfk3ZPT1UNinnmxrHn6diGenwee9+oQKdmqLe9zIqJCzKpxP+ep/fl
	 ZZGUzUgYh6OfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6A0C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 23:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171305216275.17306.2552153791560285524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ad528d09d2f905c4bf8fac2810fe3b7e9af321e4ff9270de70e973254277d05
Date: Sat, 13 Apr 2024 23:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713052162
