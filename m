Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E953203AE
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764279773; cv=none; b=oV1Ji95g/+dt7znzjxzAMPO31NZHFAp87GUcBaDqT8rJLsAnfp4L03dowITlNCDQy696JnjedfCLufL/puWHU9LL0kD9t+K0gM91nYpWx6grTWjDW9z++HSRt8FFSVGAIshN+rDfiqv6meMWGyI1IymZnd+tFHaA6FwTmgMo0UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764279773; c=relaxed/simple;
	bh=vywD76cs0HQsWiIUbDc2Jlkim30PVjMl74B/X/vv88k=;
	h=To:Subject:From:Message-Id:Date; b=W2T1H1iJzBNnfEyhpN6g4JMdaFfCKHFKFtPDNCULMxEJPkDZnmwmvXe4SnoRcF+oTl+mgRNImqwwozNqfkZerl26KQrOb4X0wfcWhUqJKYPHBFulpcKLmr9dfwHav/TWnkWi+C5iPDdqqvUiXhlyOHOntvEoukv22eSSk6gpN+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQmWaFjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQmWaFjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A718AC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764279773;
	bh=vywD76cs0HQsWiIUbDc2Jlkim30PVjMl74B/X/vv88k=;
	h=To:Subject:From:Date:From;
	b=VQmWaFjl5pw8GHuTw1FA5cQzp7p1j0exruffRzIF0U9A/esiQ7hNEOGxLdOUM85mW
	 +Jol0KOPEbIejYuAgRVUdwgCSdKNu9qSRF+N3NzL97BYVI6TEvU5dwFRX4j9jJcFFr
	 e5HCzg/CwkNoXQfPg3iS+mFBzLmPqDj+6xR2e8aZ7CfMI7G1dXsEzZFCMldpvISdHU
	 cM5sTtd26gb5kB4hJ4I5AQwxVKYWuOXyd3ZMmsBppJBjna0TnUDAUodbH0lD7c4x8q
	 lpkRcxG2jF7mWiFhmULPJrUO5A+VxHNpvZAXlu9rddc4fGJfaE9UFk7r1iQG3TSY7P
	 izu+2eS2cPOhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F8AD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427977358.7258.9972043775690760804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077c17b4437851cc1815575c68340f6edc3ad77853dff6f0b5d9b6cbc4792bea
Date: Thu, 27 Nov 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764279773
