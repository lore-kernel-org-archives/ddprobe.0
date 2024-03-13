Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14505BE66
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710317297; cv=none; b=shUXaJxsUFfVXYMnpou3dff2nZVCCJ9/86xzeG+u67/a4srDT29nWZPdQPxRFlSkPEhNe5pLKflkS0HGnUA3Ep1CQMsBhRT8Kz3Yj7H1x8RcnGjO+eN2pwWBTGqoIAS7HIHmjF3i1Kt39OepBwXIToSM6dFzPXhmWIdwgq3+MOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710317297; c=relaxed/simple;
	bh=d6kuFG4maAQOA5ZZUqr36Oi9pKPoEgT7qDFWTLCwv7E=;
	h=To:Subject:From:Message-Id:Date; b=aGbHGpn7JPLuxWuco2R4Euuf3rRlEPEIpmbcukXdA3XlzpOgTRxxBf2jRVPp8wCEOyeLjnb8xnL0aIcFr9xklbnpRQBpczXL1Qrjw3sehkT5VlZuI95C64YQMfWn7mqLLxmesE4SqEV3s41r2nDO8sz6eM5KEXVkBZtSVZXBQ0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtF2/7YC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtF2/7YC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FC2CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710317296;
	bh=d6kuFG4maAQOA5ZZUqr36Oi9pKPoEgT7qDFWTLCwv7E=;
	h=To:Subject:From:Date:From;
	b=UtF2/7YC3J32RewU4lqIJebNpR8B8twmb/w5+P3LhOhSPwsIT6TuaENBJN/CWUa62
	 viSDa92bu64VMTb+rvTdreuTGmX9TvfIDYIziXmAeI3tD73GGd2nIXl2bvVGS1EDD6
	 pwERh+iakEXZIyzV8t1NCpNpH3tsk5+4ODUa1zzzWbGLJmj59Xt3ul09RL6s+VFr8K
	 cIaIsLmNBG+A6qCHK+hWrHrK4ZLZw8lVEvOMxUo8bMydvyY4ssOkrm+8ItGaO9Eur4
	 Pwl4sKP2R/yqBNPiCckPrkZxEl3qRJbKHjgG9GcUpxHJ6TvjduUqk8Xt6LoSpKL2x8
	 IuZ2acahvzejA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B058C54791
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171031729640.17458.13010858319166363387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0f52090b6b7a30d6d2c35e8eba5907d2c9c38844cbfebd599e83a3c975fc79
Date: Wed, 13 Mar 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710317296
