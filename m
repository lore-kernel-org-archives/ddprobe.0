Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDF44C6C
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744606194; cv=none; b=Z7cIYQUMHpuF+mp9Y4nGNu4xnxYtD38BEFD7pF9/3qYSJoX/G8xJWyb8aY2eGvznOspUiGLrRi1x6NC3wBDNLq3i+Qno/TGLFekNj2LLXzOOydqDbrQ6QkB3MBi8hq+8v/3HuYE3wwigni48o+KNjzfba5plbdqC6YKpJU5+wGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744606194; c=relaxed/simple;
	bh=2HZNeJ9x1tG33cbzhDofN80MbwMlXUgE0mbgl82zuIM=;
	h=To:Subject:From:Message-Id:Date; b=cfqNPsLzL/H2boCM579IaZ3Nd3kFK3RynwUpivxrbHEta7S+IekxNtsXwzS2LlsRT6KmPoVSDnvXO6Irw++XaIjheS7Vm6CTqq4cQSHgd/9pFXdz9ZAtKMULVk0qVAch13Nu5NV9fYySagK03XqYkgbWuWdqsLOhU1qDo8Zx5YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxVQStd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxVQStd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E8AC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744606193;
	bh=2HZNeJ9x1tG33cbzhDofN80MbwMlXUgE0mbgl82zuIM=;
	h=To:Subject:From:Date:From;
	b=dxVQStd+ZppJXs1O/71r6aso1CRZnlE8ROwsL3/cCxIjeSu9s9DMC9MNyA4KYthQd
	 56z5C7883dSP6lc4uS8kNapb+sqscfhdKE/N3SgAIYoNOF9n/aOh7nu9hUP3MjReTh
	 OXaV2OyjitmZBAOHZeXWOWR6w+XS4lffaQ3ogA1hLoZDMx8rTz2QuIohE+OkfAvknc
	 8/mdatGa37jP1Cy6tFTJmZ6ARNMCGBK1TaHi9X7gvdSf0gMnfymdsRt2Q+2lQioX6/
	 FKhLZkMMHAzwTQ1uxjkOEMew6Uv6BiKFOPzZM/v97ns3a+BnyBCa6UnBtxw51bPde1
	 3AS7Purl2S9NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E58C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460619362.19256.1877635966804466252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0555a9589edad913944165a3c3e2ee972a1bf8b976b8368af3d0bf8580e28961
Date: Mon, 14 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744606193
