Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AB022157E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748879994; cv=none; b=rL3Kw5+MvB1LdrL4fKcTKZZHeTgZu3YN/icnbWv7OzytspMWZtCoFfaFDc9z0XOYkriRbgOHag3NSXDxW77R8kLlfKFILyiTre+yEOA6ODHEzccx7+5Tvm7dzzLjktgWkD2fhc1YWSae2Fm7hgU3SYAsppuOwFvLvMR+2Wp3DCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748879994; c=relaxed/simple;
	bh=aUDPOIAIhn0XqjMHv0Z9kjQRQJSJHtTlX1L0dTzJans=;
	h=To:Subject:From:Message-Id:Date; b=bp8KYKvL37u8g/HFDAeJqt4lixn8T07b4vxzx9c3P1cPjDT9gQJwvTaZelbnCkL1hFryJtYnd0BhidUWUgHuPfMkMzuJ2VjCXmzS0+F8RNII9i6EOezNX+I4xprHWb6GCjlHKKP/mcJm7HfSooLMLOjC3uus4rv0qB1zTxBpAxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZxfhhqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZxfhhqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F06C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748879993;
	bh=aUDPOIAIhn0XqjMHv0Z9kjQRQJSJHtTlX1L0dTzJans=;
	h=To:Subject:From:Date:From;
	b=KZxfhhqCYHNSfEotjiWJawz17TwQnz03DdnWchX3GlGuFUW6bRsk58J3vZtyQmA8S
	 fyPdzJNxYdkX6zkxfMOBn3JGp37OSwpwqpUTPHRq5/r19mcg5Cf/A6lc0MskbbYQ8l
	 F0eEDe5jORCJNHorIRS4mRGuEoqYtlEz03dH71v9u0o8Gyfms38M2V1Qj0qXfKy7NT
	 Pop6/gyaR54LNvNvubxSq2El1R/l7ZM4/IrqTLI1QATr8QhTib22lV4FTFbyaijos4
	 TiywAElWw1iYNxeld26I5UoBumtWCkSQh7rbz3P5Fgrg65Lm3f9OTBstSKcEuNntaL
	 /xvsU8ww8Tskw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9025CC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887999358.6005.15432362026360219483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f044163d819ee3aa57a0dfc712d534f248fad26abe18283dcdd68c63cf4eb2b
Date: Mon, 02 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748879993
