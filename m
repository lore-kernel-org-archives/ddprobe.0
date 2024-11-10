Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB6C2A8C1
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731245754; cv=none; b=GPqfGwyURlVXIDyZ1L72m4S1opblNk1a0ZJrHgOn0f0O8rqR7MVcpaLMA9ACzSq60dXLVaw249wb9rPFLIBTSYa/a4by0Y4rLhGRaKgjqi1CDcboKsKCddyYb+BXfUswZY2JIUlIy9mTN4mFpiB0EcVL5kwgMvAnj+rzB4rscII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731245754; c=relaxed/simple;
	bh=AFVJ9r0Slfn6/WK6yBLf9y6y4QkmepQZ5YP1tyct2T8=;
	h=To:Subject:From:Message-Id:Date; b=VUADLlb0+3BQVAi3RWKfZaUfeBfXqFjh6l5klkzPbWCvPHlrP8JEdCJE2VCb+lRc3G4eE7mth7JVlx6PLy88bZ7DE7u+8yMXpQIR3IeW0FpjSfdkZo+rXk8GCwWUh2MTExqGixy0b1GhkTyoHd1Gl9sFfquAhu0i68FXwNg144k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPEKBSgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPEKBSgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB27AC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731245753;
	bh=AFVJ9r0Slfn6/WK6yBLf9y6y4QkmepQZ5YP1tyct2T8=;
	h=To:Subject:From:Date:From;
	b=TPEKBSgQXQy/A53OTC+1blUzKR45HXk72jVInk7UE8nXOFAXLkqT8OpX5XBOOQWsJ
	 qwoiLAf7LI/wx5VDPEpgDLcuZLjgxC9GnqQlCv/iGZ4RnJkPEswKiLVrSKHfHhlgsc
	 jJk9C28R0GIuSXOd6KmmcH0yT1SfUiHXYlmWZtbdnwUX0HO0Ufg1IgV7X/kpnxsoJf
	 UZN8Nl/3t0MCDysXoDEvLxKWbNd5rJbDYjTueLof/+u17TBwlMmNmZDkhrM+FiDgbB
	 9Np9+DPbDG3IMLX7VQ8NAVYG/xFnGp5q6L4UOMKMp+fi527p2hIkCZhOmCEfPkV/If
	 jXv5tJCvuQPRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAFDD5E38D
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173124575359.2204.3818970477062098562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a713aa10f7e1ffc86f4d6081e652da64e75a7c57a5124eb64a3d5d8ee441443
Date: Sun, 10 Nov 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731245753
