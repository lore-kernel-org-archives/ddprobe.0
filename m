Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B003D9696
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782322654; cv=none; b=pMA7OKja1ENSL2RzUYKlvc14XXqqDaQiCzTHjkc6rQ7jR4uX5bw7GqdolnbxFmpIpNYjTI6YBJVQehnPAnYfYTzX+UL7fcSc7zkjWmLx/LHpn5JoxO5dtCLgHlDPNbVMlc4IbQk0d2o7SZqEEwtxNKLmgO8Eup3Bs4YWUzBtZyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782322654; c=relaxed/simple;
	bh=ketYa7LRyHifj8S2ufTY7b6cWC7O4Q9b4N4UaRb4kIY=;
	h=To:Subject:From:Message-Id:Date; b=rqmmQ2UYfUskGYhdkYAGLYf0jx/KDYfnSJqFfj0JRjhYL4Np7nnXpHwhSqDUg0G/tnnaxaa9phdgEPdgb8tiZfRD9ERpX1JgYj4q8gaeRpDfIh57/P4j3vEQ0phpqJf3b6/1MsmwcIYigw8iBD///xo5S5GCafVFj4oCvkXRp7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uR13JOhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uR13JOhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C888FC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782322653;
	bh=ketYa7LRyHifj8S2ufTY7b6cWC7O4Q9b4N4UaRb4kIY=;
	h=To:Subject:From:Date:From;
	b=uR13JOhvou2qhffJ7/jJMxs5YpcA16qLPaL4oOay1e5GzK2lyj371K/ZmrPeMULC3
	 rb38myxD1gt9boC/yiW080ZAvOLQ7OAAs4X5FPfa9qrzyepfKmazipBjl4E08f0Uzx
	 Dh+BAWAxiYUROPmaBDz+6Q+OqGDrcb9NsCeFp4O9Xz9KsHIWjhuNhEW/3NZ/P+gL7G
	 zJBfeuf076580J+d6pK22P15dwCHOyMUe1bMuSD36I3lnoVFtDkdMqhieo3XT0LIM/
	 qbnfXLVtAzOU2V9tOL2joabNRFMppN3GuHizW2CMov7Di1EgOLzEcOP5AcppX5ZOX3
	 5tqBWaOOYpXBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD994CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232265370.3728.8006610735232221361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0787ffdc9bc341f901af068cb40fa5afcc6f01bd892bca1d0b554c047c6dad1b
Date: Wed, 24 Jun 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782322653
