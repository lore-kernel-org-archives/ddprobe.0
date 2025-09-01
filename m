Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E63E1E2853
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756743596; cv=none; b=udgtUd3aiwdr+o61Qon+2iak728VpfG3SHMtmzEPyLcyFuXUjJ0zw4S5gCB8uOCa94JKB+a9F543790IOgj7d2mW0EJe0q7CtUuEfVawdKcGYNHuVx0CMbjh8bjntN+BAGQv1jOnFVssuJW3tSD6Ub4zDdl5zZXtpD6VWNJqXaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756743596; c=relaxed/simple;
	bh=m8YprLzJpUG7imR2C2gvS2JnHiY9Ih51pCekjns9qXo=;
	h=To:Subject:From:Message-Id:Date; b=MlzoxUjRUMKAKyuhSao9Hm897w1ziSWYPOIiAjkWG4HLxveSpHolCZUQ6WUbok0xT0miKbnb/4fFDMS+z0UubxiO1CZAHN67pyH8yc0y+4ZQM7NFuKLm7W0/b0fqPLWQjJbMM5aMbFsTkFvkf1MKz8DAlNm0vPpQygfd5AMMyuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5rqHPVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5rqHPVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4477C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756743593;
	bh=m8YprLzJpUG7imR2C2gvS2JnHiY9Ih51pCekjns9qXo=;
	h=To:Subject:From:Date:From;
	b=k5rqHPVs0+8gJi65gd403OuqsB/3qUyquCCKxrgZu3kPrigwbpl3SU0Kgu0GzRTjB
	 wBpMg4tuWbzlkdultQE6+6hvwsYM9XACY7N8eopT6YzqW3OK8vWBo+CFpRbj3gjSrm
	 w5PE+kFVWK25LJ3vQjZ/IAE2rwbcxZ8Cz5gmLf2Qv9sd8wNiepc04Ik6SinBqBqmfM
	 1Jf3p6OU1Nrx6Rj15TQ3jXvNXDIac0gDhslvA3ArfXOBtWzVd6/YZDmnWDD6KAWElL
	 3wJ21XAMNdR82RIj/LqxGMHNOUrhyN2XqBw+sPiyF+8SkhGN1evpffEC85BZzmQ8Mu
	 Lw3No4S/exORQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9CDCA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674359357.20256.7553066936507337288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e8e3dbb140b0a635ea27a515acd73ec325987a07ca2a189da4028c22a528c5
Date: Mon, 01 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756743593
