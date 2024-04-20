Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A0A20EB
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713594623; cv=none; b=Wgw8hqf52jK1GG7+iZgy2m7OSmVamdHEOmVllJIqOfRWEHp8cFf/K0JsWLAE11akOa7OqwQK+ZiSiPxK3UO5u/M+5W9MeBYdIvVVafK1PDgoafBxBYu5N+dimHmsNJeiBoXa1SZVxNN2n1Jq0l36SSPEt9ADXAKfo9k9EheS1+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713594623; c=relaxed/simple;
	bh=V4IJ3+i43v3+RLs1EBsRczMA2wLaQVX2Dow0OgpgNGk=;
	h=To:Subject:From:Message-Id:Date; b=lKhLX8PnFfzlb2hzdTOy42h9QmbMubywNIFyxB1RSiDEkzXGBuwGrYy8El7B1gdquXKmEkWzY4gy0R/EXAH8Ky1PO3JlPr0PvD6VJ36vD/foOTuNXIOVZm50L9l2KxEq3mrTRi0aJhEMmSUUSkuf/H6i5obNXvXW7VJAEjx6rnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIXJeK5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIXJeK5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22B1C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713594622;
	bh=V4IJ3+i43v3+RLs1EBsRczMA2wLaQVX2Dow0OgpgNGk=;
	h=To:Subject:From:Date:From;
	b=rIXJeK5hTc3wM1aSaHWgxdZTCrKaCaMD4ShbQJ97X6KMY6B+ZATcc6wK46gfOWn5O
	 1nn9GoyMly5q9i9yLZM0TXw/vI+ydnfF6wWbYAdzLdwb3K9raAJbIuDQN4JOcKLi4A
	 B1wP0Wh3rNdJfByy1hbzwNs+5qKFZyS4hWBs2x+CnKMJvDIbW0KFLOHw8PqCtT0Vyx
	 H5fmq4j7lVeAN4Oi1Ysk1m2HcgtF4KTaBhnrky6dRCh9D2jy4w0zL0CU8J3HX9hvzv
	 q7mctpLYWHD8KCUqtl28AZENjqMYhVTMHuswN32pa+o6pafhbSoVdA3ARYIkmVjhG6
	 GlHOolUmKARuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF05DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171359462277.16694.16092362032158692254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f86d766e14f0315e046fce7f964cc1d9bc3676e20f14d058e9e363e4ae4b3f
Date: Sat, 20 Apr 2024 06:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713594622
