Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E04A5695
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786323634; cv=none; b=c8PRtDI0lp0653toqTICWqE8anF3ThIP7kvqjkWTkhJQthgMjF2ObtI5qic8T0wxcIoR+5f8Pfn3+6l8v1Spxpv7aoJdZVme93Sec8d+8sJLRmpOL638hyfaup1X2xulwUH4/GFfkYe4erGgSFokvnM5gpaB2UkiRz83RLCmdnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786323634; c=relaxed/simple;
	bh=hgIjTpgvQopyNbmyuK6e/2TSqbIDFZb5GSwbFVNawCM=;
	h=To:Subject:From:Message-Id:Date; b=faH+CFX4OazEOZvl5LqRhMErJCrF9tdMl9sYLKdmhIXJm8jepSrK0PV4noWUYVDACQaTQtYFdXNWetMx71wfochMUdmZCd1pPI+/4lLGWDiyGV97TC5qg768jpPA53WXEQ+fCy/XZbP8lubcMPvDwY0Vheei2D2Abhpffegqv24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdaseyIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdaseyIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC330C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786323633;
	bh=hgIjTpgvQopyNbmyuK6e/2TSqbIDFZb5GSwbFVNawCM=;
	h=To:Subject:From:Date:From;
	b=pdaseyIMiVO6sWVxb+wbcQXgZMGa595BE4LwyN+pHY3koOm2YvNiy0TRHW6lNcfG+
	 OBxr/X4jhd46AzW0ZZIO/tl6uMyOLDw/NCIKhySWGE1qfydRue+BylvfcVOZaG+Z7+
	 roAPJ0anGColf/JDPav551+U5fJa2/JB3Kr8rvd+q0hxMyr/lLzAC1WJEL4qYPI1QU
	 MRe94uKFziCryVisdsClyS7SBDmBeky8AGTnO6XWHmSHe8gg5b1yRgK1FMYU7LaUQ2
	 qE7hFHLsGsj3rKU91nUQa1C9ZTIKHlYNLr1VyGyFoR11ks2k+fnaLz2os6/YoXPW81
	 F3TRTdep3ASCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC1CC5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632363369.7480.11043088278532071562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b42286a94aed071e592c71382d8ebec0c26391fd123c74bee9502ca188a9f03
Date: Mon, 10 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786323633
