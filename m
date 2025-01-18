Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAE035968
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737174954; cv=none; b=bqWN1RZXuJcakrR3hUUgy3Ekwfr8kZJkeVpgiYiVdInn1rSTw1ym7jcO0S+gBw9IfJp6YtGWdTdcfcdEoimO/W9pnxTaUrFgraqhrwOQPrkl80CP9i7R5XI62+rZy83XEXYTbSzLCgYXMjImIU7bwdyl9DH8T8mWUE1fVwmjMZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737174954; c=relaxed/simple;
	bh=gbi3gemiCxH4OS9XSTcJIJKjvgbpJhUSO4PwH1XjdJM=;
	h=To:Subject:From:Message-Id:Date; b=cvUaLiLpJnBMT02kz8urSUoHLKVX1PLqdjVw6RfYt/+uxcVaI8DaeVN+W2Alr9hCMet5Ayh8Xvxb/bS0VewbT6YVyO8/PcmLfm2cMYiJwKOk/si5+AV4QMO2YTz/PzGfwPzxYRAj6SI751gFQxYNDrUI74GuGDDt8lRNMOArKo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAxElHyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAxElHyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C95C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737174953;
	bh=gbi3gemiCxH4OS9XSTcJIJKjvgbpJhUSO4PwH1XjdJM=;
	h=To:Subject:From:Date:From;
	b=KAxElHyRuL8fdqCyx7S2Vp4PdFINIsxXHDeZB93JSr+zPKU3b/FULg5UREu4kHOtU
	 ZQNDezNAZRPyEgwJ9FxWW5fTZ//8IphoxwbLnV96yR2zQSERMFggkHKTz9XglEC241
	 5SNFSPVGhU26OwfhA18M6fQnGtz0mkFGtVIr4AX/glkS4eFrMlIl/YEMMifxPzBcQB
	 LA82nEKBrMAMdQ7WIJDYJG8uVl8tyKnekIl+ug2tdmxVn214+wwwhPJr6Wmz+mVF10
	 KFbSbjkR5FRV4uuygDX9iJDml0V4rPnv6hzxMlvBkhvVJjeHQ9lPtvTFuXVZDyHcFW
	 JQuHvTqb5ArBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94464C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717495359.13726.2440576367281378614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a121be02e04bb5acb27f62932626d0974a8f7e4688a37fa93b247b892b9d758
Date: Sat, 18 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737174953
