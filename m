Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0FE17C211
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787039434; cv=none; b=rBrDoydqi2L+vn7rxj/e1y4nEcCc0xhdZmVDUjaOpVJ7HVugTRlEUdklHiVXJosIS8sWW/zS3F0hyCYJqtUnEUtUtyTnLXJGl1w/yLzflzfhKboNddGjZG98WEXBM7I8rhu5J4kNvLc8pZAX/YcQkhXr/fQYEYwCYuWIRzhYqUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787039434; c=relaxed/simple;
	bh=8uRHTCRqcgUrue5w3gxA/N5x6Rml4NCivo8tKdEGnAQ=;
	h=To:Subject:From:Message-Id:Date; b=ng5Kx+xjNCiUey/vlcVc3muemd4//LGzAk3+Lvqn92c5o5Xq1+WoYDVb2Q2dO0nsmeqn4XGc0q0zopmJvHZogDNAcSgUBTYDIY01rWOzpti9gqkQU/LFgQfFVDpbeMykKpQzVxu7hdPsIu1T0sEwP9BF+jVWi14cfpNSLVjqr4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9iT0hkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9iT0hkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA34C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787039433;
	bh=8uRHTCRqcgUrue5w3gxA/N5x6Rml4NCivo8tKdEGnAQ=;
	h=To:Subject:From:Date:From;
	b=I9iT0hkhRN0R92tgnr77EqIQTroVLt3QbbppkIQ/tzdY58F+rJDOyhwIezEV+72Uk
	 5aY0fUC+ApBlUMGWpGP45i2MgZ9Co0879N6CZPczPGH6hqcyQ+x9giCh6NFL8GEL2Q
	 5S8aQHJkqvbNDCAEEy64Hz8nnDem8MoabMrYvVbRiQ9nCMuiMDf8SOo7Svxqrallgq
	 pCM9OW1fLW4nmYxCQKQNa5LHsL87gQZUPVSNUgusE/dMIk2ObTOqGpjmR6tnPjQ8NH
	 0AHAK1yMVlpIvkGVhtTDjwI7cTAiALSKpNS8vxLb3gBH/buM413I6b82OowN7U+41B
	 1eg4josRG6PxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EEDC5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703943368.12159.4543816342694539465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4bcbc196f19345ff79ce5c99f087edd72e6e21ed7dd7a7acd4282a70042cab1
Date: Tue, 18 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787039433
