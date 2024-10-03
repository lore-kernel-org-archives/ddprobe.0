Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458C31B969
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727956554; cv=none; b=ZMIJEKMv6er0Ht0lag+4vd6RHxq1xobSoycNgoZirvuySgMwo03jj3AXuOH8AyNVjMKHt7ihC8c1KLu3y2UW1YAWSXUcoGty80l7uoJi+72h5owRjLeGQv7LNxjYHe6x3nVbHEzQ9eF88NPd7Dg2reOdTha1TlqHB3+aS8sxgvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727956554; c=relaxed/simple;
	bh=Z4dH6/cHwTGMEDwYRoBphrHY0CBlvvJreBRiMmy5mLk=;
	h=To:Subject:From:Message-Id:Date; b=u+t633Gk8C0vPrwNblrZorlvUMqcUyWz59J80Gdd1tR7r71rGwIkpqRRIXiyEE+AWZI1sYIiSpGphjJgvJIy+D+qYeK974fzw7f6ABfae8yI5wMKubWe2ApuzSyzQ3C7AC13mez6Tlxd9syskfzvXljflJ5S2NEJrJ/9CA38CiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFIYC30i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFIYC30i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FE6C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727956553;
	bh=Z4dH6/cHwTGMEDwYRoBphrHY0CBlvvJreBRiMmy5mLk=;
	h=To:Subject:From:Date:From;
	b=MFIYC30imA+MRbZZvSXir2Kc+NlnXn0qewwIybQBbhkSO/1g2yQLuG3nvsv/mR5um
	 mRdZ0qIB/jJjHRab/ItkITKptaiHwil3gjx8FqhLnSyZgUhhuIyHbOKEJfVTslta1o
	 d67hY2Jr73TYOpQVVcuCwt7W6ZS9f7Y7ijRfMt1hbHuAHqvOqW9M/NDZ8Ew2i0Baex
	 35wC/0BEvrOsjOTvnPHqvfdqBUqz1JS42EASXc3iAiadTpPY0RiYO/2Fs7iL1aUcC1
	 VooVHo9PPwRL4WQMC7p6p0N+6I3Gj02yHZKjsAMIL8sn8ManW+ZWAZSjjeF2rhN+oH
	 qVW+k9H4X/ztw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF514CF34A1
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172795655369.28975.8013276805087231354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3717df8b02fd3656593a70e14f2b93ba3a49a01a53c0544149a95774b4c11d7
Date: Thu, 03 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727956553
