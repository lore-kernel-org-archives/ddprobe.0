Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276E3230D08
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752910194; cv=none; b=qDTPBhsUU+NDAFx66Z6ZGkFMTQSXlLRCD4v2hyg3jsXEJGK/vG6yAhQuYFCBAtsRfvnXlfwHETEA2XnlPGPtrOpgcSc142TCnvwLTWmo1qbp08h5Ud1FQABf0H4ElAjDxvFCG5K4auUvEDfkA24RtuSchoxJL2EzxPZZA52NIaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752910194; c=relaxed/simple;
	bh=W7oiBP1nkPCbFkEBjOeAOipnnmuaHYMNi39diavBW0k=;
	h=To:Subject:From:Message-Id:Date; b=Ug5ztfIaJw1rw3qYJjPrayGR9E2Iuwwn7rG/9DlwEJzNvTkoAV7ywfwK4AUJaWYYmrGKxVOFgG8jo7KqjSLN+hlG0wiMEcH0LzBzAbyKOiDuHghbCLJbdxameiriMDyM6mftpcCCe8ExMiCYYc3SDt3hAQH4SAgYwGpGbM3mt1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFez8dxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFez8dxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17BFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752910193;
	bh=W7oiBP1nkPCbFkEBjOeAOipnnmuaHYMNi39diavBW0k=;
	h=To:Subject:From:Date:From;
	b=DFez8dxQVkK1uHk8FXalt975NpiipzkFtfzIJHFq0pmgKvBWZDwbTJGcQgt4ZOF5m
	 oyM85t8E8qhB/9p5lxuAbjWnD2xhltttUsuNciiiUkGf5MEyclbRn3k44H+j4z3i6U
	 +MBGmUg1E/XKdCDQbVZ7wE+4eSJzL/+rtbTYfq+PVC5+VeHfQ350U7kuFuIy2ETIKK
	 UHYNKEWpT/6anLB22OT98p+CAePpmEbR2WhUjzYdNRc07sF8ZYx8dWJrUNLr2Um3cG
	 yGWW6JIkekS5jSDxyc6FCh+EpZDjr2IVgC8peMx5E+jOywR8uUdBCxHMecL8Fx8XQ8
	 pwxXnunnqLTqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF0C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291019357.20911.18281933767105936609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef382cdc4fd16989525f32df55d7ecb6cb163574c133516d4d6b16b4b72463ef
Date: Sat, 19 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752910193
