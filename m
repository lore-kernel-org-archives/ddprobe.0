Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE4518641
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745113194; cv=none; b=a5YMaNkGymwE8ibMqUp1MZPNqeGrW9QUSNEK/4QhbNmlWPd3dubT9klUoLKel9rWMpMJOTF8ssnigDba+rXE+8XrDdLEWh9dUds2PFYMkH6NJiASNUTHTYZXhE9eZSIbzBcsxq5WXjkUEq/lK3M8CFjBJZT1QgCCBO9DfQRSW4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745113194; c=relaxed/simple;
	bh=sjXaFExaHME9n1NUGl+NgDAMNq74qp2WujzSYKL7GBM=;
	h=To:Subject:From:Message-Id:Date; b=DEJ//mM0/QyXbhtBa2CPQSFn07kgEOMvlGWwQABZ9f4RPPXZd41KFam5Qmb4j7VIZ3ZlJxgg+2c5V1XnGuU0uvak1V7Fgu+s7efwNu7QE26FfgTi3k5YN9RmCRaOwf8U3q6td1nN5VCCTLResbQCdPuK41UKzZxk96SLW34HyGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMcU43m4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMcU43m4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEA9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745113193;
	bh=sjXaFExaHME9n1NUGl+NgDAMNq74qp2WujzSYKL7GBM=;
	h=To:Subject:From:Date:From;
	b=oMcU43m4qStfCzgBPHT25a7KjOR2EjEUYRr6Zit9gbDtq52lMh2hxQ//Rxsn1qdpC
	 pQEyW0+HXGwN9BQaLBMZCZT5YPhSpXaT+uBFRhj7Wj8mNoo16SLyF1evKsjWTTftYY
	 z9pFu6fldu4Bwr7EZxHKOZtlZaNPYU511JlQxOtYsiXzSlLNEkJIG/JGbVFY77ktdj
	 b24lV8sdgZ5xtcdrA7AybL9xFdE5gupoTw8S03Qs90RvxnAq1TTGVFcblJ0oL4vk75
	 9F/y7xprt3fbLT4aCK8PVIWOehS3yBwe+thkPHMTZ/GSEvdd6y7++t3VZ60M2SBY1f
	 mMVkgn/ehU0KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95565C369CB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511319359.3354.5843455476119513277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540af7ac74214aed5c99a7e9ebc7d5ad593118f87392a760344ed7208ef424a3
Date: Sun, 20 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745113193
