Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B831EEBA
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759381194; cv=none; b=ffDcfY2aM0a6QLdFRNtC6bLyHw2ZFTdJ1Mx4vL+GrNS8qcNgVIpcbfv9BL7hgyqAqO6bs34J/icLVPjo7gRh28Czmd6+b15QpoCgzyg8QWFq+mSIqA5AtnK1a0kHNx4K9fX/pm+0lkSwoacHBCzH6a/g5tJtGN7aDw/E4v5d3dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759381194; c=relaxed/simple;
	bh=bfEq4PVtEjnHQOi4RmMJI1HpRSp44FGfp7XFaRPy3/o=;
	h=To:Subject:From:Message-Id:Date; b=loxBapeLDgugpvvlFozQ7v08RasvfEO3ILdZDRpMHuVmVQJQfZp5axj8kW/sXK3p2Uia3MmsIQ7uxRWPyZptMcbaGFAIYdnPqgfxplGKYTYR6wrEZHqpOJ1OJf8rMMFaGx9jhjkLyywlWccRaJa4l40YNscEzC/EDq2DrmKc9WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWb/4y91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWb/4y91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A4CC4CEFC
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759381193;
	bh=bfEq4PVtEjnHQOi4RmMJI1HpRSp44FGfp7XFaRPy3/o=;
	h=To:Subject:From:Date:From;
	b=dWb/4y91exfa7frNvF/xuLma1KL7Ua4FB29CNRh/BIhaSvdirkKECCVZgfTfVR2xp
	 L9qurXmgFUCc9aQcNG7EAdMHklK7JJuI4/Sut1xutyPGSBZVKfukNtzrXQ8J6xQlSf
	 uR0OjuKS1AIEQoyF/WzsbIXKom5t7w5B/WegEWvi14gwgHTe3mzbpVY9Ft/md5d3vW
	 dKrZ/0EYI7ydmaHbb5/W4NezRFPr2SZgNa/JD5NMjb9YIh8N/feRNhzfZKdIJk6YE9
	 k71/nsvCyQzFnGZd68lPR4WZLbYIJS3hpEWLCgeIbQsz5DF7C2EQHi8p1fCi/LaaDD
	 cIo7piY49mJWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9199ACAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938119357.19757.9112448887674230968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34104cf594a1b5a541c964f8f60ddd134ef292fd924663a97a52eb0c5d3afdf3
Date: Thu, 02 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759381193
