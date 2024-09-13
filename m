Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE94945A
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726237553; cv=none; b=KaGUEDnfz1lNAVVpk33Wn7QQInidiFR/Oxhnb0RVBBbuqP6KvxerRxm5Qx0y+3S+UDsMTW7OsH6EJVjrdsNyIPxzidPxjH10W0eTdDGRc3lCVRVCG1kvpGdt6xZl1r+q7thkDeHnQ+lvvg5N9umXtNtzwwpfo0J6riogBDkZn0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726237553; c=relaxed/simple;
	bh=AWsAW7yKERbePPAPVaxzT31YwnU3VwOaShgvNWP+eTU=;
	h=To:Subject:From:Message-Id:Date; b=bLAl39quo3HtASPYMl/4NwdUKj0/a7cPm2b4yQ4QAmtmNLrKI0CycVdx2kdSMHfB2YSia1tBMjZuL44YxAHpsNWNC7kjuijegm9Uu0flZVNd0SzML6zTpdkimpH4KOlNm8YuWJSAbn59w9NkI64plWK95inOrRLNPke+ex82iek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkCVvSKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkCVvSKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A327CC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726237553;
	bh=AWsAW7yKERbePPAPVaxzT31YwnU3VwOaShgvNWP+eTU=;
	h=To:Subject:From:Date:From;
	b=GkCVvSKgB80VyL3/990ID+z8K0l0pIsWDVplFT0VMGx5qW2GYHI2z8ck5onWnLiSr
	 fOg8iBoNf8Fgol9PDBhjTK35oVSqe1e67xRtUHjf4+CC9E/hGOcJuZmheMOphdZ+pA
	 sKsf4d2N8gqhGHL++F94NEMiVd9lVCDlKcdH1apDupMhNZtWCc3WDWeGtvc+lnzjPR
	 qEdn1/WtQTwuntDlOSX4CcvlwjO3uZAKLHJ8Uve6RYp2yuHrK7im8J9zk5GOw9cILv
	 f6Q8HtspFn3y3a3DB0SLgb6IY/QAa0eRqZAZwIz4TGCfnNyEWhYy/v0AXG3h7spcyB
	 ULTFtPCp7AOBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94479FA3755
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172623755359.31217.5858280750979137780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00412cacc116baca42d6587ab81ce86dd49e08395baad83134cb75c8dbe3106
Date: Fri, 13 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726237553
