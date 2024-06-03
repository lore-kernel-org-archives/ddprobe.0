Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03ACA84A49
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 11:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717415723; cv=none; b=fxo3LOjkmzRNQ9PjIxBAslieqgGbOjBZg4NJVkQTLWWOH/bQMtSdOGyKiRXO05Jmqo72Ou846F0ODRajOg/JMBjLziJXBjJJWVXdng8692amQRLULBOE8f3Y62f/8aKO4aJGQvuMDGL0pCHjBokIRxfv4hLh2OImXiyGN5zD4dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717415723; c=relaxed/simple;
	bh=bQ4zf2/d796Diz4jOhXnBug8/OhT3ahil1OM9uODX44=;
	h=To:Subject:From:Message-Id:Date; b=F07Ly5hJpOV06TO2RT12Yv0kWBmA0ZLpIwRL0bx8bcKzkSpVRa7lSRuLZCam0pPifw6dckFVk17haJF6hTZg/VBOWuhJSA6SwgxJvN8+N9Tw1zfgy7sZUWHeGm9H/D9QBjka/DeGSagS1iHS+qTdQ8iKpTMIskKbI1OG6XrCU+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYapgv3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYapgv3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC969C4AF07
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 11:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717415722;
	bh=bQ4zf2/d796Diz4jOhXnBug8/OhT3ahil1OM9uODX44=;
	h=To:Subject:From:Date:From;
	b=hYapgv3Z8v/XWZJj+3MYnD/9nqWBTaCFqldIdJcVoVIqdaeCO9u1EyXSqQyW/xhCg
	 UU9AD+NtxMHV5FZwd5D0FtlN8wUJxp3PLJP7M9BFhtv30Mb1jccyG1gH4fNww66V2D
	 kPjv/OFql1EpC2+MHJOr4+3/NTP42FMmDNtuYDZ/HajT0Vwzxub9vePvRyB6WOSB20
	 ugaBWassWjxvrk1TFsCT3Mt8fH7T13Se3xCQLkvAhsb+BO863RhhgVTZJ96qO3cUSS
	 q9yCR0rYodjtaH1KKKkHwGptaan3Rt1rODALoq3x8dVdt43By9iHuzWKVnA1BUJSTj
	 Q8j9xrnpZ4RxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD68DC25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 11:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171741572283.11780.5692861767554561445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd93aaef3042546efa020224fe6269361ae6958b4e9860ad655e6e51af5f836
Date: Mon, 03 Jun 2024 11:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717415722
