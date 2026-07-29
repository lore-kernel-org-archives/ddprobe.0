Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3DF4F5E0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785286834; cv=none; b=hmtVtd881fs/SgEDAJHeJCz/SgFP2wp/1fxnaJgI7QVGriWr8An4j0zd3w6eXWs9mpGgjyLyo28ciVtJXtAviP19B5MhcWnRfKW7LAfjNuOoJ3JLOMzjsiJG4qMQblD0ha81UsszJkRTvO6gUe6s7PxM8eLi6ds1522TeJVQa4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785286834; c=relaxed/simple;
	bh=ejitn8fEe0FSJrx92pb5kGExAUrBIFwlh2F1iR+rYRc=;
	h=To:Subject:From:Message-Id:Date; b=RrpsOmjoDhOLlN5rW9zAGXZ7D8ZhD2wDTgsMU6UCCnz4N3F/Cji1zA/SJ0YAI2PefN2+7IB35e5W9dOqsUYheMKFGU/6hZHgFUMvR0lon2Yv+FCQf0l6hC7zXOzL1fAUk2nc2KAYaJ4cVs1GBrq0SLQuRrGLpfwYr4JM4lE4Fyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuZXubCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuZXubCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D397BC2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785286833;
	bh=ejitn8fEe0FSJrx92pb5kGExAUrBIFwlh2F1iR+rYRc=;
	h=To:Subject:From:Date:From;
	b=NuZXubCBUSMGvyrX5BwQcISHDgIn5oy0SpnkQSb3KlvRGXFNDj8bm8u51+NtLOmlM
	 PR6yriLQMD2c0my6LYm8tGu/v12XR+y6up4/Xw4Uubrsnk3gzGskuBkmvJ9gyGFf5o
	 VBVCtHNjdH12KP2cjYECSu/ThUJpe1Err5GyfAdcKHJnwtXkV4lkRRj0HCUkJhqaVk
	 qomdVHGQkwCIrzP5jheKidZlicg5zfu/wN/KWAtdijhaPvdrvGkiDVBCaotyBgjJfn
	 SisW/tQ4fCltAXiPbIfVWGP9JTXZ1pJlFzgcvI0lvcTyRqpNm16jUb/Sc629iUAlb2
	 k/ZpAnL/VwE+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB00C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528683368.27151.10729805485753889830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b35820bfcca7b87c3d3bb0c56c950fb644c260c4f2a2ddae6dfc8c39e87545
Date: Wed, 29 Jul 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785286833
