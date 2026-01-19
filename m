Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C80333CEA9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768811034; cv=none; b=jI+aV9GNy97eGXemzUmqX7md4m6nrp7HYx80srWfdladhQYqg/N/ZXwbl6XVn9/7habovRsBIqDi41jUk/MtKYuZSnbve1WdOAugCd4rN9ZoPhBmUz6Rsu81IXMDClX0lzj1rtOXpXd5qZnJ1sNyeLgS/RMyLjNXUp1j2XFGzlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768811034; c=relaxed/simple;
	bh=G59IUhTiQq9QIvw0xbpy5WoV7uGUInSBUW4ysgGoVek=;
	h=To:Subject:From:Message-Id:Date; b=Elxq0g5Svf4PdlIlBeoH7wUy85mmPq5Us/6SdbKWYqqJo57kkuJLzylYfEjPjt1xQ1X5rOIHSPHEJD6XEln6taidhEmroX4ZMk1RU7eA5ul89LUQC48VHFjecWj8akB7YCXuXsanGhq2MF7V5gPuW6I8EsUQOuCBJRMldaLx/bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLaVM3sN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLaVM3sN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70A2C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768811033;
	bh=G59IUhTiQq9QIvw0xbpy5WoV7uGUInSBUW4ysgGoVek=;
	h=To:Subject:From:Date:From;
	b=RLaVM3sND9+EfukOwb6o2fhtJyhGNZ4m9ydXfDmRIYgTQUhvdv0m2MLE1fCHdoXhZ
	 bSH0ctUVBdx7xY9h6g4qXPy6reCkIjw1acaI2Vwmw4Aj420v6B7mTBISYpf/GmrAlf
	 Pj7/AMpkoh/AEwhggSi3EjZx2zdM8AQQ7NieQa1WM7ol39T0tvb4CN88eHqrzKMzub
	 bdGAxVGly0ZKuz7uZG5p+VLvnNeIF2eebb/Ansv+a6e7yp2pIAxrHbhzxX0xbGI6fW
	 ssg9KjlUM7Mf6fv2ZYVn5qrxq6Ig52pIEGZqWm4J7S2pBnOc6F/cS4wAYszhcDEpwT
	 MUEeUcnacspBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96636CA6007
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881103358.29183.1059980637359856571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e470739e865e75c300b7bbe0e8787cc1e3229b3b3bf6f3d88cd51fe950ca34
Date: Mon, 19 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768811033
