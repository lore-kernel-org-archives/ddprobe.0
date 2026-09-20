Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577881FE471
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789867234; cv=none; b=G3n3ZCvqJQ8ULZimYLv1PJa4pEUbI1FHKIYBLMTbJwevrnUpGdz85Y+E9pkjxJcBgmyIF0UJTr0SCeh41VfviGqwRsOu5Xq85QH7pCIFYGAytPanGnddOtC+om4uXdpeH1JHeWLY3lY477pP9MCvdi5mi3xRXQtwC08SHZDLud0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789867234; c=relaxed/simple;
	bh=v5uvF5Nl6zJ+yAJmzfSvxS2/ajMYCzRhMukIHvhDpwE=;
	h=To:Subject:From:Message-Id:Date; b=I5pGZLIx560oKE1uocTNzKvjoc6ErFQAMRSQ4nJxDWx3i+rZFgfNHG2kwoV8iPWbOVjBt1hHc7G9H8ieLY1/ARD5EJlfFzK+RbadMYeDZhLmtLna/IvWDdRZ8f1r673WFbOezbwKoa4K3iW/zDQztQCirAk+lodVWb+dWp+/vOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2wtsp+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2wtsp+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2507C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789867233;
	bh=v5uvF5Nl6zJ+yAJmzfSvxS2/ajMYCzRhMukIHvhDpwE=;
	h=To:Subject:From:Date:From;
	b=f2wtsp+/y2oyqH8YoXRpTbT/gxhzenuRoceh+HR/05kF9n1Snc5hP31Y72HAutKRO
	 Rthh2xFN4AZe7Zwu5lDd3DRIY0pJEoNK/5y2tDaJ/1VfgA2TA+OYypddED/oSEvjWi
	 eqYxym6/j3y5a+7KzozTz6JD4QQf0SFN4Vi95r4iQeRb0nx7W2XBFmbBrmX69LzDMA
	 5mtUL9whjW+8VH5sXAKVwntDet3ezF+LbDp61C1XpjpcTQxo6GdbObuslSu/bTwIi/
	 z4EAkV0ZeKXfax5Yq1+wHBLTYlDlIwNw96ak5W4bUZ2zep2MtskeD/eLTwceePiW43
	 9n2MSeYblp5XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0113C982D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986723368.20570.15574961376748666854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f09968cf1aa19d8ec037d273eaf8c30c258dc0ce10a7ebb4e1bd911919e812
Date: Sun, 20 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789867233
