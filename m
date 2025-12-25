Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2048C20DE3
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766628234; cv=none; b=WnAXmy4KS5CTW8XQkIH7dTU63Rlrd3YAo6zdrgKd9ZlUgz5XPt9SxLFUNBT3IbjRAC5HAbsSrOC0TPj8IqNU5GdJb1dtqG/5skF3pQk9aqFo0rP5dN0GGfCdoHgJ3ZfMHqlgjj6wgYW1R2XExookfFPZdnobdjnJsUtRnAnzU9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766628234; c=relaxed/simple;
	bh=Zvi+CZYvmUfB7VLbQnxoOl71EKoXAwJ3o+nAXaiTMnA=;
	h=To:Subject:From:Message-Id:Date; b=Q4IuS7c6w9G+bvUqkgVGcW/Bl2YOax+HgMymM7+sPnG7m5+qH9AvBiImhqzC71/bnhCNEcC7hLMJLz0dXr198yTimv7pu6fw1dMxKpvjbM2/VwFFgnPdhNcnlxZQFhWDyZ8CTY+g6NoNTRVqTy7ofOemEE4qkhlqsWcOYxBk/Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTOAHino; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTOAHino"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AB6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766628233;
	bh=Zvi+CZYvmUfB7VLbQnxoOl71EKoXAwJ3o+nAXaiTMnA=;
	h=To:Subject:From:Date:From;
	b=uTOAHinoR/MSgG/hQESwNVtffI27XUMTC5EbJ3pbYuvhZG8UAGSw4mwYL0S3NYju6
	 l4+qUOJ9Ynx/iw2kO1yczASdWCZUNEcjuSbqpe+idufY66+Qn/k5YyQPfVtBoVyqIW
	 ilOdCpHWL+o+04/dbaGfbA3UOAwq9WuQAMx3NnkRF/geL/GhpIJb25U5e93nl8nIZ+
	 O1DoKuP4rgtOlqodagCrGnNOzMm0KSQrBgBV3kEy6EQDst7kbO5yhztF/l4B4Ez2zR
	 ipxLziFEmkDvmXvk42mB7BlsZapAoIX47n/pmslv5y3LPo3H3nVI7gM0anS7zognRz
	 bG1dEyc5Fp3Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F898E784B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662823363.4643.3845106181076185266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3002f79d348b9fb61ec690c6a5b5f6fc7457271d13fa4f34c3bafea836c78de1
Date: Thu, 25 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766628233
