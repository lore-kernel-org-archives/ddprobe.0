Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E99A33A032
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784241514; cv=none; b=OWVLIWEDOCrDS7Jwaj5S8w7lx4jDc6TeapMGmR9lmRNvHUCe8NTAvlD0TrKnXtQN7ca87lppBoFT4b26tqPX9mOFYYTiMHrGU++mEqsoCMMfWHZprfrFuLKOpZBN49XPq/K5yTGbvkd1csScNgHL/ss21sybOfRU+KVnywEma5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784241514; c=relaxed/simple;
	bh=BpPfzuyWhaEajeapoZFytaJEyN09GhPsEJoKJiD2DTs=;
	h=To:Subject:From:Message-Id:Date; b=VhtcVCkiJyJsv3ivDqTKsOuuMyjKdHOrQx1h8pNd9ycwPelrFDdaSGsfn3nlVmBvaE6lfu6tQYHzkSw+325jbu/xnFBvpz8Mru64mB+VyVnIaTau3/NTlb1zAF4IBHzDOwftVeGOJuzuZv0x6zmKtt2+irMXi0nDZ8+3pX5x1PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7Iqq7Bj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7Iqq7Bj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFB2C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784241513;
	bh=BpPfzuyWhaEajeapoZFytaJEyN09GhPsEJoKJiD2DTs=;
	h=To:Subject:From:Date:From;
	b=O7Iqq7BjHJz76XKJLmheBH1DQdLtlrWSF+qY3uNBu7PyHNM1VZcxhtNO4m1BuB1rO
	 3qnlH8h4IvD/ZOWiT2ACKnfv3mHP21tXO7TLexGfCGYltei4Kt3ZCJx3HoNS0DwFps
	 Q2EEaL6vzWYlN5l1sJdWL5lNftpXA88uphhVgiPLO40iZv9RXbJMES9VuXnJWwcKpX
	 376vpRtHBegI3gtjVzxkZTvTBcvNdDU9JJQZlKeLW1KYFVHS/aDLfCJCpjUgJq8sJJ
	 L8yLWkFPGLdbiNixqse6U/fQOf9qlYRt/I3da3eHx6PwBn53qOOlcG/yPc8pJYIDtM
	 MQrK2r+rntO7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF66C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424151368.12820.2855886685118977791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a105e6f408812c30dc9a7a6bd4dc249f2f280ccab8c56be813e083eed84311
Date: Thu, 16 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784241513
