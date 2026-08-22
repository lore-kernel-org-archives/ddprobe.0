Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7F42DECA1
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787359834; cv=none; b=LVQgyjM54CX8rJzUjFfYhF8GXSAvGbZL8QlDQykATESqGrihxqwkEK3LMTBSzKD3zXQ9xEQ0g8LRxYONK7S5UUKFS72A/+bQrE3qa9f3tEmxpF+VZJAunP7lrCf3h17QVgWjVXMaGqwpJW1V6fXYmqcNJ5TPFXzFdheNuj6JuGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787359834; c=relaxed/simple;
	bh=kpYfHGkvattAaenAM4TSgNP9eOVEXU0ZWk5MZsAZjQk=;
	h=To:Subject:From:Message-Id:Date; b=X1mVKdQEGFjPlJSA2PRu0O1MXlPoaU2REbfQkBVDu3Pj6obbGw60ym2QhdsdjsIc8WjBh+kjmfWsGj1Nkj8ZS1CInW+Llsz8lue34rXM/UTKL8489Zph6eWSW4rxoQwToFgWnIUp5bTW2bMpYYr/0yINGWS5lw/vLi30WBRkr8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zb0S5Zu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zb0S5Zu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB0AC19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787359833;
	bh=kpYfHGkvattAaenAM4TSgNP9eOVEXU0ZWk5MZsAZjQk=;
	h=To:Subject:From:Date:From;
	b=Zb0S5Zu0d3hER1zsItrLo1+WZDQ3ORK0zrmAkjMcVlSs/QY8HINGPZFd4VOwXLWU1
	 aWDVfzkJK1v/ih+xpEjdAH/10MyvvqSdhZsyF5xZHibjBaXuCvz7RHDf7H8jrZfUk9
	 P4gmTkkOBVH9Hleyv9N+4UQGTMpQc+RijC8QDGXJBhvqR4VlJrBqkZGZZW4DTdtu6t
	 oWiKGLQvV2qocqQZg5XzBKo55qobPfaavspYrCmd7iEMZnOG9KTXPDCQ0fvSBtyAKs
	 hN1OUuHO6kW7Q7lo4u1Qu2+qjdVfuj3iGfoz25KZc5Q5l971/1f0ZSuzW74KX3d+/o
	 fYK0CZ30FK4vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA739C5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735983368.28910.2193715427892813702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b927036421b10a5883dbaf78225a0b0fd1db9dbf1d314500ed84801cbdd92d
Date: Sat, 22 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787359833
