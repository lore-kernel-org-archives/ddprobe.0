Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC75258EF3
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757164793; cv=none; b=eZkOHWH7HwBt+Gqb5TAEhZu1ev3dJpPZwtlkV5901sGI+oWSegkwRIslFVFzhGogHzYBVYc7IszuMrB0/xAOE068MZn461obcsCUF5c3RZAH57EPLvR+eG0GThiMOiI1j8wHSW6L55ONr5fdbDSY0e9JJm8tXICv+y7A/r4OV3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757164793; c=relaxed/simple;
	bh=NCkRD8sXYzcWYZPfrmuVmiCZsLEwt4xnZkNbiAiZUq8=;
	h=To:Subject:From:Message-Id:Date; b=bpfB9J/zmV1xzAJp4xQSMiAaJGF36TDVYJ983Y7l6UtwXElyw30eig9lHhTbegXCO+nrobBCUuO09lcsELK7+pe3J38n74hb1AqfWJZfOFm2r99jV8BSpmHYCV2QPHBLXXj5M/yhHGYE3JUZR5O8hNsoI5ArzT/TmeH1bQb+bUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMGqPzoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMGqPzoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A647EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757164793;
	bh=NCkRD8sXYzcWYZPfrmuVmiCZsLEwt4xnZkNbiAiZUq8=;
	h=To:Subject:From:Date:From;
	b=TMGqPzohV3GyZ5ehGaHt9HWCcPqwwQLHiUqmzKMTJAE+j0UL8mDfTqhVjbuMiraAP
	 2w7P2diRnhCs123VSwgLAgBfRi/v+mLgUoftc4KoAVQQbuEQWtHmgwIpx2hLu1BR5n
	 gAIFY97Y2OuCccnnlsR1Yov9PIL36rgPTlyy0f/pkS6f3XTsqRsuszU/lb6YYk4o6m
	 Ta2LjbUNKSpXd7YIoR9cXAtbBvHeCQ5UujpoSb7OhGS7E3Wv/PIMbPMkbbBKQ/aj57
	 hAJVfmx8WWT4dHCkiTGfCSkIzYppPHUS+eOOz0h1GdS9smOwHNRt6l7luWq0GQyv9j
	 zmJQgq8W6RIXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9612DCA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716479358.28992.10299268637108784147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f2d27aeaad40d8ee0fadcea925e17d617b0e3c9e672315590027daf3b9417d6
Date: Sat, 06 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757164793
