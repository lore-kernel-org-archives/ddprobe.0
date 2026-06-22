Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F103655CE
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782112594; cv=none; b=Df6AdTPTSky6iffrpTUKcNnYOzLvrlUkiVLstQld0oQANQft6iGX30iZvpafpoAElaKNqRlUGI+qcmZYH9YGEkeP1wRR42icmCEE/0oFZOzRq7Dr4orVWHXGTqu5Gh4pkxYabyNXfZoBLwVUmH61xVn2JL9mfcerWTIBcrJBHyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782112594; c=relaxed/simple;
	bh=i2vGgYTbmD33ukZM1bRvFE9UgLSowzV2EjNZwnzpZ9U=;
	h=To:Subject:From:Message-Id:Date; b=iS13Zh5hEx5DRZqGS4ewukVkNMwaCOnXDqMjhBsJ07FfTRkj3L84Fzq4oe9/Z/FspHannTYWGfz/mHVQp7/8191frz269v6xxgK1EknNympg+2xguAW32BUtPUqftov0ot/1hczpgt9+GehvMirw9ggGihxhkYAA0A5wWoabWao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrxSJgAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrxSJgAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30A3C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782112593;
	bh=i2vGgYTbmD33ukZM1bRvFE9UgLSowzV2EjNZwnzpZ9U=;
	h=To:Subject:From:Date:From;
	b=WrxSJgAbvWUIDcz1OpS2MOp2hCqD1A/FcG3iVLSxbQLs5yVX0Z6nYjqz7t+YL2uBi
	 UZO2ZSjy5jIC0HeVGiPDw4h7Uk1GiOwDO0MiWIbNJhgsvIj6M/oLH91plwKIKz1HvS
	 AGLl9ErVW0AC5zjPIQuqU1aoCb0c2nh1fjPL4JRJrZWd78KOkqNF8nVE7CGaGcWS8F
	 yCTTYASFoS8XHEEPsGksOTv7nDah4B1oYSXYbWqBx/wxC7GWh5IZtZogvPjYI/ZoCK
	 XmFlustODfD2+hugayr39Wbo9BvjfTLG82xrfey12YeKQnYC3lCdzonSQvKzvo9q7y
	 x1b5TwUq9P6Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5F6CDB471
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211259370.11204.3303052561961616324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592dab87644af8145fd0f5575c2ed01625109defc9ccc61e8bb11b7f69218f12
Date: Mon, 22 Jun 2026 07:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782112593
