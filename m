Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D021A9F97
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782780514; cv=none; b=X/7c1I9UzojSeBDoApc5q8Ok60WAXyn1xAqhQPNef8IDlAbvng890t/Zvr4xD9HCsiGVku/rNPHtKZCA7NkdbbGg/9bzBVwR2Cw4w6SWsMhp/pcdjdGtYyEvl/q0AbWEdMQQFMeCzzO6waAnvh6THu/s0via/fEoBV1m3cXjWq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782780514; c=relaxed/simple;
	bh=hjljLVraVITvtAdy0jyqbtGKVm1n7Wl9zmcAkv9NiwI=;
	h=To:Subject:From:Message-Id:Date; b=C+9fU7qTj+LDXWkRPcI7U+hAI+vVB4u5bv/GrIeEkqEV9qdmGuDbaHPnknQq6PbkFrCi4AQiuwiLyk8T4DV5CqUnDbwU3S2YvMGzu6g3OX7HDkSDdda/DEyioDPdFNFBP6JzHTRmmshOlLmGYbPd9StY/puRN+f2RnFwAxKNFmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpiB9Tut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpiB9Tut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3112C19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782780513;
	bh=hjljLVraVITvtAdy0jyqbtGKVm1n7Wl9zmcAkv9NiwI=;
	h=To:Subject:From:Date:From;
	b=gpiB9TutsWoKOnY+EYhBjsEBLfJFRh9YaKG8LVYI/9yteEWhNg3GRWZr7CGk86gHZ
	 J0h9cE+V9vLdFKDmcVdNicyz3J//F8F+6T6m5S+R4aQwpNlBSMnZ395mNqlXW4Jbll
	 CI3dTLGUsKL8pXc4FYB2s2BF6saHbkzGK5aFKZxJm5Vx+px7YkBQkROQg6++a2i3L1
	 2xH6epeVJVX63obhOBtXXl5TvpDxdW147I7/kfC9X/QbyU6iK6qRM+pMMdZIJPcoDZ
	 w+2/+UWi6rprs+unveWDpPij6TnZu7kfLAt5xsG5aZUJE0oiwLdhzOfo9JlgCJ+C59
	 3cvFP5cBPqDhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9867C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278051368.7852.4132291823411804047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986bafef029d010fd7c7485984894bf0f1b75768a6ab25a6b111bf59ecfd9bfa
Date: Tue, 30 Jun 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782780513
