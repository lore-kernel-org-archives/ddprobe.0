Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401F45674D
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725965754; cv=none; b=ZmY6YEgnsXiglStJQHMdsAWHrqpLI8y5zujtxdqOHVAokyrOfxp4txq52clekxvWq460W1mjKoSZk4ZydwFCiyd2c8/0TgLRWT/6TL3uRvlMwWoeY7tWroq00o/wxXB5x0U+5BsqH7uUOkf02fQ9baaC3rz9x8uzYT7RksMnDj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725965754; c=relaxed/simple;
	bh=YJkP6MZ/bz6eqaSZAVBk+GBTr6H0+MqtMo7r6R+gLeI=;
	h=To:Subject:From:Message-Id:Date; b=oLGKv+fWezIb1ILM+oVIq6cWvrxpIUzFzipQ6q4R6AfEgBTxVyiB+16eLk4TT/feRxqHCkNd/CBn40vJDH9ZFflPLr+660zjWZwAmpTRI21jeLbRggQjaEL4YIO2X4owIDsDpSCkx+WTzFp9Cd4gRu/iSwtUiB5nCgwPpsB4qiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1+2Ji2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1+2Ji2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54AFC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725965753;
	bh=YJkP6MZ/bz6eqaSZAVBk+GBTr6H0+MqtMo7r6R+gLeI=;
	h=To:Subject:From:Date:From;
	b=H1+2Ji2g+sGLdW50KELQxRKzxYy9ZLECWHRzVQKk1HYoTQSxF429h2rcu0t4BvMxV
	 UBRX5iIVIwEznilL9li08CgN1+b+hQaIH5sGV4eFrA9Eo+E5I5bnyI+8kvK7SQ0wC4
	 KT0v3tkJGeokNDTGPwfUGKv5aJHJpmEenq9g58YQPiuvvv0IvJW+7ZEtrhJq+j2jZA
	 4uK5cQok4v5e7Ma0+gfngapHs034V6dLav2yUoNntgY287el5lyuSyIVe9uGjnAg7L
	 EWmBR6qnYyNKLbVPZmOY1bQ1BLgBOZgaYGvfWa+a8uPdvtlkofTAfeHdBwPkpybUse
	 GBqJqSapXwtHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C04AEB64DE
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172596575361.9258.2767811306860881381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373274c1acd80e33a47cc4491abc4cd701d3e9f520fec0e4f4949c679cacd52b
Date: Tue, 10 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725965753
