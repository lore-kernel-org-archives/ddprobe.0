Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EBD3FBEBC
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780564474; cv=none; b=qU4gYnuRa+X24Z/wJkmQF1LN7eiK153fhhHwXmJln0/HWZwLwtz/j74i88yXHNRrjxfLmlGizVZnyUE4kan9Hzie6YqAld/lK57lxln7umMeha50it8HickqFGiBAOqvTxqn659XEQgG6fqyKd00WDH0fJd6W7/zfA3gBue9l/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780564474; c=relaxed/simple;
	bh=lzN+Gars+0fM68P/4y0B7bAzK23dF/QST7HKdIqGNbk=;
	h=To:Subject:From:Message-Id:Date; b=j6zb3AlncL27I7wGOsGpxsC1YAxXoLJEhd5CLoQBP8pz92gZHsYmgUkMRevsd6h/O7piBwjCGisq24HPE+qWa9dzfgIABfraapSJE4QslmtS9jiLTrrHax+1QezO6UURBGs3ZFbmKVvjgL/OIdIW62aLknVmi1OT+WCIHGiibNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqy8d91U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqy8d91U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6E1C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780564473;
	bh=lzN+Gars+0fM68P/4y0B7bAzK23dF/QST7HKdIqGNbk=;
	h=To:Subject:From:Date:From;
	b=tqy8d91UCDb+0jnoAhZfzUEGDN3HwhH5jKvIkqju/dE9Cn5GcEuU0tuHtUtKDB10z
	 jfG5649ld+JQUFep1JOkpvnRqaqX3fRgdXOeSB0JKnDqmTlFIAoBEOeg1ppltNQDu4
	 seRfiBD0AR3jb/8MDCVJ8lwTeVR2j8XG8uw8CLmA6kXnxUCZEqP8RcyGLiq/8Zr2cb
	 P5PqwF4HrD65aU3TQg1rAITplcVMboRJKf+IIqO52Qh3InHEbqJNjQgK0/JDZPhhHg
	 UZgEmyWH4+VfJZpj6/n2AeZq0U9ci+HdfNrh0LgB+NcgDqYw20ml5j6GpeFZO8vVyj
	 EO2/V4GHgpMjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B225BCD6E57
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056447369.27895.5429417698220334358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79508d1b68059524d0a51db03b76428f7cb4286d94519c2cf1a4877473d5669
Date: Thu, 04 Jun 2026 09:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780564473
