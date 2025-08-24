Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB022566
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756043994; cv=none; b=Xnaid/W59jkZxpsH6/pMkXukga2A9yUGCO3JdNqvaNuQTpo8rHNtCoc4GvsVspCF7KN/UQHhpBJXa3TQYDkEeKf7xoZoolGqlcNM/Gsj/V2pFxzmuBzbw6ZFj10G8qcfxkcsMif708xR92JatlBwbpd2cEf+gz50uzKPkQ2h1RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756043994; c=relaxed/simple;
	bh=o6wCcrameaoigssqIvqMlgi3e4GuDePBGGIQqoykohU=;
	h=To:Subject:From:Message-Id:Date; b=RWvVmWoLZcToUekWm9RXqwucOqDDMWYlq21BzoHLctbo1XcBJHA5xyHQF/Iax1ywM5ohAAPPhysRc4CBSVQleUsP/tecgbXwVJlxEV0bMQUrPx3nCKlhG4EUz2jg1c4JOnie30FmxNfn/NtKY+/FB+U89LU3arNvRD7hwZH/5wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGBfr+to; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGBfr+to"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E2BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756043993;
	bh=o6wCcrameaoigssqIvqMlgi3e4GuDePBGGIQqoykohU=;
	h=To:Subject:From:Date:From;
	b=lGBfr+tooitGbHZPQ2A0nnaju99TYc1nivKSR2dr8SpqxD4WJ4NnV7u4MoQJDVz3q
	 JGd3CTWPYIlQtCcBsnnalvaYSnwixcY/WT8kniUrl6Ty3UbuHGIPdwFH1Jr3eg1y5K
	 LxXEfxru7LMENJUI0pZfOkCCdMfFEXOsEwJh47BVjLsJRgAbf8Ga+VvypRLhWTWqQO
	 0BWP6ma3DHWbqcqNEoXeZvyXjXcyNRJWtR9c1nNd0WB+pwMh+xlCqHTacJUsNC5hbH
	 869E0VE3GfxryzdQtejHCFOmPvJqtd7KV/6ciuh/DCEuZ60s57fbWRklz3XYMsqJB0
	 EOSKzn5oQmrkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94401CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604399357.18503.3282230560019582050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c37a0eb84127947d7183611c856d8b65ec672f2df3338cfc1257fe6ff95f4f
Date: Sun, 24 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756043993
