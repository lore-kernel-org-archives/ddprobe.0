Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00233B19BF
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792208434; cv=none; b=ENxPP7K+bRJnyrwF9QTXnnLcDeZcatvms+o2ZTflOqQ7dHjzXc7U/FOD9/EkFfaYpIqXxGw6KFXbpne66SqynUBhJOq0IJUmQsz53FSZKbJY0/QNAKHafITn0tMQCmdeDSvn2xaewxaK8weyFqjI7C9rZFD7ubkMRalTh43CLQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792208434; c=relaxed/simple;
	bh=EphIkqXDjXSJFxxBUUqTVlpE7Nifz4ZmwunlAuknWOY=;
	h=To:Subject:From:Message-Id:Date; b=eBrX3sAJcDQeKH1sMgEDEaZTFRCD7+6/6LpM9qoBO7/7iw28qabmuDTFKQvHyE/ZiiEanLrMN0+yvQm6Aic90M8uOLKyucXdBvXqPCB6pw1gddwy4u8aZZv/oEVZpstvvRoTzqzmtkiiHPWCLJ+Os6e8Af+hAK9uRb05o8iAukc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFR0IM/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFR0IM/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5AAAC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792208433;
	bh=EphIkqXDjXSJFxxBUUqTVlpE7Nifz4ZmwunlAuknWOY=;
	h=To:Subject:From:Date:From;
	b=lFR0IM/uHchReLL1V/usHcWr8gimyrXhMem55kBfWjm7dfGU37WXixSKFeArp9Ps+
	 36js+sO/KxYJ8e+sVpRfELlWPyj5kwVKibxblCCkCEj/9l7/+pDriiZ+piIj32lCeD
	 FOCJJp4S3eDj5wIsqcxacRSUA5MhxW4je4IUckv9/kz+A7wX1wKf2PJNCjIoc94iof
	 rWFF9XvzUGchYzzl61Xbe+i9jrhE3vejRGHy81rqbgQwLmVNQxw4uU6zgsmrgV0V0T
	 S1uGwEIdA81o7X/XMdm+7cF12sWp6HqzZ5D9wia+jr96Jy6IVslXy5xA4/wVr413VM
	 NWkUehX5t14UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B045CCC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220843370.27750.11010494537154450667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85fb25653c2006350f92cd352b2df0c7947e1dfb323bb4154ce5f658c7de6df
Date: Sat, 17 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792208433
