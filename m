Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF26221732
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747847994; cv=none; b=mhRfTw7TQNxys2vylxiUeOWFzhPI1YteXEy8wYkbfUZS/0MKUCQ4Qc6gNNKeq9/BCWVpFNJqQ5QFootZWebTCkCxKnp0VSjHY4KuumjtMCXgklO8RwnItZFh1k7mcH5XEMjb0GWkaP8eH0mWjoiSQkV4d5vVgnFdfknHjOJNqZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747847994; c=relaxed/simple;
	bh=X2KNHU9qN8dawfGxZXrTajzri5Cv3yDwwPm1Oe/6QQ4=;
	h=To:Subject:From:Message-Id:Date; b=qVU5+Vadp5nU4qqJfdeUARD/NCioRd9OWfnpFdLSKHpC+fIz4DHowaFslv7EHb7gex/e4wm3rRncp7Kb7Rsc3RoRyl90uKqmNfBB1awwSlMw2Faunuzxjofd+TOhzE7s6jr1uWS88Su8PWOoyVbCarzX517h4avAhaxww3GIALc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdfIkWAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdfIkWAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F96DC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747847993;
	bh=X2KNHU9qN8dawfGxZXrTajzri5Cv3yDwwPm1Oe/6QQ4=;
	h=To:Subject:From:Date:From;
	b=AdfIkWAroziVzORwxCIbooqVQ013o1oj+E81gQJnPWwsIqp6cYzyyI6m9Mt0xOr0k
	 AHKGXt9BViV5ZWT0M1mDgLc1+kdfUc1QpehBXXg5lttvZcO1wVPsE4UBrjl8oNxeoj
	 d6T15ti9DSYIqLztGYTxLIxC/ao6mZOIzQIOEWNSbisLgxt+6+jnzSQvZn5yWgUwwe
	 FoCeFik3kzAS/FUzl6BNqqZ2jjfiasAlvvBAc3zBjgndK8JFkg25BovOobyJv/wI8H
	 WhZJ5rE9mSF9fVBN0rZj/gMMXVNPPLFnAHn5+lIGZxy0QwElCUNU19lBuU7r73ZJvX
	 Kj0oBZqpvSrqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E380C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784799357.4095.15977815328596591617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b0025d7770f0ca635e1a66df9ed861bea2ff24003758b7cdd217eea3f184e6
Date: Wed, 21 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747847993
