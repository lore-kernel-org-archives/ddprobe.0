Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062CCB640
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723064754; cv=none; b=Pu3rqwekVjntyzLRZoYnV9HxvrLOEIZxcySrhvGwIFYbmwdqiaYgDAbolPfRSiSbMWQiDFKqjM7AAAAMwIKCLkA7ykgX4IX/NCUcZUCyBp/zNBs0ztNANHXCsRdkrhiJlWKxvVMY1ouLSoQzzHHH4PDynXjxokwOxXqg/Y/QhFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723064754; c=relaxed/simple;
	bh=5UlVk5w5tg0sKXMIwCkllfiQEcXFgMzj6fU0OCFtx/0=;
	h=To:Subject:From:Message-Id:Date; b=F+HpNrTBcTOe6s4AOEv6LZiQIOxlMv1zP6uVl/H6Sdj0+qHIhRjNVTw+1CXtiwRSxAtTEfEMJdNZaNujEuu75dbAvImnNuLsnt4wfRmvcAioh1MgXh2+CX1mfgW4D6AmlucXdLOFdWKLsV9Ha6C3Crc04J8MTmg1SuWR6cZ/IFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koEMsKbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koEMsKbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C41C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723064753;
	bh=5UlVk5w5tg0sKXMIwCkllfiQEcXFgMzj6fU0OCFtx/0=;
	h=To:Subject:From:Date:From;
	b=koEMsKbWrekfacHf+X0Nvn2Jy3xCs7wbseCj0KLdpHq34H/3PEoq5nAK3NLUdilGf
	 7x8mCLRvCW++Y9NqgCRsuYWP4L3lFZLZCQpuLDzaM0YJEjXHItf3F50CJiqxibNIyv
	 4s1HlRbEkB2jqPqmJgMOJqk4dXS9IaGPlpGP01PJ33Zu/gNoKB14gLLj08xx9VtQpo
	 ItmmQHvP8a/XTAqGhp7xaLMi9Tm9IIvmXnVgSDIbahVUNkn9Cl3rrztLWmtubWY7Ec
	 O28dXvAwV/C+rF0K341NM+0R8BYu/9Q65GnzT3psAuovRK+CUtTDrH+9p0ouKxymNJ
	 hLmTqZCBH5OHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA09BC52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172306475368.1917.16403625812896638057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2e5672b86f02bb0120c1e3c9f14363f93aeafb68c8c9f8ae9f9b1968dd7f60
Date: Wed, 07 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723064753
