Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301811A9FB7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779716554; cv=none; b=gR0qe7joNZlFRX8Kd0ef0BZPx+0T9cW0k4Z+z1sb41HZyp/2zjVbZvd78Obu/j6TThyUH88zV/hDA+ntslYjxvEhJFMktaf8nuScq/drqF0lu0zHIXVHXV4CPgQlN/xuFwa+hhgzILkbiPcEYa+gkGQeBnGoByi/S4BwTKwZtV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779716554; c=relaxed/simple;
	bh=GJZoE4tlHq4ThD/5+T0nGeItBuhg7dr3ylBX2m7FLdM=;
	h=To:Subject:From:Message-Id:Date; b=ntc4jyae7N6zAcS15SUz7/YfKa9rP1nU2EixaOaJwbEQZPoLmk+1b3DUg3Qtlf8KKh/56MkARvAp/SVeEXSLfY350YFCWJc+FDjsYJ6LYzFJ1iTYPc/tVlIw5B9fOpBd30lzYWm8iXBKdopWjYOqJ1Mb+XGSWtUz31BeORnyf98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJxL872c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJxL872c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93E5C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779716553;
	bh=GJZoE4tlHq4ThD/5+T0nGeItBuhg7dr3ylBX2m7FLdM=;
	h=To:Subject:From:Date:From;
	b=dJxL872cOLAYL1yCs+wXBHboj5Ok/loWD/RB7nsksrE6dJ3dDeBvYrJlNnwRb1+lL
	 8/dJRjGSRmL4d7jxXQ5Cog96joyh59X4cejXXnh9l+m5MUa0SaH4oGDOOaj4h5VPba
	 2m7Yd5wDLQLcjbnAD2RyRrbmYEGuwHUVRw1KT/3ZbPNwTn/bdFZICuKAbxBZfICRJz
	 +TC3nq1aHr91piKhtoUg0V4PtCUwEIp6pAHFH8HYBk8Yy4Jltl1bI89fwEhQM4zeNV
	 3Rwoo73LNmYnhA4UuyiHJ3mfaywrdVXrnXc1elgi+P2NDi561igRYve6N0vGezyG2n
	 RAMQ0zrD1H2Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF7CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971655369.4370.5327618986451408667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 161ce738bf900d3327cf1c31917443e9d5c4eab738d22a8715d89baf38681dde
Date: Mon, 25 May 2026 13:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779716553
