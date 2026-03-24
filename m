Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139B93FE65F
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774370694; cv=none; b=qZwEGeJyfuIlW5xTjzABE/O/r9jFMF2xP+nui2q+pxx75m71MHh38uanj6NEpVlaPcMzfyloiXh2s0aH3JLcrvvGOG9Z6zgnXG+XlUfLflEEBcU36rULK1boTJHc846UgsNooBWErHOHnt7gliHyshiEGYUiIqpNeyV9bjoqI7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774370694; c=relaxed/simple;
	bh=uH3lI5QTZqn8LDp90b06b0l0LksbVx+zvzUDcX6/RbU=;
	h=To:Subject:From:Message-Id:Date; b=sjeXZTWdulT1r8b7wlOWYykcy9yAMJGEn4IuD5S9iTzhmp01Y/5RLJa/0/ZrUKC/jKJwpf0ye4FIzcu2hMOI+owdxtJTVlwdkNac9GqRpgeHVM2lz7fOVJFl3ppAu1KGqXa3PA1E11S8mmxAcJ5U5U8W3cTYvnP/gBdjLJ1eUzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+fCNGDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+fCNGDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F7C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774370693;
	bh=uH3lI5QTZqn8LDp90b06b0l0LksbVx+zvzUDcX6/RbU=;
	h=To:Subject:From:Date:From;
	b=i+fCNGDY/Kt9MefQKX89FOv3RdevuyWG8CdePPBajwHaSPwNHbW8JM1Ze6uYgRQxq
	 aTjggPkxXfT95IKqAq/ekf6brkRXXBPHHyowe+tuPGnmPqzwfWedaOpd6RswzuBW8u
	 fRg4dflpIcMl6G7a9nbLPr7EDWb4NkXQp2LpRWfL/pbM7OJeLswkK4xqcpaUvhhT7Q
	 5hl5bAmotHUup55W8xsX6YRKNF+7hqLlUA4gazHM9iiAbJWhOKjAG+RDWPmOmRX5cy
	 V4LRwZawfFX+OF8ZhyeUTN9gJif7OMLFarobTvQH2E0SeDChg9TaRRG22tdoQP2KBX
	 jHV4kPhsSfijQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EC8F54AD9
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437069360.10974.11841825464678958083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3856c05f5d84399e756292dfaf049f9b19727a6830ce52fb8b49eb892c58ec5e
Date: Tue, 24 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774370693
