Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3294A244EAB
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741178334; cv=none; b=W6ph7+d+m7GdvXYjx7F4mMfP+5/kjL6w3SSzNUg6Pq6rgHHBcTTg5wsIyTmu9/vVs5AmII/+laCcm0piJg8qdIdC0PWdDStKY0WnAZL8tPzZ+vY1qKlnevDWyslQkMTr4+6hRkc9vawgRJ9N5feA9V3mf/l5vvMZ8Lke3csfwjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741178334; c=relaxed/simple;
	bh=WjZwDsDik6cY+GJa/XG+xDlARaevsEe/tAH1HiH1xlA=;
	h=To:Subject:From:Message-Id:Date; b=Sa51VBqn+TSFhuWrBj5uRvBdB30k7yg1F/4AB9dZJ9It76PEpKLW3AozodaVWhnt30nr8rZm9RdPFso1VRdHZQrhRDO/RKmz9QAe6ffCBPnb+TcETtXQTS+Sp6tvLLTZkl/ccQp/rXJbEC+MoEsdpWwimQZU/AzUkBAmj0/dTnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVzj953U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVzj953U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEACC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741178333;
	bh=WjZwDsDik6cY+GJa/XG+xDlARaevsEe/tAH1HiH1xlA=;
	h=To:Subject:From:Date:From;
	b=YVzj953U5qOk+NheaX5tqoxXA57Jie4Ux7q2sOObpf9AYoZgHSHnmsluidVls/jwc
	 8MUUuI6dX+dTxop3MAeIwIip4KMCVkqvI1D260VgO8o9rXUxGO9nDg+FvhxPIowta5
	 QXh/mk4POyPBCqKnWEWxffO8EEmmkrOoqKCfywE1CV/ZxGAxl9+7Xmxu7rcI8tmyPI
	 cspWYPTZ3FuMEtKI5s/wBVfobXYV0u96Zx2psBkTlUSUxt2FUwhzln30Wvv3z5cAV+
	 XCy8ZOpAEPwR7ZS5VdTKwKS+mmIkhWUT/3paiazZldOPn5083dLyd7XtwepoX9HKNE
	 PArGbzFj5W2iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94262C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174117833359.32569.17988513826152644443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5245059eb46ed7e2415de66f0b531b90a2774bd5bbf743a9202be3c4590e50
Date: Wed, 05 Mar 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741178333
