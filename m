Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A80E368299
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778107054; cv=none; b=LqMZe9dSeJ1tZBsvevh+baxR1XPaWlgRYaJ7qNapop783JK1MR90NgAqcN1paEbx4kq2qtYY/WoAu1zGQZmWQFejcZ6rDI9U7w/QjJlQ7iIfuihTr4XXNfkFlIAk88oh9Xmnb3R9BrL6oFwZMoERrggBZB6lYLjLEMyxpTf4FKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778107054; c=relaxed/simple;
	bh=ktGrRncmctW6f/mXnHqM+Ijn6YJjFf2QagvECjRHMyE=;
	h=To:Subject:From:Message-Id:Date; b=IcEEKipPNPsbMdDwtEgG7j5a7cMTwnmVn58UrT3C1lhFl6EavnvToWXguFwF7Oys2qRmyAWDwaAli9IapnGSOAmcPOqRNOk15hZw07839I6axKhb+hgTveTK6vZGiDpp2ovIpCWX0p40LceSuray85GJcrMBT8IvUQDUGjiT/vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oekOEDL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oekOEDL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD3CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778107053;
	bh=ktGrRncmctW6f/mXnHqM+Ijn6YJjFf2QagvECjRHMyE=;
	h=To:Subject:From:Date:From;
	b=oekOEDL2qq1OR6fyxgMu0Flb8PT5iFTJJGNI1x7jWLrOHM/C6bm9lAn8fICnksglG
	 0wzTyxN8FZFnU1ZiTcXCTwooAI5+dVqOdzx7snV9lH8AjBDQ2DvMe0v/wHYfdfzUnh
	 Qnt/ULDX3o+/NPZpPK8ajF/5hW5yrL4mMQDE62N+tjERkd6VpZfkB5iMPc2YeUkVJG
	 EJtNqK/iexicP1nQeXQss6x1XROc2f3GDSjrc9XI7++x1+vrsXMnCkaLZRcIRZMZWT
	 DHuPQAOc3itOjY7QjHb4hw3UMCRiAbV57YcU6Ixc3PvV+hO1gZHhr/w3/l67+O9TjN
	 UlCSoT4roBmWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5A8CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810705369.4453.16527147438714800747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247b0e70534532ca952de35f559e145d59e29a2da12ce71c82271e4d2273be9c
Date: Wed, 06 May 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778107053
