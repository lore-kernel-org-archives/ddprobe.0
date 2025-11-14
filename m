Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0330C2749DF
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763131194; cv=none; b=M4IOsl+V9MiJgLexYCNfUAhsSBCSk0ZMPt90YF7Ekk26UtkNrdwIbVkVEFoxdPnCkkcvSq53JbH7MeeQwkSWRh35X/BDK7p4n+rciorMRzNqjWZTVZoQXyjwKsI/JXOYZCRUW7KqacwFcNejwdQ68pkPjZHnY9wi6SeyU+U75Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763131194; c=relaxed/simple;
	bh=ReYmZH1+4bXsjOPy4yXbC1rL8ahmcQp68lIWpDfnkIc=;
	h=To:Subject:From:Message-Id:Date; b=gIW3iMIVNG5e4KWfrjdSzKRKmGfvLGweLtZNpksffQDj0vLNwYFL2qsIPiApF7Z07p9quZCq6u6qbC+cs/SWIplWVAZouIA1qxTbYVaAKqQ57Lt7m3FBvEM566VUfrOzUEERj7WTIJlViWOYYMIcb3eHK0ytrbk4ka0SCJYEpd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kk/shcm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kk/shcm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B28CC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763131193;
	bh=ReYmZH1+4bXsjOPy4yXbC1rL8ahmcQp68lIWpDfnkIc=;
	h=To:Subject:From:Date:From;
	b=Kk/shcm/4blhD7EWrbtDDiLQcUj12xt96ymxIcHYpBCHhv5RS8sgeR5MuA4DyMkJl
	 INJNTi3INp6W8e44A8t4WXjVCFhDV8GrCVqIoZ+8lcnjXJDOwmSeh59UqEb0StcQAN
	 ovenZFAsAF3qUXMlmrHwn9ardSStNdktLI266+299zyLSAz2iMtfcKqGTHpPr8WLl8
	 Q5Z3x8p8zOxZBUQoXU9mXfiqeBUw2Rp5K9e+0s7RuKl115jI9mqb4M5KFqOprHL/Ko
	 0zSg3m6WQnrtU1lCjcZQCxdTWKJLPR3nAOpaWjaBHhSRE7SklfwPk7U9cLQ/PzN9c0
	 Kbd8nmLGV8MUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C3CCE7B13
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313119358.17777.3808807204397958918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3b5aeb3a54d2750fd0eb3d44bfb50c353ef4432ef037012ff454f33a59dae1
Date: Fri, 14 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763131193
