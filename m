Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D227032F749
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763134793; cv=none; b=ZhP1umSNlUskm6KZd6jVERHHSRK6CSkEx4bSvGuH2w2D30AZPLJk+yK1FaGWxKgCbFV2Gp7PYWVflCA3Tc9q5D2sfVKb5AYpp7PSaf8jX1Wdha4yxKtVLU3pGoeCVaydvdLwwZOR+nmlKlr1IiTJBhrY0FDg6VrQyXTLNkCTJ1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763134793; c=relaxed/simple;
	bh=lELMiBNYYcoI3mspgojfy3XC0T33Et05ZgJQnCZJl4Y=;
	h=To:Subject:From:Message-Id:Date; b=GCF51kR8ZA/VQSALam9I9G2CxzMJlS+7Poa32IfEYMM/6nmqEPiMMHve0dEzST366+gdiX4z6RQ2wRyIfENiWV5OaWa4cGFC5lgdhg/3vYcyfmlcf93NybAvaSnuVxBqoBEayq0ZP21iOOIK1QlJSUeImlsur5xuL3WaZWFqRAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujY3lr4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujY3lr4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA394C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763134793;
	bh=lELMiBNYYcoI3mspgojfy3XC0T33Et05ZgJQnCZJl4Y=;
	h=To:Subject:From:Date:From;
	b=ujY3lr4eYHgYj6k2Mc60fsT0Nprf0uxsQqqMohCVsdmKdqYZq+ynlCqz02nIH2yrT
	 /ma3arGIOJcyMsrzp9rjUTpCffSYnTCpSkj9p2gAg6Kez7xyXEtSAoOvEeOFxWG9sb
	 mmYMG4NdPw4f/rKbuEZA5pqDlCkEXe4Q4WQcBiE2qaVHnNVHyS3gWE7docWfV0aMUO
	 MSoc2IfbGgTsHbcl/qdrK5ZXwSBVpeXjGSz1ddKAMlKDmxcMP6o65L8SyOhVvY1TkP
	 08HZd7cL90bq29djgWLcTOkRpnd8FsjNBVUZnd+6jo9UxLoJgZxa1KY8PYRBzynacm
	 Q4lH5k9yHpkfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED28CE7B1B
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313479363.2212.14905300700096498117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69141f43bb7e83ee123a7ff57c0b87cdf001d28a1afe9a73ba6f9ea3fe8c8d8
Date: Fri, 14 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763134793
