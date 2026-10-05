Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505CD19CC0F
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791169834; cv=none; b=OBUnSvsGZL5CH7XK8p2chBcOd+bUAX8ofN5cKnWUwALLP4BIrf73BTI2EON7YkxOkTdbYewCxuYzPLMDg1pJDZN9E9oA1cLN3DrFkeEgdheHhqw0SQKE4C2hnD+KHZ4Xdj+Rts0iwJcZG0YhG7yBTljAERrgt5rymNKRdrtjfyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791169834; c=relaxed/simple;
	bh=QQDgOS4jK8E952r6Ys9gvJ7JWBLARdJjxU86m6CbQgo=;
	h=To:Subject:From:Message-Id:Date; b=maAERMIrhIGhMeTobXJKZ/AcDnoeFFm69ORtmLd6qlR8Gcaqr9p1dK7qFexcvwBLSIebBRPVOLP1hJ53wIJLHPG/EX98AAj+c84FcCNB1WdwT29Mna6o2ctpnROgNVuiGfhFAGe2dyBhw6J34te8IyeQ7l9Hr9HjwsGsoMBulG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hg1c0M5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hg1c0M5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73A5C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791169833;
	bh=QQDgOS4jK8E952r6Ys9gvJ7JWBLARdJjxU86m6CbQgo=;
	h=To:Subject:From:Date:From;
	b=hg1c0M5+iMhOX+VuTsthTydPiDF3R6XlnLVl+jA586Q+YYNMWJ3U1+/BXRSU0JQR1
	 GIT2nMLE8yt6ZVS85CkfHQiGER2Cc9fcgeRpNQyfyTc/kt2SBK37ML8Lsd0H4pKRdN
	 Yixtrm22wOzNa6xr90Bm5YHqWkexY4ksJUk3UMRSU7jD7Cn1cjclk2OnZoir67Tvx9
	 ncmsCyLPitZks/cPEnNUORI+rfMIBINj9zIdfScxfzi2Vhzc6jA9uoAI/FM5LRNjYE
	 FeqXtH+1GJljP956YY4KPvY4kx0pCZWNX2NJeeuiiYNfK0OlSPDIDbqQJwF1XUkpQx
	 bOUPhMBfyF73A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9BBCA5FE2
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116983369.27864.14913725264892812183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b20236a1fc5a23bbf4118a13f7b64281c0396a8c5756bc0c27ab4f1c4c7d2c
Date: Mon, 05 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791169833
