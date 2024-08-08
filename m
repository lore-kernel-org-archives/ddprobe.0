Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFF0EEC5
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723121154; cv=none; b=IiYtEhWTX8CmWs1RgTWOfTtQwA2cdVEMOeEg9ACohPhTEed6jSzuTTvZPX5LJ8fOsI7zKhoPvC4opTfoyMj6RoLH1xNcVo3jaHg8Ha9wu/eEyQafF0BLzj3vz8mNAOdFM/z9qTkp22pZrOETMKHZn7PSgEXct5+0IgKW5SvC9a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723121154; c=relaxed/simple;
	bh=mWxOmhw5/8loXpKVqCZy1tZT9p2Olf1QvW8jgwQLxWQ=;
	h=To:Subject:From:Message-Id:Date; b=F3GLSA6VlbU9DabKoGBndglmbSm7guJG8V2GKiSBNCQ38s+f6RCLaLDqUv1dt+51GYbNOkylT+AKSopDPtymF/pbn7tePlx0WEVOIsLl8zkYHmbFNSX5bEsNI3z9O2/T90j0KKF8gHaC5pPCOHN7r970FmFl2jnSaj3ZsKV4v2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLVEZPSs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLVEZPSs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F98C4AF0C
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723121153;
	bh=mWxOmhw5/8loXpKVqCZy1tZT9p2Olf1QvW8jgwQLxWQ=;
	h=To:Subject:From:Date:From;
	b=LLVEZPSsxgL8kugB4uZjghHunlBc8AiHbJf6gR1NdpDgZFcLADcQVNxAOCH3BuJ6+
	 gKogicB7hq8uoGZ216Pq3sLrVNegZeYurCxKg7qOimCCCU4J8Mk+7nw2LnilO/q5I7
	 cSxB/UDnkd4mNK1SJ+0ApOXYI5WbKTY0R6gRvzcbUJ10LWikfzKl+NwTjLM3ZeWG7Q
	 yZcLEyRZaQtBzaIQKZ2BqwqCS8KCkksynfjBlUrZCv2Dwn6e+u1WvhTOW3Ln0U6aOg
	 IId1lsBYkHN3jPh8WTMa8KPWhoR5nYPR+6qczr1iYjhl7WquTnm+/dyr+P3U33NgHP
	 iIh84YzKJSMzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93175C52D6F
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172312115358.2345.12040163157839621413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 451b002f9242fce1d5d08394a07bd39df7224063045eef9d83b44810c9247cb2
Date: Thu, 08 Aug 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723121153
