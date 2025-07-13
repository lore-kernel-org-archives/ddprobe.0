Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF68211F
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752446994; cv=none; b=iHFY90mrHxpqJTviLVH8nOXSm9SBdBy53ZjHRN80lr6/KthvelFPdxBbLdd/FF62+qSo0TQ178PWc1v0HxV8Odoow8juRV1pJ+P3pK8Mq0xAKcz4PRbldjwfESFQQ0Cb2C2xv1oE8WfLaDkyOP9JzsHUhbkgEgZLnnPLYbW9O+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752446994; c=relaxed/simple;
	bh=5tkvv8vlNqkr6YVVtcvPfEUvLYRJGlNItGOOFhSRhcU=;
	h=To:Subject:From:Message-Id:Date; b=qB+VmSuM0Kak+3BQNrE4qFVMiHAQ9Cw3rzu4mL1fywHbO1Veg/k6H6X4ASAtmd0GI64Uc9VO5gKGsXU2jB1LP1W5nXZH4CW15YmTaAsdJjlNC2cr2Hxh2DR47p7izrXT5zC5cWi42MVuVy9Oo/jaxLA5j54KeB+Pg+bP88JeuPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQEpnJFF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQEpnJFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C66AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752446993;
	bh=5tkvv8vlNqkr6YVVtcvPfEUvLYRJGlNItGOOFhSRhcU=;
	h=To:Subject:From:Date:From;
	b=YQEpnJFFTbX7f6hIDrIs8yNw22BN4ETLc177TZoQ0fmCbWp1vX6G3M55oaQBBDUgH
	 VlO+f5hGF7pXHFJWH30gYDWA+ykoHIDhd1CfnrqwwnjCaFwvieRVkOcb3F5W/sF2/o
	 SU6FKs8ApUHHZq6WXQpMn9Sx095R/2j4oim4q+dXi7GIefg6S4cpZmLaba7lD/eZ/A
	 Qk5dXpkf5B+xsN/s8TqPu4Z+2B7UonrUgmRZOF1qtK6VHbCfpbNtdbYk3wSwQqJmfu
	 Z+IF38XQLVQhsHp+6wGDb7ZhDkGmL1ktWkC0667Mm/FNSmsP7luMv/+Zr70M3UNVYY
	 CRdIL7X6M6r5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF17C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244699357.31757.4536480916819313899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c6255ba2b260bf0ad178a206f1f900424e74af9cc8fdcfd1ee7ad036075510
Date: Sun, 13 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752446993
