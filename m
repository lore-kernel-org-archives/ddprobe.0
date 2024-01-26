Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BE010EB
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706228897; cv=none; b=OopRhvG7u01GQ/0g6kCsDweYD9MklnOamH9A4jo1WaJMHO7lQeS8MzWTz+MmtnRx6RVHORLO+9VFE7IcOdZ8WXXY618a/INQzcj2EMZ47wWJ159NVM8PTF9ANJsZonuVro/y3FBxpPpEHbjaE38PrTsE3N7QjjaZ4sn842nU18U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706228897; c=relaxed/simple;
	bh=9Bp2wG7lSRYZZdh+ScnFbjlSu9fzXuU69wowl8H130A=;
	h=To:Subject:From:Message-Id:Date; b=UVk0p18FeCsvOpznVbPhgGT55IVTNlldD2wTWS3/FxK0Gs9Y1WQ5evLz3JOJXLdfndr3Hz23f9AwLqo0bJxsWGP7i3Y7TtfvSv886abE1muKlpVbkF1XCwXhBJreoSFEybnYqHqll0IRDFvyXKdssSxwTuuvMr1haTgKaCGCmXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LU8xj7BN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LU8xj7BN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A6FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706228896;
	bh=9Bp2wG7lSRYZZdh+ScnFbjlSu9fzXuU69wowl8H130A=;
	h=To:Subject:From:Date:From;
	b=LU8xj7BN6m795jOUgwe6MVWiqP7WPtguE6Wc4I4ASRwnqhpa4jvZigchzSM4twVZ5
	 IYq/DfPR5eD/Z2hy17nJNQPECyubYWCZF4pQdgkWpv8rhxWRcw03QBmhfj1APfJy/L
	 oPHaAkQ8izFz2QxytofLMyw7V6iM4DaV9rcgYkp9jksYrfRQixmSdvilduxcBIpM4Z
	 RB+Gs3Bh36iKbJHBp3EWokrln06Y/+dcpLSbevz6qxGMaxUWDsnUIr3wkn4KSmO4YA
	 vfL+bHDmc+XbnBKv3QdnAOnUWM718ge+9VIPPayqB4F+vTrScENPIbIl3ZWQkKSl4/
	 zpYbzGAu7WxGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6351DC47258
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170622889638.26102.8106519346667662433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f420cdf9a525368849ac259eac176af86934c925c74b60d68c0cacbfec2b978
Date: Fri, 26 Jan 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706228896
