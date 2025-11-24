Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAB036D4E7
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763964114; cv=none; b=XR4caxIAya02CTRCsPPCVCa9pKSN5VgjiaLorZDL7fcwkHoLq7fqf7ETvMHuEIc7O4N8DYIpBsCt1oHyrjvVacQRYLOkgNuacYsh8scpZ3e4iCmTz2I7lB+/5UPe/sGsSRaAtG+C9Hxy/H1yHkAWGo+nQUh1YAs6qGAZqSKzIac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763964114; c=relaxed/simple;
	bh=biRVLR3x5xtO4xKlsYD9qBceMbB5LBazNlTo80ajfwU=;
	h=To:Subject:From:Message-Id:Date; b=RLW1o6iDIYU3PHwDmoVWoQQzegHBJNpp5pU0N7Gsv+NF7WauR+k6Rc9qJnGMTQxe5IjPTuNZwzVwdst9Xubj9igOe8zASHTf3Y5uxDQjHcpDCadmWkY5YqgALIgBZ70DQpUdPtzyHN4m6YsCzwzv9BGWOe09gciiXRx3SKhwQwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vzclv2YO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vzclv2YO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D98C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763964113;
	bh=biRVLR3x5xtO4xKlsYD9qBceMbB5LBazNlTo80ajfwU=;
	h=To:Subject:From:Date:From;
	b=Vzclv2YO9IfAMVYrwLqq2cycYettU2xIxhddwriMvdklZd1AA3o2lRjUbmcas42w4
	 YfONJYfRr1NcwGUgvvhKPoKQh3EaedJaBWmInV6J80PylJ+ScgrL6OL0yqGtSr3xeV
	 3W/s+LPCbjlnkoZ0BotZFRwIJCFTesSPdq/Icvd4NUKwTR0rZ5cYiggrPY7+vyibfF
	 5kps1t9Xpobqu4pXAF83Rc/bDU9WT5dHshZga6T+eLaIfNkP3bMPf+6wPFSlW3rwKH
	 b3mL6vy14LvNG3vIHfBwmdB9JU+toXY/bSiSLw4vFXFpIEja/x6rhckBGPOE6Xwrg3
	 sIg8Hldcl0ykA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ADBCFD318
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396411359.5143.12344517623722734837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303f0a3f68658bbd0a78420880b1d64a25d9ee797cfa6425cca97c3b7c88dc51
Date: Mon, 24 Nov 2025 06:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763964113
