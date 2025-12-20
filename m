Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11476279324
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766240034; cv=none; b=H6k5zeMkoBdyRUlgYceOY+fIw7xTOyiCWDiR1hLspFJwMOPjfk1O/2GJ9gKt8Lv2qDmDJeMN4AOP6NomySO7myAhgpvsjbi1NbWeltz5gV7jxG6x0jbA6rxgHiSSDu9gtOENnG9FryPCPmaZ5mZC+ycPWiUkSKI0opqZjGm2ff4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766240034; c=relaxed/simple;
	bh=OGkaE4LZclRziU0VabX2agB+PbHj4qh9wZH3aJazZrM=;
	h=To:Subject:From:Message-Id:Date; b=H+gw3ZmVmznmDOzeOnun5i/DmeZBs+lMxoBE4NtVVj91cLUjgTfUd6XcROvLvU/Dj+8/aoa2N+ziAHyqGCD78AjxLaNhsQz6jiCPmG5i79x1K9a3ZSNP2x3gZGdbrgFn5oY0UNMJqku7q7OrdTZAQCepdB/sWZM8HUnSYqyMJsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGl1Gbg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGl1Gbg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5197C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766240033;
	bh=OGkaE4LZclRziU0VabX2agB+PbHj4qh9wZH3aJazZrM=;
	h=To:Subject:From:Date:From;
	b=tGl1Gbg3WrREzNAo17kbDSbYzWVf1iJzlSPRbW5MdWN52iTX0Vq2lruUNTwiiF4+l
	 +729yWLlTfp5jWn4Yof6qsROSeLG64rJPul/6rAIok4EhUGZRQli+yz5/Y9bg29CVm
	 Fy7Oh4IuFzj5Qyap98VWmPO8paJw6j5M8C8msudeTn5g9GsvmqPfTgOxrAyS7TKdEh
	 wQSTxHptYshcTpPChzOgsHY8RTKZxBzx6VAUHd/sI5qr9uF8MjySKDKO0ukTiSsREm
	 YSVK1f2LD6N78//gTsYoeuPgNjRApzTJWAKSV4spd3BcYjSx7Ud6eB2+LqlLsY1LsA
	 DLWVjUDa4UAYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937CDD78797
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624003358.8974.14420467697711515523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02c8b294882d3abedefbcc2e857e3295074da520dbd60a7e7c5e791856f8461
Date: Sat, 20 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766240033
