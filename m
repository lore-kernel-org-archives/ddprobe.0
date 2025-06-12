Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5537819CC39
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749751194; cv=none; b=tTCQN/f5SDxL9a+JyuiSNBNh+rPRX+GbUi2OIP9HGs0YvnE+Qk0K/JtJkrb6qg6sQh/IsWxrf+xAGG/KV/Mq+eUBP7RauwdA6Y7pTq3omlvz3Op1XsmLMfN8YyG5qgDrPYYatZxquvUz06s4CdlMPpQPhBTH4KFHUh9bLkcYoHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749751194; c=relaxed/simple;
	bh=NlntrMzghGJ2SCPZfpxExiSSfMyKC875pfFXzmwBEFk=;
	h=To:Subject:From:Message-Id:Date; b=FfhyPli/B4kPBjXHm6DOJvaTjWVJhnkzNn3JRHGsbvFG+jxd/GK7qAPOif5su/MT2Z26aW4G5mG1sxVbanjwcgN0GR8vATEfZas621/lHg5k+YhP8lj6w+jiONhrnSR4GcFi6L5JMaC/MBZETg4Pq4WyMIu1vwvMUni2+mIx9qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+9c0u/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+9c0u/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27BEC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749751193;
	bh=NlntrMzghGJ2SCPZfpxExiSSfMyKC875pfFXzmwBEFk=;
	h=To:Subject:From:Date:From;
	b=s+9c0u/5zwOcJ26GS5WF4HOxisEf/eXuPQPDgebKUvDUM2pjgFGfd5/tMo7Kzy2Ik
	 k/oOHxCoZDZ81cenTCvjtJT64IUutGRYJpBVKcIIKqhqT7P/NrfJjMD65xPB8LFyvG
	 4PUFU72Uw+KjEAw9gJoMzCVCBG87nf5cSrZ8Vdv8itza+4gh3+fm7coNEVNWrHO0Ew
	 3DKXQt81tGuE2nImrUrjcs6cfh+WLQK2fuMogeqMQeeE+I54WSpR07QHUP2SfrVPdF
	 HiayzG2JPF/VHozeeodDdr/zJQT+VRWq7Pj8cEe5I3bbUjSeDwq3peKrrrjUGZ6cS2
	 4pytwfuhjWB8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED15C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975119363.30190.2954512252013006812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d32bdb84edf4a7855d8667e1615ff9ee1d3c8ed76a8436d61069420bf34f89
Date: Thu, 12 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749751193
