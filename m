Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1862DB789
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783640914; cv=none; b=tCr4KhJ2NzQRA+hJwF6jXKU5JV0VPkPNPjZ7bL+teAb8HIc15cVMPQP5yjV52Ctab/+ITmRWnrk+ooheSdakP+1OXq9WTjzY07HzWgSTEstYryCQWAADkslmqnTabOiLzXOeoLXOx3KcYmcxmt58raP4CSyqV62pGKS+BhvaqnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783640914; c=relaxed/simple;
	bh=aFiPtD+ae/jOkR9yh6u2WdZCQF2o813bPGlOf/Q0E3I=;
	h=To:Subject:From:Message-Id:Date; b=GYDBk+qVjVf+mTT7SUAskJmq52a9AB9hAzHPV84PtBbbdnSmH2S3XK9IBJ2FEvuXcCQyi0d3jqT3FO7xrLDQLQwlzSFaXnH9yrJnLZy+bCkM4c3vppN0HpYmjt82M9Gf6xU6tbcCDs2ff12S1fG7dvpr0R9juvDGwo4ah470k4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGtJ9Cof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGtJ9Cof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9EB6C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783640913;
	bh=aFiPtD+ae/jOkR9yh6u2WdZCQF2o813bPGlOf/Q0E3I=;
	h=To:Subject:From:Date:From;
	b=BGtJ9CofKbXJoooI/FJymf5Vyw3HK+SbIN8y5guDoCnnkrN87mCZAc1z3iGghvnKb
	 KGpHXWGWjZCz+Xt8xgGGT8e2bq4RM7n7vS6MR5T4jShDlgnYk0tyoM4TUhf9VKba6R
	 vLbtutdOFZG+uPbNNFq5C8nNkp0J++UZBPS9CUakSk0jVDIgDwqZ4ksu+tqLlqb6so
	 FT3yZ0AmFYyVOOjTwAN+cuqB/k+DvnxMPcX4lcx2vLEt7BjdwIsopSvhKqardp/ZAk
	 GSBDRlvRC7rNfDbKIkECksDbqlTVM9XjjC1WZWKqpQJYBIPOnFyCAoxOyvqhrYJ8Jz
	 Xf4NBaaMhPXGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A832AC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364091368.6091.13168541645975804518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 059d2d740becac07ee3004f32f5f63aaf84ce9caa9765ead80e1b61c7c43818d
Date: Thu, 09 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783640913
