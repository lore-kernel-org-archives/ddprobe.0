Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188DB2AD18
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728809154; cv=none; b=r5ubYJs615rekZ5BbRxN/0bdWqp1UUvDWRmqEKFtlfkAjLyADm8u1wMO6YYnX+sjSIvg6Y+P4ceCffJB9e0KEP7aF11JdHHqZ21hKkDXWgrA6asCkt4QxSbV0w6NXjtArWAaf9Z9SEyt3x0mKcEFvLRHavaik4kmm97wqZMKmaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728809154; c=relaxed/simple;
	bh=Ws2/gK+yp4swPTgjqEENhjFSbc/P3uIbHcpxHsAHAbI=;
	h=To:Subject:From:Message-Id:Date; b=CiNWD6fDCVyZHrEoSlOC5g7UsE0uW8omftEZQjlCsKm3rEllH18oqIL6Agvrm3UZGpVhpwkb5D/WhNkoQW77eSZeEymHGx7EBWRdgEDtE2G9iwhmiFuta/Ccq0E+q1hxly62yJKsUaLHbvRWkRs7OXVQuScAq7yEGzvvP2NaV5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XE7YGhRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XE7YGhRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7829C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728809153;
	bh=Ws2/gK+yp4swPTgjqEENhjFSbc/P3uIbHcpxHsAHAbI=;
	h=To:Subject:From:Date:From;
	b=XE7YGhRQHiq4z98BXo9LFX1PvqHyjvPstXpLDWOvfmtxVJTFQpLHs6aCPoljmDqWv
	 woroh8F0wz1KaWQdb9og9E2xaPwGZabCmLI3oFs//e73d4yPbA5JZGkYMiiXnrb3bR
	 W/WeOPkWZe5o+IOw+pgmqLDNu87ejEdHwLCZNoJFvCFKf88miDWDbeoPME9WQf3THh
	 cMl/4KTHnCvMbpTnMoWUrG/QpNP6HRETZonrjhkfUCToL4fVUvHwmz7y/mW1z7p3f4
	 FdKWTND5J+iIgBrc3Tf264r+PzPb8Df4rYb6iKlY83dSzU1wgeFCJZO8U0V7VdfTE2
	 vOChIBanz5eOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D0DCF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172880915359.4163.15432308256025383663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1006c392e0b464da060034fd61ff9ef99a82b9fd4a48efcad011d67686a698c
Date: Sun, 13 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728809153
