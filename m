Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008533DBD60
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777040254; cv=none; b=eeevtxa10qVJvCgJ9CwQ4s0J4+D3LLTAvIlHR/tVdv+jAMqd0khcEP3G3gGKJorbY17C1qElUFOiZTmTPBTw2fZwwglK+6BS2G43KNN/1xlGoF5Bj2TD5IdNUq9hqaK+9TJv9v+hvGi8rieixxK4k/bR/L6SUwZHKTgP2NhX9Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777040254; c=relaxed/simple;
	bh=LC0yOKiUxHygJoLo8jqFpbduU0ZOLocfNg1XyAy2MtU=;
	h=To:Subject:From:Message-Id:Date; b=Oeo3R9PIfJLljSv2HNfe5yBm0nw59vGKqirCRnKLarZnvmd12cvEZz7YB/B823D6PMVc4GeOzaR1jxthfEJZ3RYEo3E3wPZoUQqa7w/7Hg3XyfIECbZTTxZiKIAmx4K+vSwfwOHpYTO9LYPvULUgNMlPPIevOv62eDjNv5SG4OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUSy641R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUSy641R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED26C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777040253;
	bh=LC0yOKiUxHygJoLo8jqFpbduU0ZOLocfNg1XyAy2MtU=;
	h=To:Subject:From:Date:From;
	b=UUSy641RwuybE7pCTUH9fd6oeTdtCZZlXSi4QX2Y/NOwFJlZ+XMjAEBlQ8xnrFHEg
	 fdgweAOabLQpu0MFa/TLB2xm0ATGUL1Nqnh8Dxs0vMG2VrskKGtFj7yjx6UhKDZtEh
	 cebP7mRE6q4JieBx7cGqhHcfe8NJwRApjWv9EHr0Ajn6HEmllcL3Ja1xMwbkGTC7fr
	 mCX3cHQ1sbA6X3jT4GXniIXVZPbguXces7YOqK7nSift7lRFf+EjgJryGvuohEVdlF
	 twJBPaOnz/0FZRdvlo0uFGIIRb7VGZeTCAWQhIQ8lsnX6Oq7s7idhE8EqwiZz/v8H0
	 NWBEiWUdDIp1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB978FED3CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704025369.8385.2327942379126092850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8704ac66b3eb241c17f35d4462d921d3ca46a829658430596858a3d5d33990
Date: Fri, 24 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777040253
