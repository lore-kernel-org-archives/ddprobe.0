Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4622C25B083
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787570434; cv=none; b=SUbV4v1EDQUdSRjPSopZWWt2wOj8aczZJwrOV47t/w7kzICucQ6sBjsAbwj+NQC85kCWbcw/FbWREwx5+9fNmb6rgKJ/0gaZbA/mTSs0A8ybYZ+ukt24wOVlhMcAK1xnH/We1Y2RKSswThSnc7x2P9j9GF+8EDfvDahBHXC1v/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787570434; c=relaxed/simple;
	bh=t/4S0yx8NAu4+HI07aoTus1XQ3h1YYY9g9/r3vKOYpI=;
	h=To:Subject:From:Message-Id:Date; b=IEOQOJfvdFQCB71y4oFFHzn8QYFO4xZBSLkGM9Ow25vs+ukC1K0WMb3sNO8MTUkiIGNv2uncHJoPyL/2wAT0BB4VulpChQVMeafFScsCQHGoMorNWlQz8RxPi7xPcl2rpFjG6fus6hw6uGBYnvvr4t4W0BuFxzVd/6ZCfipsvqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UG1yt1bs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UG1yt1bs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF874C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787570433;
	bh=t/4S0yx8NAu4+HI07aoTus1XQ3h1YYY9g9/r3vKOYpI=;
	h=To:Subject:From:Date:From;
	b=UG1yt1bsl+zKBAqYGvpRjpoxCo9GHAJPRTophKf7GREEpZte88x9pp5P5ySErg0U/
	 Jg7iyiK5AUH9lIz4oXB0r0SO2M31P8Ucr83cED1RIxU8t749jwrnPczKBXYGSj4kYc
	 WTAtOMcVTtsOi2verhDfSU0A71Wue7OvEZM+maJ4BTBQ2smq3pT0ZQuCRMdBxE6dzN
	 H7BLiowO0OX0csdzOAlysOHSDY8JGcWqSPHCNZKIsus6O+OBY19+Adto9v3JHZtRVW
	 4qubFvQtd/kq0GjuGT8CEExRvEQIAw5roBlkjeOlsgRaKem/N5HQ3o5/W7roeq62Yk
	 HkyK2XDdwK18A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC19CC61CE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757043375.31093.6260251539829035653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93bf445b5317e568a93e5cd62f535dd6ff2190cc0f930268ee2266afa83119f
Date: Mon, 24 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787570433
