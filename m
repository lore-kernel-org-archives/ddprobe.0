Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A90518C31
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736473554; cv=none; b=aLC8Nk3wpcg+JK48CP6i4TSwlAu0KMkEc7OoF5bYjx4qvRWp5wWslSwW3Bd+PvJyeyLaXx/wEU+bEkbMhYVLWHYfCBrOK5oO2T9biH8WU0uCwmXQ8+ifB15LvbQ26xkEY+E38ffe+u/3PgByGEK8NrvyDAoegN1B47iRBLPKSbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736473554; c=relaxed/simple;
	bh=g/HVl+XwVFcPpTy7huMKdFR0cQFGt0zDoEFDC5itqlc=;
	h=To:Subject:From:Message-Id:Date; b=IksXVidJq5VIeDpY8scnmpBVmIKW3Ow3LRuwZibf7KJ0veSpFsvlyK4xg4z4P1r/tQfgswc/a6wb9nKt6O3dGoycSAvQnl5kPbt6y8tt/7trWZYrhdKXudWWmyFvfgv/CXJFDLNLsi08o2jphTAcRJsVE9JZiAY74RgHonseF1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHE6WUPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHE6WUPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E44C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736473553;
	bh=g/HVl+XwVFcPpTy7huMKdFR0cQFGt0zDoEFDC5itqlc=;
	h=To:Subject:From:Date:From;
	b=kHE6WUPTLPX88b2e04LhdTkYEH86nr5qUsdrzOGQw3HV12/hqvE/O5nTvJRFmxak/
	 ii8vWMzaoIgrJ12c3o1z3+Sd1iQLHENUrfQlNvn06SeFwlz60O+aR8gZRN7ljm8yl1
	 bVWYe3pnxWrd9M+I4jCTKbtb8ICHJChT3pXzxYcfgQr+0OiSy71FY/VuwtxxrLV7kc
	 QbA1AbZA+5A3X3u2K/bY8xLCx3pH5Y9aPZd5GKbBvdGSSMuMKY6TCBQAxtxF6s8Q+Q
	 2EbDtjLwrP2z7lnae0XEtWugc4q2CCdRNrXXALnemsX80XrEGAIga0VxsJ/qKeF+D+
	 6az76UEtDqrdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93788E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173647355359.622.6210576727263174327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9b2bcb60b80b483edb399eda3c2fe293c2e6f898eff7efcf357951ec3d0a59
Date: Fri, 10 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736473553
