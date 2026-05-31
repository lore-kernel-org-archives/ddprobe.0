Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476953321AA
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780260874; cv=none; b=nKqKvzwNGQ+OxVpbXtfcwssb2v6sYQPo3a6wEb+ZTvDbnsuEUfO3UBVtsD1v+H+D8qoZvJiCzfQHXZCZ7LSfQ98aT13gczdVEku+T4daa0bP6dZneUJ082ZG2LAClJxsVX9r6GEL4Tvp3P2BypJOkP0QcWfRNb1SXu1PuIRWoOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780260874; c=relaxed/simple;
	bh=vZwK7dBgrPe+QSyG10mHyg3FSfKRWP4TIMr4cLlw9ZY=;
	h=To:Subject:From:Message-Id:Date; b=H6rc3yeC7B0JMGcl1SxjLfvmVtXlMpi/Ix79aD9w/fVqa1UKxNjrStK7KuBKZvOpwgtxhi3mhEyVkZF0Oi6cwxYRmsNzysshX5cqSMFkC4+TlQjk51fY7xMKkY7ChVuL+Ir8n1zkn2uX04yxcwOGDLOIbNuor8LKx6qpQyX5nMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gziBotgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gziBotgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8404C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780260873;
	bh=vZwK7dBgrPe+QSyG10mHyg3FSfKRWP4TIMr4cLlw9ZY=;
	h=To:Subject:From:Date:From;
	b=gziBotggYtOZ+JQDjKpKyaPBfgBucy1ntKSD6wBs667DBM02LL09pFdMh8x5uQ5iW
	 27ZQ7HUEmGwilZB+PRALaeShS25Na/uMyajguGwV35BRIJmJ3XgwL861WXYcj0G0//
	 wYs/KOVWj8/rTYNu1l1wQQuZ63FUgwwXjpI0wZpvS5P/5It9jB3KN9PTXY3/7Ew/01
	 OF1Uk3Y8FqsZCaZJQvsqfe9OltoEpkREauhFKFjeSeWi/DMngpPRPUJ5Hl4HticqXf
	 IHGeBalOcRrNmem20Q/rVyHuqHgNA0OA3Ay4cV+d6dqIcG2PV9RfYohFoJs0wlTqRA
	 9Og6Bqvrclgsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8B1CD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026087368.25600.6471224616327630110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae3cf42960c8ed87b2438d09708c4e80cf6a87ba6fe61306df9f63f7abc3fd72
Date: Sun, 31 May 2026 20:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780260873
