Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DD420C472
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737627954; cv=none; b=pmJfePtJNTzzVQZSMRycsU8A3NUdgON/vkYjYQGqXSLj2P7fXLis+EwZpAmgvQHFzReuA3srPymOcv6U1uJmu7ITRUWARK961W3KjyoTxxC8+bvBtYkBQ0c2uCxkF2KwhmjwxE18SMUrtB50xQYhWnFv+sNWtMHRMiadeaWhSJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737627954; c=relaxed/simple;
	bh=i/i2W9JXbsxeu5heE+k0c+k69UzP7RK8G5NkfvK1lcM=;
	h=To:Subject:From:Message-Id:Date; b=XiyR+gz7X7UrwKC8n61vf7T5mpIWObEtBWzJORsa2XdlDTH7xgenTA6Q0SpqoadMusRRQSaWOyk/acH3eeWmGeXr71p/z3ailKA/LwEQkrvMuuhJnV1+G4GzRq1Z3PRLLhJu+hYCUKai1tGSHDUMsWN+QiHzYB96igEgIzmTWV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezpRlypG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezpRlypG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF0CC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737627953;
	bh=i/i2W9JXbsxeu5heE+k0c+k69UzP7RK8G5NkfvK1lcM=;
	h=To:Subject:From:Date:From;
	b=ezpRlypG7OnMgSrLLVTODELP6paFd+XdEmMmq/zuZy48vyMekFkk7GJYZPhTRRK1V
	 srAuOMgrbMssz55cvwwAf/5IKzKB3YFFVZ0jxsukfpiHP8yKsxVOiPiy4kdCPTNLMX
	 WafMsnXaDeP4dLV/UqXmNK1+A9yO3FJV5k80ScX6976KsP1wsrDiMlnefjUHMUR2xR
	 59IRUHpmDDID38Rbob5LXuAN2hpNrCLuprYkGDRAtnMaspYYOAFWhJz2FfgTPDl0vV
	 cQP+i9FFUXR/niAXDGsn0+1rqY1KahiqObdveC4KYHRmujx9/6HMgsaZ5ECZ+R4u8r
	 Oqpg5zMJLt3Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F357C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173762795357.15292.4447227724742886923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50708edf3954e9a7daba9246c2fe686d6ef4e56dfb7ae2d0018a9d60ed431be2
Date: Thu, 23 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737627953
