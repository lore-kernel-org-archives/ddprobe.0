Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237003630AD
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773332094; cv=none; b=MS6ENwTag8w7tZGXmFwRUoWPo1/kyC1DW/w4a8ZeWWyrYfNr7FtDbsXLVd6WuMgtGVwc1X7hsS3dIOpNOK5SOjuN7m8hmjAQlehLiMRmXUmoGYpUpkJFDVwKAncZPH5hRSsNxOM8MKmU5c1iAhANSnN/ooUURanQ0VHDs1V4ms4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773332094; c=relaxed/simple;
	bh=q2MOFJLF/a477RudDCTZLwj+PMoqw5lcbsirHBkKdmQ=;
	h=To:Subject:From:Message-Id:Date; b=h9xIWesSWL9fa7uT4M8p8KbxJWl48JANefCk6GFaDWj6uPnWY67D3qRy1u928H11SlvV0e+O6m2gtKxEqWYV4knT7R19rlPR9XMHTiCFpZfkYzWmWtl6Nc/D2+xNU2/dnfstzHaTBVcC22cz8VM/V40CV5ebo0wwkTwsRl6cTFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYkTN7Lb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYkTN7Lb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36BCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773332093;
	bh=q2MOFJLF/a477RudDCTZLwj+PMoqw5lcbsirHBkKdmQ=;
	h=To:Subject:From:Date:From;
	b=OYkTN7LbUbl6KZzR8HMIpfQFv1JuOo/5Ud09f78bwKf9SkHjRwPIOlhWQUbnCbONT
	 51RUJ9pgGCO4p6MgN7Ro2mBWTQoZYvhj0X76vyFunJIRz2tImjIKmBhIbuvuDn37jO
	 Ce6HOF4SHXEhzKxyp7ZapKg3y0pfBKw+xyo85JEPrlGTJO983eRoZbQXlbUqlz93kh
	 x76xZbqFylrFQL7YZpaYWPK8/kut2V9Y2kZqcY/Z/XvaJ5nbE2EO5UL7OqlwtqhcrC
	 5wJ0xai2xjpyb33kvljW+bPXMEXi41nr/K6HBwm2wHqSZygN6nlz9+bsTy9vIfiT3Y
	 Oq0qe/K0/cMnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90342106ACC7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333209358.29984.1840068742038374744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640a9d97a4c0f626d2bd56ec62af51dba000fb037fe26646589a82592b1f58c5
Date: Thu, 12 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773332093
