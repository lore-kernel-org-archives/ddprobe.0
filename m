Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C19B307494
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775630134; cv=none; b=QYN44IgxJciJIjLhOk8bRkSg7I6oBB8Me51kHUBNBLFPCPsaFiQBULsr2AhxxIt2BLxSuPatnry7hLE/HzBk7uGWYgr7c71oXurRdWhEdyUmcRPfBdmExIDLBG2lyMMl9VjCHwUN9lXtC6kTcUVEkpeF2Z5GQ7T0o6p+P28lNa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775630134; c=relaxed/simple;
	bh=VDTqQ+pF7JbqugRhNzXNUH2RlwsTbx7HMVdJBFqMzCE=;
	h=To:Subject:From:Message-Id:Date; b=HjwalRnsVMSm/rZWS24V7UGKcmp/3KIwurKps2424RlwrEgo57G4RpAKPbxCDgpoiKps5RAhVoE351TP3M7J0WvZud8mUM7CdY/BfF2spb/rBjeCWFouq6gExpeX1pkblBqNjVYUb7hn//mP8KWSgF/I0zt6WyCuuGOuu3+4K1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdF5UCKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdF5UCKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8312C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775630133;
	bh=VDTqQ+pF7JbqugRhNzXNUH2RlwsTbx7HMVdJBFqMzCE=;
	h=To:Subject:From:Date:From;
	b=NdF5UCKk7j/3GfNlD9UQg823JTwvUABQz4KLytVzNyRqtQCuCdUxNwrZtEVpwBJto
	 I4yM0+mBI5paCLHYifheX2D89xyheRGv1B/xN07Gbop5K9aivL38sZwXfpTk87MjM/
	 1KkBfb5fC3PhAKqOi5ieaUGoJipQX6lHuesJAPvvTfj+Hb5mMsXrPTmHTOnhPNqvBe
	 whKR3w3IVkq9orw9ONUzGsQCWL6QLQLxpZKXowmsWVB+v2IoTHfW+Hf8tBhxilezrR
	 vm5T3jwpyYwR8Rwi8veDj0SkJxDEkLanatwaVj7yHnpSC/NKMWsGAE5NO7ltUTVf5e
	 9Cr9nBSQwwiuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9571FD5F6E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563013368.17777.17942419252141743340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0921728048b6d465ae2d008bdb248df8389c146f1573f45c5178057fd5484ba
Date: Wed, 08 Apr 2026 06:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775630133
