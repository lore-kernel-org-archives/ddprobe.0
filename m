Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD7C200114
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732722954; cv=none; b=g5YkKHY1U4bURushvxkonK3pfmZPPaEs4DYFcczZbUfR7UYG6d52mDBeytchJGqq4looqj28f4OLQ8ZziYwzsfraB1pp0KWgqaJqCdbA4Ror2w03btTfnIyE3CA2Gxj274rbEEQBsbagxDxh+SiGaVMzQoDfkF+6QXrSOwwD97Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732722954; c=relaxed/simple;
	bh=6/Wyyq4k1xtQn9NQSSEaXfDeylUe4mwSQaiPxdrbEKo=;
	h=To:Subject:From:Message-Id:Date; b=Ryqm+Ip38dcLDLvtPhqVKiIjaXYhTSubPeFa0pwWP4+mEGnZmswxYfZiHkrvfk9RMU7Xo8tyjoS2e7uHSiOFwwFFZg1NL+A6HImF3t1RGn6Nf9EVALwYNg/2X6hVH6jLG6v16YQNBQ6wkBfqpBqjcvtL/BVr07pPPLVMqfF9YRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWF8qBvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWF8qBvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAF6C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732722953;
	bh=6/Wyyq4k1xtQn9NQSSEaXfDeylUe4mwSQaiPxdrbEKo=;
	h=To:Subject:From:Date:From;
	b=OWF8qBvR6alrqm9xWHoXs1H/gIr7MN5goiNsMrDxWO0J0/da+ryohNggV0xreS4qR
	 Gjb/YGGA19y54lK+469uMfY6kF8ytr6DvkDmkNFFB4xcYAy2j80ECSRM4k+eSODklN
	 Qffc7QWUfd7OqU4YilphAe2wy1almr3y2wPiRVsJOxRpoPNOur0veaR43LdwXgFvHb
	 /vZKrPqLrNSh1hQBF0xp5TOoCAjiVeOJDKNHlwaIv5dD4FXJ1GopwlKt2OynGGmEcn
	 pWIbJFmPnBuGDRNIHqiJCwRMahRSjUeaxFFQi+GdlVkAIpQb55K6kI03mpfZkVEhPz
	 aYAckD74LzvNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95157D6ACEF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272295359.27959.13184919378573047406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0ebdda9dbc32c7d3f41a051a92fc4df5270f29e90b6b6a82b786b513d2ae9f
Date: Wed, 27 Nov 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732722953
