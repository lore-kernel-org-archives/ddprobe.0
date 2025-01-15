Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A7D24A7C3
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736952354; cv=none; b=cMIEFoh9PgIOMMquY8buxE4ZjhiGeW00Ay9+aN0gbYopxf7fe9DkoXkSNUnUxFqNPOqR1XXGkBojWrfc/LFgDpvXZ9znAXcdPTcAWFVHZnfJQg0u96diRqHtXFtNG1XxHx/IAI57Tgbh3YFPu1QV6+UbUx92feOm7jsuN3nRU2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736952354; c=relaxed/simple;
	bh=6mTROoSWnJd9LnIlZBX1JevBJvTzKeGIb5eUUV3gH0w=;
	h=To:Subject:From:Message-Id:Date; b=Kmf9NYX7/hHBdcP3COXpbFC/091sBBnBgnQ2kZ9Kc2oeB3yC8H0YOvJCB/htzbEYqH9gyb3q8FScE7xrNRo17BzuS4A4L+ZJfaTV5V3LoH4r4yR/vyT8wVh1r90mqQlYizL3R8h7Nzfahb/Mwr0i5T7Emx3Rn4a5hzAq+2QaF1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEBqUkYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEBqUkYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC920C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736952353;
	bh=6mTROoSWnJd9LnIlZBX1JevBJvTzKeGIb5eUUV3gH0w=;
	h=To:Subject:From:Date:From;
	b=mEBqUkYMghIwcbV+ow35RDb+ZO2aBi2SGK7kdrBxRVx9h6lrfmcAzQDow6V34EE4v
	 lNmVu56ppH3gj/8/ulisndF7sPMKvZ32dvf/vK5IvA3VrMEuQm/8Ee2megH+/3/u7q
	 fm2wdeSctV2cShxzsDQ/pHqVFTPwvMJMVAChSgeXJhFXT2yE/piqMyqPudi7Kmf7AP
	 lWIQYyb3mmGsfXS6vSbgcJWvirAF0b8p7wNnE9YZ+mEA13FVv2RG8p1dVmoCQm8s2f
	 0lFFVRuJRnXiCVfsgdUSLJTJL6hSzAS3MuvAO7Nu/3Y+vUKd0LG6AwOh+xFLz5jVje
	 3/WPONGPRXqXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C61C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173695235360.7558.11435083443653956667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ee917f29c362d692d7ba6d05e853a2ad85b1f79ef931119fca11eeda1fb661
Date: Wed, 15 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736952353
