Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34606BA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747675794; cv=none; b=j7rDhWibocfQd+aXhKXORE73Qi5eSTctx/Y1qUDym7pOPJZKvIu5J5IY959rYv46KLrTXJO1WizXpqLqzqSLkJfufSxw5IYXTgebroWeN0KchQUNIcqHtU/H4btLZSQd4nTWhB0dDjImTopvJ8D5Uh+Q0PP1U/okcLL5cwY/8VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747675794; c=relaxed/simple;
	bh=oEyV6CC46wBGksgraR7UyRCmYjJQT0DNIEst+UR2RsI=;
	h=To:Subject:From:Message-Id:Date; b=c9kEzbpiwnry2xuTv1vCQnL8jnKp0qVPirp6r75rp4zxrDy7T4eRPrZGm3SD1ynA6qdmy7mapGjZPGCnmH6hFNJ5P1mFbLmSukRfGQ3707I14KBSFJk+9eUKY/5qnIgR+U+kSYNAY3a1pY+sz8go50E7gJeVAWllc7QZ8W3eQGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CthIlxwZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CthIlxwZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ED8C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747675793;
	bh=oEyV6CC46wBGksgraR7UyRCmYjJQT0DNIEst+UR2RsI=;
	h=To:Subject:From:Date:From;
	b=CthIlxwZFeAdHuyrveR0M54rSoGz3H2evCdpqGKzoYW69FnGD/naugf1VJAce8Wu5
	 Vz0XAUuQNSjHWZdouOaAIDgjV4wpKMHDHrA19ssOZosQmimgADez9Y+ZmdeYB8qUxZ
	 kK6YDb0ImXjh4QYc+NyPmDkFTf5xrkgg1TGQwPCDJQZHrvcvGfv01NPvwlo05DIZ5s
	 7UdqyQxtoIJplZkzJ1j/YdOJkQIX9O/5ZKmxnyWiuASHOHkUHWYa+xGPqVLidrDvAJ
	 kqf0gyMUfjxvcuEcdIpLhAZH/pnTE4cUKJQrgVgcuQ3HPLnjuMmcceMUKOdAiCBlYp
	 6FdJ01RPoFZMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A1C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767579359.19658.3498403845718700735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25894fe3601b0b30763fd3cfb81e16784b8fc7a378ae6e8422114783adbad013
Date: Mon, 19 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747675793
