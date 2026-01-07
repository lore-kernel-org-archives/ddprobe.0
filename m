Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA49335061
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767805434; cv=none; b=XqYRpBzYJ40oV/3zATZEp7ptU8f1Gm2pQRa2TtZHcNETKbkBAEkunbjrovWfWkH4ZuVgxky+8JEAl047aEXoLyls+Hgb0nq/gmsVJ7EU/xbEZ0AMerB46SQYTvCwvaFoBlKtW5DcIsidqBC5EOMkI6W5By0lcMGLdZHRf0htqZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767805434; c=relaxed/simple;
	bh=wDEN/vCNKibN40rIofXz4QMIx/6XrFbAw9yAgfqm5B4=;
	h=To:Subject:From:Message-Id:Date; b=eCL38F7k9cBHMhAemfDri/BhXmWrtjhgDWJzisICES9XsFa+6Z2hkcII0TG4GEOSKU07NghP9fvStvXV8+E9GE8I2x/W1qmUlzAgpjaPYSqYRO4c16ZIyXV8QtjDHowkJ+G05eAtVnRxUdrJ2t59J50Jie1Q+6UqTuSA4rwX/2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUHjZQ/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUHjZQ/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE0BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767805433;
	bh=wDEN/vCNKibN40rIofXz4QMIx/6XrFbAw9yAgfqm5B4=;
	h=To:Subject:From:Date:From;
	b=SUHjZQ/JFlg5Qr/NTqmgBrZqpOC1IcP7E65CnuUSBF2GZAVlpouQDQT0fMYBThmOt
	 gSoJEKnabwvQUqAWr9ujO+qzqGKnmYJOH6oriMd9ChCTjSMbW+pIq3RUQydgn+jThL
	 LlZKuNKg53IvKAnoebxlcu1K9rhDUeWKBTTF+tqAiISfNLbvsYS4vH0uLcJEu9Hj5F
	 //BWA8GjjUMewr6WnVOwK/HdfhnpRCTD4XCZRPoFpo3oySuGxzulZFo/5D42jnAgAs
	 7Z154/AzZmhxbIPI6UNa1mnQxiW8yn+xmUe3gWE0Ed6empSYQhKCYPjb5YtUOsAMcQ
	 Q+Cc10oKgzViA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F607D0D141
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780543357.28405.5012313859407135510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05811d00a3361ce2d1570cbb7436fa0303132915850c1f08bd65d070cbc66168
Date: Wed, 07 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767805433
