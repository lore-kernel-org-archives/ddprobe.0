Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C24F1CAA78
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783279714; cv=none; b=RQWScp1qvKb/3UKcUAknjldXKgJcF5+6WGsbhZf8S7aQ4vjUEvbs6iqQL1xP1uylVU7E6ZtXYm532z6/Cw68Jr9murQ1mjgS4ay6xaQozaFKKnRJcr8vV08E/3fSXGyO2sn7iK9ROQtfqNlYfYrW7Nlee/7PUBs+0PlxUncyGLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783279714; c=relaxed/simple;
	bh=NVWv5IhZKRVUDUXujg+g2+vzf9YgjLvwGktM6k+4YzM=;
	h=To:Subject:From:Message-Id:Date; b=BqOMismfEokapcYi3mVRTuvSUd6UWK7W92FkiA+PD2kSCp+Z6X0t26cYxyrnEU5bou1pMphWHQOMkxoAQ2e8Q3nLpoFH+WhiN8zdFeck2pzUltGrNUCNpe5iQs+0TyJx/0qBvLp0oLEc9GZyy1Sez6wxYsN6pXanWU8n6LBvpp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CT1GlDpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CT1GlDpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE74EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783279713;
	bh=NVWv5IhZKRVUDUXujg+g2+vzf9YgjLvwGktM6k+4YzM=;
	h=To:Subject:From:Date:From;
	b=CT1GlDpu2r5fH7AbokzIImtQp52cGQMAtUZ4uhndz+yKgaNxYZXgSRDj+PzEJze7d
	 VWQI1yryXM8hvhTV0CvTzFr7VLEVGLM33z65VFL3yLBEF396Uo/JdpCb/Yv+ki9Dzh
	 pHljJg5ly1hkePVg1uL3IzLcuS8oEtRl7B4L4u1lDm5I/m5vMIozcw0QIvWiEQHAqZ
	 Q4vXNBtgAU+rNQ4IbLKzKw3/T8UKQvTCyk6gPAgBDMXdR4Ll7uAz8sRn5SkMA4dtT1
	 VOXPqMy9W4O9aLJXGyMoYMY0Bl8L8S5FxtUNOWJMVSCkeXEKq00Zoh+SdnLqyqsVSB
	 VVXxyj4xpbSIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B38C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327971368.10376.12993389402045226869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ced5fc12d8e40fd677fcce1840a8134af46441ac89a407cb82a9e5a62f367a
Date: Sun, 05 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783279713
