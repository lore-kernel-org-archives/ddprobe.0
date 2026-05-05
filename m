Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D191C1DF256
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777978053; cv=none; b=KOALLnJom4lqMf5Oax/3nK+kotXghku/YnKUF+m1hXHEKdY4eJECk7vs7qo/uoqNT83ptkZVBAjikxGrvaktpSlRIDIWETpZi6Q2X1xUWNq+GRemzwhhKxaNQQ2xo5reYFLm9xAp1i8nZ2d3bWrbVrpLym2LNxdu3l4wFBjs6kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777978053; c=relaxed/simple;
	bh=ZOfpX5PiXw9y9O+dTiRtt7erB84WIoKBWWjB4YesDSA=;
	h=To:Subject:From:Message-Id:Date; b=j6kjBhjJZ+tZevXLEXmE3Uuwpc8qUUAuS0MZaZZTgHo7JRl4MliKs1WorZpEQ90pt6/GK06wEOr2Av0znzZcjYScW2jtz7Qzy3IFoOjATXkI7PfB9Fh2Y456h7wf3XmauD1qCMJmNZKGNO6cM1lijtdwhY1Mr5qbk1i+61CrGnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfjXCVZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfjXCVZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6800C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777978053;
	bh=ZOfpX5PiXw9y9O+dTiRtt7erB84WIoKBWWjB4YesDSA=;
	h=To:Subject:From:Date:From;
	b=OfjXCVZmwuHs21caKq4NoG62IEzKi5pok6ZXZETCacw2tO40QfueyQXiEY16Av1NO
	 nvHv72FaXkFSSgNgKn2WGl9JHlOb5CSwfNYocYYN8dABFH5Mvegvz9rV12gtgPQQ60
	 K0GjrRq3pXtDPQJao8w9961tq/mmXkCpJHEpVFf2YmtBQCAcEqP0kv7uSvEE5dMMH8
	 hcDZMBQxBC4ha6b5I0yrHlYJ5MWyAtCLCg454F3c5RbNz34aa2ZU9mTPSueZOZ6ldX
	 SGh9JPJOqkaoRfDGBsEOP+yqZlMBjjYlsllmlf3IaL1rXE7oIz5KPfMq35YKTelMRY
	 v3kPP+38cvRug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D2ECD342F
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797805368.23019.7416506222131349220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46653b1abd74565a12d536981c5f7561cafce4e9e499dceb38b34d242e20d023
Date: Tue, 05 May 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777978053
