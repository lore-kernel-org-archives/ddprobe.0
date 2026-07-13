Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402517478
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783945714; cv=none; b=CMdAI2xbN7GaYVSZDgYk9jJLkiROJNlWOk9NhPz8B0nD8XbWYIqboFMOs/gDbUXycqOObAyErKAPn0y9Dv2Qb2cZa8FnWGFSYodfPepr9ziIUn1oDoqD5c9k3adevEijF4Nl4gqsJWN+G5n3IPpq6SP2nU5yVR9U9BK3bP8o/B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783945714; c=relaxed/simple;
	bh=qTxv1NSbiZ1KLHBDx5Ybm1Eu1ilwaGMjkYVWLA79uWo=;
	h=To:Subject:From:Message-Id:Date; b=hB8K1a4t2sn84AVRows+4kFoZ5tY8l6k2Ra3BlYuc4j6UWf4WCoajsvPvQy8Gwb8XsDecWWMdxB8zE5/kFjx7iHFnqfVpTM5BTnONH4jRkMZ+OUfOGWQ0cvh2SJwyJM8FbJWssLxeEgoKV3e+EOz7qLL1d2miICEZCCHy1LF3No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HymEvsta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HymEvsta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD599C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783945713;
	bh=qTxv1NSbiZ1KLHBDx5Ybm1Eu1ilwaGMjkYVWLA79uWo=;
	h=To:Subject:From:Date:From;
	b=HymEvstasZ3UcE6SF2Epg72PXvtyY8eH8lOILXC77uAgvR81gozcSvUxrAEmbRr9R
	 NiiQDC/cn2L3P55nwR1bjRwZ/eLg5TBgT4V9FLLUSLnM79UuAn2obN+yz0WiSnBTr5
	 QjcCwYxQ7yA28xp06vA8foJ3NO8CnXrq0J25kc8rIJMlT5x7LZn/oQ9tXM6G9ZqDRz
	 GuH6E9w/xI9sIAI90yI8NN1l6OgRcDymeI7Gs08PJkhLzCb8iTda3jrz+OfL5U6E+q
	 Qz0itBzRVUX7xZAcEHGBi91kGTDDvQhenNB8OJIZ7ZhPjcx5UY0YXv7TDSGrUa+rso
	 lUM0VGln7RCxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97FCC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394571368.7378.13899469741138187842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd871b0665b67973e91fd4212a5573648ae41cac5fce4d19ccf3535fd453246
Date: Mon, 13 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783945713
