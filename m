Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BD35CAC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 08:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714896743; cv=none; b=hTFfVpjf58zWeId7M0NF8V98QcTTCOFe0xxhWQ6jv6eb08enrtV0VXtlnquR6rxO3jMlvyLV4z/hVX0s0lto6pJ2K+gmagpRM6fvtCkh0oIRji1SCQNv7YVDGuIj6a68GzyKYxks9VtIUtwBwc5c6u0fDnnshQSCaJ0Tjwmk2Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714896743; c=relaxed/simple;
	bh=/TqCyERVBd5I2H4csP35FZY9dmgGaoaj60dO5pjfEqg=;
	h=To:Subject:From:Message-Id:Date; b=BLruwWQZnNjGNcDrzFYlyUWTGMdHp6XkOLOKaTAXOAFNSMYZdjrUR+kKT0eOXuXJPewJ4V4qj/ok6cDn0N1CGucw9zTaosVZ8FPvTNwO/WONDRYdvGbcoI0nqLFCwXsNRul3SIfVvB/WbHaQun4ujekloSKlQfGLgfUYHvbJnYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUB2vInr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUB2vInr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E422CC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714896742;
	bh=/TqCyERVBd5I2H4csP35FZY9dmgGaoaj60dO5pjfEqg=;
	h=To:Subject:From:Date:From;
	b=tUB2vInrBTkPNhl5d+pHF5DGgeEQ2xs2Rtak7p6YMaURg+Rl3dhsVKMMqgQS8XPXv
	 7LjH7C2nJZJXt2vKuDhF6atOZ7pc1evm/FyP+NcKDaIakj5/aCqcyIoWOtZImcnek3
	 geKA6jjlmS2vu2JgWqMJ7xJ31Ie1VOgLZT2gwWEdZIjDBn4KVHUZs4vjkh9rKyuQcH
	 3Kp49/7ADL4JGyvlSUZT6LECuRsRWiQiqzvEVUDdOB0Aqnw7/QW3+fYGTRljgJkOb/
	 BwMVlxFh037xfs30ddoO4+CCZZ8O5plM88C9Py4yxys53Rh8lZqca2NJhfpT4sDD6q
	 Iq+5Azm51Q5OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC85AC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171489674280.30236.16849998553230372783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a2f40e6fc462c0713e0158a155cd5f0a86fb8495893fb1f24be9bf3a24c706
Date: Sun, 05 May 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714896742
