Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FB31AC8BB
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723959354; cv=none; b=mp/VrWZ9mwDxCLRfiFMcvspWtVKN/TZtTwuctu27sRBFLjtcSC+O3/IuHwMka0xcfllobkcc+aDfZuCexK8/bGmxQuCm0IAxIlSMJkP6/UDcaxxcCWQXerRqFNiXjDo6cEH1Y+YSLBMvmt8ingZ0SgMkQV/PocuWDMNo7DyRfoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723959354; c=relaxed/simple;
	bh=ir2BDAIXFtZ4j8KTtrIeQT6U+vaVFsbObXI0J8RQtUM=;
	h=To:Subject:From:Message-Id:Date; b=E5GmSvBGYStFMePO0/0L9MYGuIqvX26no0K9x7CxXUX1CjbQNrcqhhdWj1qk8U9ljZCy9yVLZsKDYgueVlgppJDU2qpVOvVnqTCbck1lattKKGOzuf4rRZOqlFM/7SKTGFCTlKfQoFV6HL08TCTh6qKAOqp3Vc4nlBLVjjEeoC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3vZ0mBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3vZ0mBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF003C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723959353;
	bh=ir2BDAIXFtZ4j8KTtrIeQT6U+vaVFsbObXI0J8RQtUM=;
	h=To:Subject:From:Date:From;
	b=b3vZ0mBAMrRULL2JY5qQKnfc/nNRBQ9dG0LLAOgYqcs+1Demdvv8NbrOQPtEVyyno
	 Fa/NsLepIBsXoeh8EKQ/sh63N/Lyk19ZTLzTlPhnYSLAbk1u5TqTMNE/FU+MwdwjN1
	 tg3TVS29BSN9CjEp9pz8rtd9RYncXLthSbuC5UPUWpUqs0zG5xjpB7sLD4aUIqCHN1
	 iYBSIq3eBCm2WDvk9tT87jpMIwZnT3wK2G+Q+npCAiZuRcHcKcAJLhKEa8dUfccoXC
	 2woIVFBC3A7PmI3jBypSXtbTzVjwv8TIQXsQsZtlJ7pZWNImA5xcXSSAjwzJ8a11Ja
	 1J7Vi3t9xz+lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1C1C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172395935360.15104.7032280959979127605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d592cc05af9975879d706017c8b77b1ebd79c800500197a3ff369452eb104f
Date: Sun, 18 Aug 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723959353
