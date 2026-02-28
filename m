Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F335F44CF50
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772291094; cv=none; b=KSPT6vI5uvK2AXJ+T/MqR92j6O0mYxkORpmEVOw3Z/jISazVlu7gFF5qyJOdDqSQ/Dbt50UsVNxuJ5Evsyaid1LcuqKQVyddJERbnbeHmG28yXFD4TNyEPmKKiDwIMswlzuLAdPIDMWmJU4Bx+lz5Pj+0TrpOm7nfBP276GuXrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772291094; c=relaxed/simple;
	bh=f1adgSztYXEoeSAh3xVeJi5TOm93/SFUfcVZgyddiz4=;
	h=To:Subject:From:Message-Id:Date; b=myvOywdXnvrNJDNXiNzd/Af3OhZSOsjFV00zgemzqxVvj2bJ1LSMzo6EGHyta7q8cbD+GPWfEbUn2vtpxgzcycWSX/bY5cNCU7F7Du5GPPXPyETbCIrg/GOyulvHooLvmTbpRgpaaRttXWkQtdBGgFh8NLrvgZoA7RXnncoAU8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YW9IPftm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YW9IPftm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3401C19421
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772291093;
	bh=f1adgSztYXEoeSAh3xVeJi5TOm93/SFUfcVZgyddiz4=;
	h=To:Subject:From:Date:From;
	b=YW9IPftmr9o/n/yKcYqBw6hFPE4X2zB85Xor2dnLBdIzNpqdBuY+u5SSrSLFdNyzZ
	 k+2rwD6wM2sEr08H/0t1IADXNSxoX7fLLqOu/N0wYfadlo15MiQmQh3LchXMzF/h14
	 XgLiCNet1ubHPEZYLJGSCefTvb+xRlwY9fXa3jBWracyxCdmJ9mn09LvSLoTil6B3T
	 Z6MPtB2RHOOcscV6ci8y0zZxWHViWIX96MJtGTy8O8IFMO4SIwNylQvsDezYt3Fbea
	 MGwDBiUIWsrfxuW7cfVbm73yMeyZtqe5+lS+W9kPneYrRoBuKOX5WohCBiJScQCjE0
	 2Vib4NNgqLJnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5F0FEE4D4
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229109357.3387.18237377899857339926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c3778082e6a595bed351e6d3a52f9f07f69c591c5cefe58632d156741d0b6c
Date: Sat, 28 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772291093
