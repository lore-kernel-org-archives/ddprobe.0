Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B29F1FBC8D
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 21:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739395134; cv=none; b=lGt3kNP7G3zXMSPE8Oef2Gcf1/NCydjRWO2G1Sap8gM/xDygmKNmW2hzKP/QifpC8gyWurIy+lQrxwq+N9bpQfFYM4Mgtoj+O9PILiswr/JXV4w5hjqnb9crFefFF7C5iLyjgAsw95e1I7kPeTyMaaQ0NE9TMGAYWpuQw5XGbvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739395134; c=relaxed/simple;
	bh=7EqVqGtws4GLZgScecLLvKAYHICDhWg/zLP9BqPPNc4=;
	h=To:Subject:From:Message-Id:Date; b=cuaoVwSxNrZGiM48fWP/7OnQSuSfqJukaVDwRBAUcGYqYuNtHjlMr7LLa3GcA9JYyIaIjVWPllQUsG4VVJDQumSgTZ8vmORAE+DPOF/SxI6FG35KNGIDJ6ECsQTG8gAPbSNmDSFWvTB4tfsDzwIM7GZf50lTHdR4lVi3khvfNxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NflNwkFf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NflNwkFf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3759C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 21:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739395133;
	bh=7EqVqGtws4GLZgScecLLvKAYHICDhWg/zLP9BqPPNc4=;
	h=To:Subject:From:Date:From;
	b=NflNwkFfWzFOAaxqmjlt3jmuGUoTXJRNPuuopkhGynr72x0iTu9ER1ilBbJD7YeC7
	 jAXraRo8TKG/mBzZo76GKF2hnR4HGdrwyDCmjeQqL5Q96yQmMq6blVDykrMmN4Pqtx
	 PbBotDp+Vudte5ITF6QXkz38Ig+Kwq9YKI+8e0eEpFfRsUOAfciZlugXdZCvGSKTT8
	 YzPlQ7JE55cJL8kipE09fdEHpzglAL9vcTSw3KpNx+ENuWNrb2qCBxwHorrY7PD2/s
	 KaJhLF5y2hIX9lEz1o7CzfDVtvWD3Q79Rl05SzB3bqRsTH8bToADC3recSbXP82vJe
	 yrIajIBX1nmuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3975C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 21:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173939513366.11508.8985656177442658213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a883a60405d3fc7997076b61da98767847f9d2e121ce1678595d6bc2426a057f
Date: Wed, 12 Feb 2025 21:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739395133
