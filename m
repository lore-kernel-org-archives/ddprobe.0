Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6977243F4B7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792354234; cv=none; b=N/cyC4+HQgGoZjOeXki6ssFg8LHdJ4uBU0iWDl46FboeonbUIBUSm1tG8gtg2FV1VwwpwsMB9kiWtDGU0Xe6OMKA6dvSd3/I27h5EuwpqAFGyAnJxaghS17kI+YeABwJ1B6I2o+hHHe2QcsGCKFW5Zp45/3uib08TG8//ITkWgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792354234; c=relaxed/simple;
	bh=Yq6AkHh8SFlxdjp6fZAJC1FmJvKnFFgKwPtw5AMn2U8=;
	h=To:Subject:From:Message-Id:Date; b=Osa72RN2kvh5aq/Jw4wiOgDkWqR63KTweR9ltj5jszPs2ZrBHOOqdFJET7RPtZW87Cw/ojMMVeWOK7KdPHI/trIMnneEp+B8LO7gcIlnFBMAPrrfP9tGTlGByzWVUPuS3yaxDwOKoTzNSqcv0KSF1xKMQrUPgnI0qTHpwnkAWQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiumbhK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiumbhK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB266C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792354233;
	bh=Yq6AkHh8SFlxdjp6fZAJC1FmJvKnFFgKwPtw5AMn2U8=;
	h=To:Subject:From:Date:From;
	b=CiumbhK6r3kaXOQ0Hp+IYlNLSp5CEDCuDyxAwK2IYi3p/f8aG/hyoCLzrgBeCvi3T
	 qPSHHxtpvoNik26AIgc71bJ7M9CTAp7ar3L8yf913M7B4brZEJejJyLv5/8juVqjZM
	 34/ea8RqWs+GKZC7zsO8ydWoyMStG6uNuRqjw0UJK78toLlV2qCLlSodpQgDAXnq9p
	 OIohZGbUc4OxWgdj/WL7vqnGkS96aETvPH3O7ig3gNM57sGU5q+U/iEcJR3QtAxK+L
	 ZDnwdTrnICx6SplvQiFi+OKkeySUkSnqDwQXsOQY+Zn6Pk7zgsfACqCbYNZ7yBhvHm
	 09xOOvPfkqCGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FCBCCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235423372.3584.5953746643679455072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17ca80ac1c29adf4efa4f828eb23c43115b6665dc619b3034f9f030eb55519f
Date: Sun, 18 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792354233
