Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD7C2D063C
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760423994; cv=none; b=MclJOXqlsJsnKUh7hAbMsHMt9UwWa1KJAT/He3ZSCMZlMpNMhmDI2cq3Q22TU4Ou9bxKUlwBZ4Q/fmGWpTZ26bHIpwUXeFbI19nZJB+9GO8J43RjT0CLRuUB4lfBvr3UxkzPzU1B6q6ECZ5wWmScyOU5YEGRzhUknybRAn3J+2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760423994; c=relaxed/simple;
	bh=Y3Y2sLaB8sFBissiGV9cZtVUqlY5F0wnUs9mVTkjQL8=;
	h=To:Subject:From:Message-Id:Date; b=kHQqYiXCiRhoTdserTVkg5a8DVT69neiFLVxASUZtR3DB2s/zvGn4zgGHWUnv3aQ49h8kdWE+7QnslMQCbBcO8WiJhS1csgAEzU3JFIYSrLePoTSdKJN40f6SPCHBBAjkFSGonhOi/hd9SpxoBcU9Ry59h3fnWz5hrXn5wwnBGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCBGsCqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCBGsCqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D39C4CEFE
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760423993;
	bh=Y3Y2sLaB8sFBissiGV9cZtVUqlY5F0wnUs9mVTkjQL8=;
	h=To:Subject:From:Date:From;
	b=tCBGsCqOhkHPkWMUFFMqGe7CuHBG2mSDHbfC924nSDYw0ogyAilewDiSyo9zQY1zJ
	 QGOq1cfjd4W+F4dA9RSovTJ0/TDvPlqHHkdFTd0Z4baxXN4IekqwsfgmEqcR2nY0yJ
	 hBlmjRN4vVwqV/5CDWNwQ+VrlzHWvHFOm80+cdSeppduSYf7Q+c6EMmw/cjjtZG/4t
	 DR7DOTr/Tz/0UK0SrZEaC1uIMX/0Rp8EawUOrvBwSMVfeyDm5xZehB2WgKyM3idfYd
	 jpiari03qh3YGWQT8GE6T9o46OOfozNqP64x5L3KMKsYCTJa2qNj97m2Ex8+b86OIc
	 E1vpH4j/5aIhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F436CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042399357.9380.10255031803065465490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae181cddf30a140a2a5c3062d90417317ecad965d6d9e50324678f939c055c16
Date: Tue, 14 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760423993
