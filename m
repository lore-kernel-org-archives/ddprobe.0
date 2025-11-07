Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156E2306D26
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762499394; cv=none; b=kL1C2D9uUUIq3PumOGNkTSrKhdqWgayJjgqdqzOz8i4tuwRpQFp1jRyu0bV+pbLG1YLHJByGR4Hze875y7KyI8zyeU1F00+Lp3af9o+oGoqED79RoVBs3d6jzrSrvEjF5LLwfVM5IHcN/xSg4DN/ANEyPvfnqBEfVAYRDbV8BBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762499394; c=relaxed/simple;
	bh=ih1aFRuNuN41hOTUruqhRflefiZUka707FXYZ9+u31E=;
	h=To:Subject:From:Message-Id:Date; b=QPA66wKnCbWpkjbuDTtB1Sm7td9yllKIXkr47aZEFLoPgZCzB9ozZHl9Ns/9EUv9Gmh0JMd7//N2WiVZhA3LT78V8j8BoWhbpyRntFvVfUkhpc3Nv5jGSWJGFWK/c0gJDhLDS9FBIc9rCOWqZ3n1eKPTCDltxUE+K4WCx/bW0DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7uc4ykk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7uc4ykk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF8AC113D0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762499393;
	bh=ih1aFRuNuN41hOTUruqhRflefiZUka707FXYZ9+u31E=;
	h=To:Subject:From:Date:From;
	b=Q7uc4ykkR14hCR4lkIH9kwx7Pz+RWNqHAi2MgYpoZUn4D8XHsymOk8Bzrrj3PmE4h
	 COudScDO2lql903uQ9eeVT1N8gyaAuMWJdwD/TiVwN4QniTKzjfZi20JWekt1EAQFq
	 4oULbzUG5+a6cnQ5ldIGwqROmROoE6eKlwrgCnstu/Kb0ePowJld8DFYky/2HgfmnV
	 kG43qvKLBixzf6W+J1nL7MFL9kLRrInnCK+3L22GXKlwvSui1oe5V92o1X0KV4peVz
	 Sh2hGw8bZLi3TXZa/YZu/24M6Ja8Xcq0LOqtdetTl/DnGzyU0k+VmiTQyjfvzQMoxJ
	 hyT3klcJMKRGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9053ECCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249939358.19048.1455697892970540092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8caf8b9b77290a0f4a562529e32ecf8fd3e8ed143fe83d3b561d91b9cf31ee54
Date: Fri, 07 Nov 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762499393
