Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F35FFC0A
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770876294; cv=none; b=izwIay00Ze0aiVuoLfZqvmqKwvzJvO/xSc58V2zOOZUjWRyl1jCosWabEVEnLMkudmBC32kmjpNIUymxISpAt61ax5A/3nTCT+IGdKiWYRE551/cbBh+1+FVusA8FISg7zvprHic+Al+CfKG8DSs0zqNUkuDIToIuAc9TA8XBNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770876294; c=relaxed/simple;
	bh=23eFM1IE3qbdsUGWAa8LgzcJQ6UGjpC8UraWvSm6rMs=;
	h=To:Subject:From:Message-Id:Date; b=C0bVXwiUVFBxaelMDUaU5HzExc17LGKIAJzmbyHt8+hz28tmN3LNGhiIA7dqEfufEFzLkpZ4nohoFN5todGTF3zUgHfHs8wm+lFkhMB5Ba7Ls+IUIUKESyUO5ZtwiM2bYTJkj2pCkmo/e0UyC+Dr+3guMjs6MVhJ/grr2CZdLUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXxIY/1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXxIY/1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD48DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770876293;
	bh=23eFM1IE3qbdsUGWAa8LgzcJQ6UGjpC8UraWvSm6rMs=;
	h=To:Subject:From:Date:From;
	b=qXxIY/1KcqhN0TKpCe+lWFOvZEyTaaHK4cy4Tu+FVuMAfTnGjekm6XnZw/gucThEz
	 JrQI1st37wJLHuS+LujlAFivqVNpyFk22rhWQlhXWgnQQ2hYMe5/W8VasfDeVM9FW0
	 VrleG7+zWZMsdqJ91ASOnBYz1Dxw4A+irrWP86+bDpFqWv8bEsP7CHKPQbgAp2MQ2b
	 TJ/LiaiG8Mw8ozrCAB9DDvy4H9Y5wyAfy3/xa3kjUvB2zO0IUbKXksFoKt1Ih02Z25
	 ZMmxuWBd6lRnZakkhMhVRX13d/Xe5SwYwT/3EfVNVPBN+sKDnn1qec8dL1BS1T0vRD
	 MpKunNJdmkeYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E9AEDF042
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087629361.14324.4514596770858314483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572f065a3567512bfc5112ceb9845410506be679b496e18ef6ca94551e68f1b6
Date: Thu, 12 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770876293
