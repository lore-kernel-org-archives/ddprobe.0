Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14358199949
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769547234; cv=none; b=PkeecQ8limVOUrd3AUWK+2yQy6/HajL4QDbFrKZJ0tHqpxVmp/OohIwAQCcB+hyROh7Q9SFZgwlH9zr1mhc9zMlxC4SfPiLam/PYWsxRcPFgSUBUghQtjJX1LwK/aSDAuCnguqYbBH42wD25O9Wv+LmdqqeUthu2MlTvfbS0l6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769547234; c=relaxed/simple;
	bh=bSt9W9apmJLZQG7fDZSTBF58qASgyqDHVne9A3HiveI=;
	h=To:Subject:From:Message-Id:Date; b=QBrIldT83cKIzHYK06I0X0cpVVEVbYNkRa36syVvrQdp02Vgm7AHfl0ytzizxjD28yp6CgPWu1RrCy19XmEFNGMRbSCaRSurAFnKLU1EOtBSLJpZkt4Zc5Yw3c7P1wagIL1gZS7e3OiSJ4YQMcrczW+18HAyQyd6K6d6xmo5128=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNxQwtal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNxQwtal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C61C19422
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769547233;
	bh=bSt9W9apmJLZQG7fDZSTBF58qASgyqDHVne9A3HiveI=;
	h=To:Subject:From:Date:From;
	b=mNxQwtalwRACuvB/aNMcaOlXgGeRTpRoKRbvlwx031e2aE5U/KFwqucITizOBufWd
	 2kbAE7koEQoFwo0nxN+RacU2AaxweTCU7R/e1XVu0EmAT0Aw0EtUPOnvaTKdy8iK0M
	 mkzZK4wO/ewuzmZaQBpTAsGIqqUKuWLXXncJnOkkRvXOAmeUiFJ/IOvcIikJUKmiH+
	 c3LwXwMgsMdB0RXw2nSRJ4Bmj3bAQWJJ6mGHchpPbAtWH0sPGgZvZbZkm5rTc9U77b
	 3kHY7YnXZCfDT0Pt4dl62XVIwIxeql1qZREzwE5Ov8vl+ACzK6c86xuvxNx5KKLD/f
	 Snz2uxXBJfE7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91139D2FED9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954723358.23066.11059837106759888569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec59210885a4bc266c5d1a3a9b352de65c4b679d1b73af726638b8f1bfadab9
Date: Tue, 27 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769547233
