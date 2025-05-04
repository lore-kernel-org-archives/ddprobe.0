Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87182F22
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746322794; cv=none; b=lRPL0ZU/Csn61fwxeQGLRkfPBrnI2GR6KuwS4QLhnq+hfEps/bWN3HE3KJlYrwefcCvqy0W9hzxuc4OrAYii65+Qanat8yxB119viHpePXaXw7Brn3f3WtX8nOLiVph95oJ87xuh/k4Ay1DGwgfUHLlsSG0IXvnVisrAMcbttdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746322794; c=relaxed/simple;
	bh=Op2awg4edC+b8uMuaXu+2RM8sbDPS/4eraQn7nsI6As=;
	h=To:Subject:From:Message-Id:Date; b=cPKDQy15gzulA2zhnAfmuxNjfpAKh9qT8Fo9npbAnvUXQEZTecsS73U2Z4K7nFPde2p9Loe3Y/fiRTkw7K8QJLCZZAk5KTSF1wgnHHe9EFzozXvgMSbI4M88Ii+WITwggPb6ume5EmmWVnlcTVcND3Qk/o+5n4plGU1vBauYV0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amZb+Qdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amZb+Qdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4ECC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746322793;
	bh=Op2awg4edC+b8uMuaXu+2RM8sbDPS/4eraQn7nsI6As=;
	h=To:Subject:From:Date:From;
	b=amZb+Qdpm1nflLYjTBIq5P04KXuq7npfzMlKRLHH+N1s7+V4yHhHNpo+2+cHKNbV3
	 5ANkgoEF/ZzyPSqmr37fKdE1beGyzvM9U8Gg9y8P0QqGz31ehd6bYKqf++zFB/10RV
	 Wm/HgJYy4tOgP1wwHye4AVZxLqzaEHWgPEuBJTqIdxAiIjQeoW8wmgo6edNPoqSjmc
	 fCXUqzj6//0w2KvvOPsNQfihaaw9allGVe6pj1GpLv4DTjb8eF54XbHGLeoKLib6g4
	 UjcVWUM1GOjSbqjJvd41gSCIO6wGKunw9i4RUUyTqyCjp+y+No1S0SmHU5A+j7r8yJ
	 YBncluGb8P2wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDECC369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632279357.4630.5996612509720194635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 627f845ba860070b8bb37bf466578af7a0d46112363b5c001ed07b3e90b09141
Date: Sun, 04 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746322793
