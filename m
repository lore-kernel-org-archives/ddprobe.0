Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 844DE157E6B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720803563; cv=none; b=Tw9Hb2ZQwDNSgbu3HZOBINySwlVpazAIv4+V2kH6jdQjLcwD564sJzQgbMKTMssG6wJH9516YcK4wDTopZP6faJ1SYSjtk2NFVrtc82UxdmyvlshZJackygIlvjcuB6APlC/BX4ePcGQQ/G70qGzdbpDcKNc4xXQYSxHPitPYMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720803563; c=relaxed/simple;
	bh=m8simTkNK+E37/rlHbf3guUHScNj5zmMMpz/MyUk3TE=;
	h=To:Subject:From:Message-Id:Date; b=qxxZDckmxy4CGRHQToagTUgsJi7yqj5Uo7VqYPIz7HwHxO4QqNQVH5TjdxhuGAAzQx/AAcFx844AbFd79LDUKbOcI3sNuWjgAznb4IrpRP/Z+leMbAE3bahi5QCyD82z/Nc/8KQuv6W5snCEZ2+i+3QbJTqhPQGLIzG+iDGbeQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxjA383m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxjA383m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2575C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720803563;
	bh=m8simTkNK+E37/rlHbf3guUHScNj5zmMMpz/MyUk3TE=;
	h=To:Subject:From:Date:From;
	b=IxjA383mtK0j5dqwx0FuYjDN/X6iQ/itaaL56r0bpGyF7hQ6aMe5EpiENh1ycYj0/
	 tml2qATou6qmeaGPcf/MepkBOK/Nsx7Wcj7gbB3v648i49fjbZwKKFLGF36s4tcG2J
	 L6Mw4Fa2N1XRn2Bph+CiWj2DTFFGA5erxRTMny8O0IsnmRzL8CPFA6/AqnAr69gWr0
	 klkStmzFN/vt/Amsnk2YrKujQskRCg/6i64UKgaHpYTK9+/1XMe64eQX71UoJnvYrJ
	 tQ3vJnbMbURmU96VBSNm81OrZPmYMpkoHEvC9erxrwGWWKQ2Lf+keruO67vIKySNjk
	 +27opVhCJQF/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5C96C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 16:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172080356286.5810.3951807540680908647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6e1c28657c3557ceb49d4deb39fd39696e2694f0783628c6327a55c0ba09d2
Date: Fri, 12 Jul 2024 16:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720803562
