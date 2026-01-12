Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1363E1A5B84
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768189434; cv=none; b=EN8bHHJ0Nwjbq9vFjmSRwxJbuA4EQBKdlbzrf7XkO7kQsUu+J3AniENV6+/imPJOMeuw9/o1BTGzwpzMJyzdU2CfQP0sE1+V8lxWd7pi/Oore/KupLRp/fAx1JwBu6FQW8yIjmrxiJiofn/6fni/mpKEp4dFhF/N6emba1m9z3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768189434; c=relaxed/simple;
	bh=gryDg9DrM2y2tde1Atb/NcyIJtYstPv10kYli/dn3xI=;
	h=To:Subject:From:Message-Id:Date; b=UfBEr1wKPy2BZhTkOYFPV91s5S4N47advXh9gUssXT3K21PGKFQYvEFo1boQkzV+K842DbgwDsGViKYTcqLO1A0An9viWGyUN8afJwj6wNXEcA9hmuO6lGMoDrCStAen8/SCD6Em/y+ZRayrhRVHWE/3A1PYWV6pAmg4dqLrLn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/Ph+FDu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/Ph+FDu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C68C19421
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768189433;
	bh=gryDg9DrM2y2tde1Atb/NcyIJtYstPv10kYli/dn3xI=;
	h=To:Subject:From:Date:From;
	b=h/Ph+FDuxh6839qwu/o0hNGwpYfFCQaUb5RuvHrTDYpc9IWkZUTmtAwsN3gGlXiLr
	 +9EEju8W/PxAF1X9Llh5aLUsp8SDGdS2WDFhWnA0Tf+rVJFrzQ57L99gkfLZ+YOx96
	 WmmStHhRYPmMlxNqIKEHXMQISVCpGpKor3SRUCObZt5MUXA8IUJoCzxq47rOAms5C8
	 MMnsUeoHDM1fPVpg5JTTLHb80XOIiJY0ZYNQFzvo7Wn4H8FIx4ZCzVKUdU2nARGqMO
	 TRaVJ4qkqmINRhkk/S+NBsfacieC58SFcwt1YtxaCwSsbknbCdjAxP+He0PrJq52AU
	 0OWQN52AdebjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F905D25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818943357.824.6277004187368563710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1101b33060ee5633fc4902a6438ec735bd8e8bcd5fd7a385465665ed67afd5c9
Date: Mon, 12 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768189433
