Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4060EA921
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753058994; cv=none; b=f2okj5U0ei6NWfTcSWaCTJc2k/Dpfs1wb5DxYXx5e51Eo1kvMiQQbB0AMmFla8ZG5GYxAh/X1ZB+DOtL4hekWpmyNi/vuQN3PrlgQ1pGouWCvyWaOR5NwqFRtgoCO049iqZG8YU0IcH1dDL1hHxsjgZIbCAykXn59BVHtE9YAGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753058994; c=relaxed/simple;
	bh=rbYHoiwlwi/Csz67jX3MViplBF1giIwCM6+oI5ZfUr4=;
	h=To:Subject:From:Message-Id:Date; b=g9K66mqkXrDA5wlI4CyON/duVaVPrun2GJXpjDycEWAIb0dSnEoQOkdMf4OQ9uItltgkh2X8ZD8hIISTYNVUCDU4QiKpgtNLkyaWEE0iaw66g/VBxQAyg0f4oq8vwOBklYo2KQu5Fff3BbHPXaWNG7wWOPJM7lJQJhkUZ7nMWNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ia+e6mcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ia+e6mcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2089C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753058993;
	bh=rbYHoiwlwi/Csz67jX3MViplBF1giIwCM6+oI5ZfUr4=;
	h=To:Subject:From:Date:From;
	b=ia+e6mcFF3nMJFMuwCforwkp3/SvfeQrHgOtY5V+ptLq/66ORmbK1Jm9fz5G8NcDi
	 XmbCG2WDYqOIDKDKBNumxmHMByRmGOMxUfgQKlM5w+zIY78uxHAqgznQ+oYFZBDQmy
	 AhFpXz4JdOGPnQV7ED0ELf41xxF7SSMczKzybEPQBdKG8MYl2ibmyqme/ZR7KRiLXk
	 Ourrj9B4/Qju1P+dSdxGk3A+sLmLDU3DDKVN0psFOy3andR+fgxAE/1Mln3jxYNGy4
	 iY4F6T0mXPWwToYDf06DFJrbTcMNIkncYeUdKch8C7uSLyyA4yDCclv2qeNPlu0LQP
	 6wrMMc+KkEjsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F066C83F22
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305899357.26906.2284450529513206877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f7108ce56cb188ffbc2d221c62b4d7c5a1a60010f48e19809e032ebf454b26
Date: Mon, 21 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753058993
