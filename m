Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8892843D4E8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768979634; cv=none; b=N4zWTH1GkLPHJ1LvbCMO+4H6uVIcPQKmnY6zykaZf4I14HNHNPgoUPK5TGnQoqJhi2wydFbO0jzQc6kabCYxeF2AMmDSqzvtrLOJyvwZVlWfdOdR9BfFck8tOyUPZOdap5gYq9jMk9MSgjbbsBg6PEQlNaikDfMrTV4cOpY/5Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768979634; c=relaxed/simple;
	bh=RK0yPaNWpOr/OnuWVhXaXkLlCV78HvIiS6uDuu5onvo=;
	h=To:Subject:From:Message-Id:Date; b=YarQ2PsnNPAYP/9sa2f3CXZAIIPXkdfNKMKZpTkqsHFP19EbYY3doHJCwQYIMt0Xj6RKYLoSQ12HnqEzJCtzUQfn404e4XSRmWvDOQj2FbkVRWeChNrNnbbeA+XU4k9QCkHFcThmxuTJYzqSiOkhqJ6YOoKBPuQWXcq2t3OWQX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOWmdQHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOWmdQHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50EEC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768979633;
	bh=RK0yPaNWpOr/OnuWVhXaXkLlCV78HvIiS6uDuu5onvo=;
	h=To:Subject:From:Date:From;
	b=tOWmdQHl21t+aUNos0OcAsR4fhR1ayf9C9JaCwmH2bXx9aK6OH09wZ+ItCpeisbfF
	 mmtBbNCA7e0rlBDW/LW8B2Y42VQn+Uim4BJkDBvtyv9ZkQI8LwKOESQnfusy3OHQO9
	 cNJ+7yVKriIYLE9WFyrfdzRKZgUU1Y/MHv39vAQtXXHO+3cljNO5lPQ8x/wm2ldYVb
	 4WkkXXfQoMVHwteGhLS3OViufAMDVeC3s81HzydYVmE3gIuoObBON3WcErYBMJV1oB
	 M5qcjlf5go8jbRXQaWsJeCQn9q9n9/ssfCSppxZrM0hz0pb2fPtgFcoqAA4rc66jjQ
	 fPcUL6Zjk8qkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9110ED262B2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897963358.12456.9422251893499261679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6edce1c8dfd8c50e0b5fe787999b3eb22d0c053f5f7e9b8e230b8eb9476e8ada
Date: Wed, 21 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768979633
