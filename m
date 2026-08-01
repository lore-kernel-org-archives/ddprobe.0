Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0AD36B06A
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785562234; cv=none; b=pebjWLrLlu3jPPskPafAtcma3/flNdIsoI++ylX5fhCmIZamWlTmKCcyoGtaZS3+w6b1IcJ2FtXCvjXCT7qTi9qk92enWt1VVj2wCZO30BQPQEMAoPj8glP+k6Yi5FoQowleDMTIB8FxKyNIn4pZpY/V2As0HVYwhlHK9LbYIkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785562234; c=relaxed/simple;
	bh=ZNjiPxPY4GeaZJF2eCESKSIe8M6WpcGebbmKO4TL2SQ=;
	h=To:Subject:From:Message-Id:Date; b=iDNpPlJ49f9r5HJyAH+PxZVDVNhILqYZZhJFiR9cp792FRA1PRuWY1CK5VPIaP04gZMqlAyGVWW6DrisFMUS0Stwl6D1sTQN7c37iKJQJNLafILP+podR07qFmWew3DBdZw9c+gE4zw5AldjeXJKAz5P9/xZhSzfO9DLJ7KRUXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieUrI1pZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieUrI1pZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4C4C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785562233;
	bh=ZNjiPxPY4GeaZJF2eCESKSIe8M6WpcGebbmKO4TL2SQ=;
	h=To:Subject:From:Date:From;
	b=ieUrI1pZFv3+oxemINtmSaVJrk+LdI0AuLYUKwVvhb8aNjRFliIGLn2xWu8dDiDAL
	 TsgOvFVbfxLEDP52hujiLzTcZ97cOLhzW8UHGqWCr9BAzug84f/YebpBIbbRVMOHlF
	 EWCfqdNUy0CimAG1EH3A/bybIX1ANHP2zuKDuwrum62yYobCYSs2Vh67IFC37e1aaw
	 wvTWP2w8z76rDCkppe+PLdCP0IbV+vF6W4HQO33e8ZIsbaAW4fYOMVkz7rEAypm3R2
	 25zSaoYiLUBT4RLPGtnJIFP7Li1yMc3hJj5ST2Qg7Ij3nQo81lrxlhLczdmz3PR6Dc
	 cR/xcPB2kHHKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC59C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556223368.30203.3271538343669735987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca607fea28eebd303faa6b7c46090cd6c64c7878ed3a911da4d1acc378fddd78
Date: Sat, 01 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785562233
