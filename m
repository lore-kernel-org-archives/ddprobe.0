Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E738C763FC
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709725097; cv=none; b=mZXkvRYtfjHvTb+IPSz6fdD/mo5+QuODBMcRdsUxOEcXn8z+pHZcvzvqKxbXO44WSMouRykMNQIqwloZ/l06ZSs2CvLI7D0xfx1sTnoIULXv5VmeZfJb7Y5G4mKq/Dcy1VJHqEtkimflSvmCOxWKOGDKKN3Y3YmVr2mDkNdbSE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709725097; c=relaxed/simple;
	bh=vnZ/8bNDGu75uOxjOrDYhjQN41VWjAWALIbmrGvIPkQ=;
	h=To:Subject:From:Message-Id:Date; b=hKvor7vGqnsSmvKDYr0DFbc37NKR7R1lH4AeWxaK6wPgzt41q3UBWKAbgKcvLhLa8itD+eTvMzdKjPruAkLkY9MH9I47DD9cCluLbwxrRXAp4QLqyMU2aP8LdpaV6o0NOiDm+9AIgqPrLvw2l2PnjU3FnPO6/mJaM2+p2w8GxWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldToqmsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldToqmsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7355DC433F1
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709725096;
	bh=vnZ/8bNDGu75uOxjOrDYhjQN41VWjAWALIbmrGvIPkQ=;
	h=To:Subject:From:Date:From;
	b=ldToqmsDvHQHgHw34XX9pH2a+wHEhbWGPzFJXhJbvwMtBqyOWBHqoE7d/jkJv+uvM
	 8uqdt7udWesAwvSXINm1pNVhDQRoUZmV4zzOiUa+IGZT+jC4Mr2nWEXVeyddQT95MM
	 GY3lW+Ao7h4RV3WQjWhOO0N0jBeCiIlJsuhp3qEbpCfkKacAY2KAaNMJ+l4KXEhuAB
	 xmznukH+QpwhhwtXEQlcbAV2YAje2S2Sh0mWmgwa4LznpafPpAJ1eWlntjC+XnPfye
	 xP5AQFe0/CBJRvU8hifoHWNu93r8fa4rMvSHPFlldi/mJJCTIK3gUjah527VzjovIm
	 y6d4b9iYEWrKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD6DC54E41
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170972509636.11193.2013345282066820127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d3a75da4b2672cbf46f81e6487513020c9245a927f7d6797df33085609642f
Date: Wed, 06 Mar 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709725096
