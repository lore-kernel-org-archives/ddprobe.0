Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC24331214
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782763714; cv=none; b=EegMMSHvnfwjonjGdNUuSifVdh5Pb360WY2U7dBAbxZHL2H9gLClF8q1aKv51vi5YfgY25dawNlaiPcEs+rn2nFvKIHu3R6DJH+8qESzqC+Rft52Wb+682d/BsLUKn2vJLLuTfCJ3RMn0IUxBSgQkzxUGu5SAZg06a9DODwvsQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782763714; c=relaxed/simple;
	bh=Wyd9B4T3i/94nqk6511BF46ICSh2hPah5qH5FVklxS4=;
	h=To:Subject:From:Message-Id:Date; b=MXGh2rBdu9MUJ2M4InK0WOcsw5BpcTyLOGH8jUihLzEInLfYGjRwL22E5mvDBRmGxoPbsjqMp93pmCFTt95qFlO2xO99Uq23039HUWmcA0T8Jvcw9y6V8AUiin/XwuFM5DXau7r5DSYNNU9gpvjoMai2dFpmUHeAPJo0pLd9Wk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnNoN5X6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnNoN5X6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C91A0C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782763713;
	bh=Wyd9B4T3i/94nqk6511BF46ICSh2hPah5qH5FVklxS4=;
	h=To:Subject:From:Date:From;
	b=UnNoN5X6E0Inmidxs1BvDktzpv8WedBpms+IfMsYV1yNqd73oXTAQOQ7hGNi61mBH
	 wFzuSf5swanqFLaGPNUjFPXbCG/V+/pIbsEVQ9x+7xr7ax1mUXQ4RLPpf9ur8NU5pa
	 qkDLLO8iObeajOdMI899ASznXnUnTm9ehkqPwcTbxgb3Yp9bNeRiG64moeoWBS/WkK
	 9jdCOgjnkCotW9xhkFtfBJOvIslvykHb4NKs96D6bYm+KHw2a4JFE6TTRo1YqU1Vp9
	 lUsoo/0ZiDqRI0kDkrYM+xzbYjfhCVvvP3SO0RUcwta3rQIk8zwrqkuHfDpw83kpfr
	 V34LCWKi+vcOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC445C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276371368.5400.5909475024136356816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67c3e4f695628e1a8f593c988c0a91e378501a9269cf1ca074bd6da170652fec
Date: Mon, 29 Jun 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782763713
