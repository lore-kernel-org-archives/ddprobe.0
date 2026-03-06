Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1676635294F
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772817894; cv=none; b=fuL7V/BGb8CeBWY2cww4IAOgr2JNEJuSUhoMhbSBeMRvV2+SeKtdMrQ37AcqwjjV/lOc7siqfWlMiEfIX4R1gUIrhp7Hiew3Pgd4WFRGrKPRtSi197XQMvPmKQiCVZhDIl00nsuz4/SalVWBJCRsU4scHHS0petsViz8wuovjTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772817894; c=relaxed/simple;
	bh=vt6Xb9I76wu3np1Pw+yuF+sYHIE0hsiKWMdfDCQpmd0=;
	h=To:Subject:From:Message-Id:Date; b=gCnghA8uYWyi9VE+LUjTlHE6TpEsWxZuLEl8NxHnxRWR5hWCycea7HiTiuGtuiZM6dxqmN9KbaeL1xMuaqDIpWEvfuWGZUl6+jnmqnkXgHyqurzbxAqyXLqEeLtP4Yz2kWyCnHsPE3ykqVUkSnpkI+yU3njThQWhXQjTZuJhhic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbMvBBa0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbMvBBa0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB375C19425
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772817893;
	bh=vt6Xb9I76wu3np1Pw+yuF+sYHIE0hsiKWMdfDCQpmd0=;
	h=To:Subject:From:Date:From;
	b=cbMvBBa0T2vF4W9WnoOlD47gIchprlLnEDl298lN6o9WVJL3+lfWFDsim5SyFAPJu
	 ziD0G86LvCHjtLkzpZLoJps9g3IzjrhL+gqK4iLcudwp0JbTgEalfoiVZsOYhRQ8BM
	 VPS1FLO3pbWrDUIIanZy1R3PRMvn0r4wRLEf0wJWpStcsMAXYnD41EzVbHe/UgNZLk
	 SQGwOH4GpKF63/HGqaHiSJ5fkMPbhckKh4sO6IFEcF5h9hslu0ps7I9gVDvxSDasoV
	 aZr3Xgd3ppWZ34PTV5crUqyPoyyowp4H0Th994SL6kkUj7k04b4w6k0erzhV7xuniH
	 +ziuXiuijZ62A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACE1FCC04D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281789362.15152.14495906658072479665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448c6c1c8b13f16cd6af8a733368708b290e777f03d68446a87a78a002205425
Date: Fri, 06 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772817893
