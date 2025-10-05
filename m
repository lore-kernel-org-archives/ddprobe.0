Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7D434BA22
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759666194; cv=none; b=THJaQf0NTEJh68OR3gZPL2Deuy3AxSvYwA6wqNoyAzrBkknin5cfm0RQgsEFYjTPnSVLbuosGpM/+uzBx2w+Pe2obvM09O/0HtbOziMIwXnNxsThj4v3PmVd6XucBNFA5+Q/lBjc23Yu4gEmnuaE1mLafSGdUGkHQsD4ejIFktw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759666194; c=relaxed/simple;
	bh=ZR5k5AUkZD2Xj1QgPle2SOx+XxI6Ls0QXv8/r+SFX2M=;
	h=To:Subject:From:Message-Id:Date; b=LEkKECSneerkG1qXDVPA9jOXiIHWWaHs7hk/rHcbu78zWl+Y0+e79uAn59iJ5siTkEO9FWu9lLA8US35JsLgmg0ZBM1aK1DqERM5rXO9uVaHu392n75HeUKlk6RMT9dqt1mwkCX3zQ1m0mHTMGkS0QKdvBnqAmagOuPF5xDdXNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lu7Oqybk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lu7Oqybk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7789C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759666193;
	bh=ZR5k5AUkZD2Xj1QgPle2SOx+XxI6Ls0QXv8/r+SFX2M=;
	h=To:Subject:From:Date:From;
	b=lu7Oqybk7+xasMYR5UdfBcbXYiv6Tv0T/NJEWxb1zArrH2lG/qlFOKBCgyN7xe453
	 hmdG3VUcY2PyO1rwo9+wmZmefoW9hwsokHZdiujk4VdPKC6/VRixUYZailCA637zSi
	 jnBlT+gY1/9jJJr+xks3TCOsVgYEJ2uBs0622Bge7T3Q9ohlgDUzY/WCet5be1+pgr
	 N/YDE2ODYlUulWsoeNPa4oDBxYLRP/u7XLMt4TfkP/3WS5I5zRinYyjFStQUpn9fZU
	 Nm/w0uxTHFpZxrOrLsT/0QQqyzyckqLC9tPA+RuRms2klQho2DltPxHCdCUZi78APH
	 1Mc4J+6pptsCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92027CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966619357.11028.8271666248599818742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50383813865bc35e4bc95ba49e50daeaec54e44a1cc966aefff70b03130313d
Date: Sun, 05 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759666193
