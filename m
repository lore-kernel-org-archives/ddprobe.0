Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574C93B2FFC
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785225634; cv=none; b=Qb3++yWe6LzMGYaN12Y5be2klg1Alh4ZnbYsqNeF3GvTHGrxqHeGCqv/3hE8rWk/AzESjdzgrWMv5lMxrpeouiZ2iu/zD+lnrmxm5cqL3OVeZnOAGYo/q2ZYPjVmQN92h+8e6dSEB6LIBxnQ7Ms2x0nJfAdB+poesmari8bmf5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785225634; c=relaxed/simple;
	bh=SAhH5twTm/+R/AuQ5X3cUZviS4gGqsVL93ntSu9X070=;
	h=To:Subject:From:Message-Id:Date; b=NHGyHFbahVRNJdSpxV+CwBWjFwIaLaBfDBvUWqx64sOk692nEsVf/diFPkYKYncWHtuXsDPtP321utjv0FdTKQ2bDNIB++AFwyY+susbdeXi0DTS/IHCGl4X0Ees7GZa02U6eQQzT3cZLOJp4wbLXmJDbXm8iuimj8B4C+F/RXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiDHh+jI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiDHh+jI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3C0C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785225633;
	bh=SAhH5twTm/+R/AuQ5X3cUZviS4gGqsVL93ntSu9X070=;
	h=To:Subject:From:Date:From;
	b=FiDHh+jILy1MN9eTergmVqVTukqGDdMe79DoP840fCnrD+6bTkwB/k2eTp77rhD1W
	 JpxLXlk0t6zQ9YM7X8k4PwAMX28qLllLB8ZVvlfZTJHNqgeVJjPUs5PSTAM13d6ctJ
	 WOxLLQwhQBSHie41ojw4SPqvtCrli1z1I4AW4pRPwu9Wd8EObBCYQROn0nSAQZegXq
	 alK/x+eTGLOJ4LpDRS1a3laMCY2WXivr8ImCim8bhYs3pvGV5E+m5EBqXPj+g1Ew7M
	 C+u8truD11C6Vuks2X/C1tFtPv0paML4DeRm7eMq0QwaQS5WCzFzhBdnl6lDLx4OZS
	 6Gubh6wkXc7hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9835C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522563368.1402.10592117240797532389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff73794742e85fe0114a6b25c5d105e66541c4535846679fd8f180ed4de9f0ab
Date: Tue, 28 Jul 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785225633
