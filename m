Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC7D1FC110
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765083174; cv=none; b=NaEEUUKMucrKa9Je1bsqYWroeeUIPISAdYokhg27B3TAfvVJg4QsqPCAkvsMegLiXxFj50tmTUuLdtiQgdwRQ8S1ETTTTZV3jpud+iHGsb6oIm2dq9EGhOGbbW4JGWHkiBF+FCC1P0AIBj1rR0M/YE9d6pESjy3VTrM+uuhcSDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765083174; c=relaxed/simple;
	bh=bELX+G0uU+5HSyRKh0YrNNpdObnEPypD9C6khaoHTP0=;
	h=To:Subject:From:Message-Id:Date; b=UvGD9bKCycicQ/ihrPjkY0rqe7EBQgo7FBs4goy1i554Z5T7ogBKO0ul3gLAHwf1uQUzEVIVZN+5+/bi7XaYILdgJZoYBljNMNvYY1EccOvkQ/rxMWkwKsbl64i6w5G9ztHkyDyzKgTYp6MotZwwGDxX21b8Hp5P8f9t0AXiQWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGVx1KvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGVx1KvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D03C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765083173;
	bh=bELX+G0uU+5HSyRKh0YrNNpdObnEPypD9C6khaoHTP0=;
	h=To:Subject:From:Date:From;
	b=kGVx1KvAm+I+Bk7P6D5i1lnu+JRjezpPQpCUOQO+bgIDZwGQ3oAS3tff2+15FZhhJ
	 vQtP41hLZVGevPqRtVlGi0muq/nTztI2z5CrXu+n86z7WdeShkGE4qbQ1qRD9Yj4W0
	 LcDxsA+vvMstEa7g/AUFkjDdPfgDf4mLDwTdnHg9MfGJU4lkzVMRb0SjcD6X1LxgY4
	 EPapWIL0v7RM4JWpZYMWmvV/nfOWiW5vo/EMb+JLRwmolSU56h4fBA2DFEjix1LwYY
	 UUoZvUPpAUc7pQqz8yVon8HeuFXfIzVUGoh5uCAfYkzZfbjnJHABvXVbWq5HeIL2s2
	 juXtIvIfoah+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED2D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508317358.18330.5781446863533441916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0204562978c75143c22d3d496d46279c3d6d854f32633a155f04851956b59ef2
Date: Sun, 07 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765083173
