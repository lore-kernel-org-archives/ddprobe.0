Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9DC3DA7ED
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777906054; cv=none; b=GNcnV+7XS364QFL+2PXDsQz3PqTZVSe+wnwA/XB3ES79pRHtLw9X4syNVOUn0on8plsWi0e1oziJYWEoQpVB+FCLOgJlY/bN6+sLrnC5VPIDZTvahB9f523hq6t16h47wcjnDtmLz/rJMwj6X9Rpem+3618SSfZmTGdnYxoewBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777906054; c=relaxed/simple;
	bh=wLUmbEiRo3odM/f9aLoIw83yEOFaXR9gVLW2Sea8TeA=;
	h=To:Subject:From:Message-Id:Date; b=E3ZAfH/vPnc1jvPmYTnYcC14l14njH8aVOPaQZ5x4yIuXZTRA/dIWHkXDLeY9YXopm13ud6hEKR59YSMOZWS9ANAQDroC88jnMvC9auMDBxWCYmmjvMESg2czeEiqUOnhgV8pYh1hTRZL661Dn/zmHSSIUAIXbxdExIF6p7ENB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUptdyxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUptdyxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB3BC2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777906053;
	bh=wLUmbEiRo3odM/f9aLoIw83yEOFaXR9gVLW2Sea8TeA=;
	h=To:Subject:From:Date:From;
	b=DUptdyxd88ooxE056uUFTNrLNvX1BmC3dBFwHVT5D++rDq0u7XyLA+Kqfsrf/JWtR
	 drebRgbGNStrru9ZQLaPU32JnbFYHmtKNrnipLg0B3Jejzb6uG/set6Ufuajibex79
	 N+o9/dI01ZejWsAwHonpAUqdjt0vuCqEeGhX5R2sfCwWM42aZlXto3LjNxpSP9d6Rq
	 kU3Ord1y9hMIDF3Z22wB7Eub2jiUXADPkTDnjZMzCObVjBax7CiA+Ldl591J2L0LJH
	 J83yzqWbMLP4CMiZnKLOleq7O33pUvpSCpl5gn5JDtcPjXB6JVxd/aNJeOu5Y8gWzn
	 wSfK4j8Ar/ZiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B6AFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790605368.10382.15175265328279445200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1918f3a050e915bf0f05ac11589889d632e53dccfdefebf9dab917272bcd977
Date: Mon, 04 May 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777906053
