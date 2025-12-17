Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312CA33E35B
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765980834; cv=none; b=Qa5rYLyB0MfUw6ZzdzRY76E/wgoBfwRrZSxMSL0lli73oYsT6PlGS8Z9tD0Ke+ex13MUbzmF+6Iwf0Cf8T59V4pl/ajwacajeqsNauV/jRscAWecVXR5TgZVrLPJZuPYo0rh8SNAexYx6Ct21msNQu3tzABgIr2KsjcLwMNAWsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765980834; c=relaxed/simple;
	bh=dDMjY+HsBNlzDusgsFxjQDmNN+ekMuQMLOWAfXmtxP4=;
	h=To:Subject:From:Message-Id:Date; b=rIFXbPVRrM0bmxfMdG0wiPqt+3idaXGZ5S+DLJh/cpk2v26PoxylLl8nwjO2xXnguAL2uj6PKzvjWN4ed4IedqJVk2koI0TmLGGnBVCQBD/BylowCwDuN2Rrs+Jx64Xf9g4RuThlqNSTJzUl2AycskKszEL0HnPNabEQkdUuHcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMAJVmoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMAJVmoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D79C113D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765980833;
	bh=dDMjY+HsBNlzDusgsFxjQDmNN+ekMuQMLOWAfXmtxP4=;
	h=To:Subject:From:Date:From;
	b=KMAJVmoApe37q8vF8wsLHpeuguRzg0FKzyd8LTs29mFkPT4fbJMv5h/81NdchAdE/
	 dWjcYZmle2kDtlFye4xBouMJY6A3zzvEGSQ75bqDOiaxPNuB0dCp8J7uBv+/VsIMZE
	 eB1k3S9A+DRY3fctn+Mz3S3XtfFZrUU3nn0kp22L0g5a5QJKrMJkS+A6++FL3/mXdj
	 QNlJkaJZnKHPPCW+rxOggvEoxDivtf40owtCsnR9ipjOVhFAP3Yimdctx/n3ETdn9s
	 tHIIaRw/ptce/4OItGFeDv/wRkwVk8zMJgq9QiiE9jWre/FaHrBkBta9ZOrHzzTQKT
	 yJapTaY4ZYiJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9F5D6554E
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598083363.31744.5496721822637099748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b8b8a7e965502eee095f97f9e9d0417daf577f52d1fdf42aaeca27360d4cfb8
Date: Wed, 17 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765980833
