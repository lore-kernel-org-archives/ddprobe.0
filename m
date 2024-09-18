Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2821013792B
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726637154; cv=none; b=BGzJm00E97k4x6VHGxcjn/SfhKtVRKlLE1JgNYFJhImzg3VAXlGRmdG8N+mJo2N5B3r09Pt+EsKRwFxdeKmbxLSHJItmHdqyJ7UWpU1BE+2CskBRHXnKXB6hwuzYvOubZTCq8g0BoWPYl54gy7D1w8F1xwLjvSMJKVV6PoQkFjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726637154; c=relaxed/simple;
	bh=LASSo/YFU3m32B2aRbWAJ/8qND7xYbsYAYV5LuAlQzA=;
	h=To:Subject:From:Message-Id:Date; b=b0DU2EWMk4RHQs1o1TaDyYPA/0pmlkRie29ul4s1vp6NvhX8+t7Fs6oyx9pq5+Wvjtb3drE8BB07tkxj6pS2Ua1X9Aq8YV5rGSkT5yeowe5hHQFByTEoPzTGxm0htgLJqkMHUbc23s2Pn7CEIpVK76EJXA7vHnViNIGEe3fxnyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqEf+lni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqEf+lni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA6AC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726637153;
	bh=LASSo/YFU3m32B2aRbWAJ/8qND7xYbsYAYV5LuAlQzA=;
	h=To:Subject:From:Date:From;
	b=hqEf+lni+POakQgSRTdBwdJfHdo5vafP2YZwU5ezN4EzWRpf6gZM1rnj+260XRJCM
	 2dXukoUoC2nYTxUfqdREdPn0ZaGVlR2Yxfg9Tu9ZZNPND0bPsLYoVsXpU//k5MPIHi
	 MTeJ4r6/dJlYyD9NkCqQQRh7bRBRw0HN0qLqRH5KW4ajDRYUGyMR2PraTikRQfFMyK
	 mEbKEexx3d8kV9K5kwQDkWeKQqMc4NEtqwtrGJl1i2IaTCqQCXZu2paUtfj3yAay4V
	 37Z2OCtHufc6iN4hPqLAx25UCmBgb3RPUhcN60KiwgredSJx8GJZVMlj20fY2zep6L
	 BihxI/nCz9SDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955BDCAC5BC
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172663715360.32175.2277167718965648016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84455fa68dc2958a0e9344751ee09c3137e8afdbb4659fdb781c0d46475fcad3
Date: Wed, 18 Sep 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726637153
