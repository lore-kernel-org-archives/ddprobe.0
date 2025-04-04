Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5671113B2BB
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743809994; cv=none; b=U97/A0HK0uDXDBIptRVX08aLNCwR3uKhlklIh6ESD4AZO10Q22ayjRLDdAHyrxWjTxZSLLfaRcFZXf9VEnyJw6BChY/oAWuguGuHQ6QZlBarvX5Vw4vd4rBBsT2h3m3jRdOr3f+IMk7XJHU+CJVxapgDpJkCaKTq6MuO+lTN2G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743809994; c=relaxed/simple;
	bh=o+f1rRvJIfLyRvV1qrwOw+yZ1siq5vX9lA7Bd62eNAE=;
	h=To:Subject:From:Message-Id:Date; b=a6ISJPhF6hC6nwyBHbzOEhp0gPAc4gFu+oW1A+DWvKKBE6dqD+///nFr6tYbhctPYwKFPlKk4Mkhtg+3C94ea3FlUTsw6VC0JB/R0XQCYqVvr+hDXL+87eu9G4g5SNz8oY2Sf8T31ZkKy3L5z2b9OxrTxeMU5v7nBePckZg6vAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9nAwUbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9nAwUbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FFDC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743809993;
	bh=o+f1rRvJIfLyRvV1qrwOw+yZ1siq5vX9lA7Bd62eNAE=;
	h=To:Subject:From:Date:From;
	b=e9nAwUbBmPmmfDYvPlyxrzIbb4RIm5gzG1RzzEscko4MPYkqh+VWY7sg7oe6a1A/w
	 xbW4AxGgQd7T1GKe3oPGOCht8DXJc1Bd00UvKgmr0rGEV8lVEMMM98WcQ2dQp5D8e4
	 170sO3TSxPmb3vg/tJ0Qvz/440bL0m7Hy7i4HCJkBPggqZ4wzrfgcz7+qLykfo/rNF
	 mDCHOeglfFcpU4ea80qG9CCdYLLRRUxr83J9xTfM4+No0F9A9RcMC+3zTCk5tPgpYD
	 t/zZbfbKfxYs8xEaOz8xQYtp1Uaxe5DCz6VXBpCp15dVzBwZVu5NA57fDscFIl9cG1
	 tk5IXrCIcMwSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F709C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174380999360.25960.10879106292595512559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3724b5b511bc0583fb75becfd41f22830d8cae9097cc63efb4d896981dc3ba6
Date: Fri, 04 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743809993
