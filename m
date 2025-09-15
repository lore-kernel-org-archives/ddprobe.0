Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140A11E9B1C
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757966394; cv=none; b=esRlC55eRciFi512X/WaZanXdOf62xztKNSugkhCYzkGwuTEFeFKiGy1Lo6MDtYGl/NAb4CV3wlnvgq4uz55+S0rbSSLSt3ZVstW1908+ikXF3l4jomCUP/wx4inx1SLNTwHncWaSoMqAi5gFe/2Pewn3UKwXZBLy9l9K5+rnHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757966394; c=relaxed/simple;
	bh=pYpqBoOR9lZzbqqILbZgtRVbpYFdm0tDGexdh+EPHF4=;
	h=To:Subject:From:Message-Id:Date; b=OK1JKZ0Q+K1uMT5NDjONk/UPFkm7FFd2XQEEUJgvFwDcdScuLkHYAq1Fl+gXj87MrRHK5Fzm1/gsDLC0mtyhDdzVSTZ+khMOfAcBc8neEPkrHSM5UDN0Sr8e3HPLDoHaqHCW4fFOwAIfueNpVbO7gJGvfTkRqeqtOEhAD8OB8uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8SbDb+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8SbDb+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7823C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757966393;
	bh=pYpqBoOR9lZzbqqILbZgtRVbpYFdm0tDGexdh+EPHF4=;
	h=To:Subject:From:Date:From;
	b=M8SbDb+qDsIyDr/oZ8MPAiNF9TmHsb2qJD4Pj7h8V+dyIlU8p4yfMNlfsRvlE1RFe
	 +u5GItfbBORl8OBDa8GO1Tgy4o7XER4F0/R+9ZqOaytu5zVuld4fIuo0djQO1jF+bN
	 9BD+Af5BOXaEbcncKCDKj7WFfOBTsYlDyRBjoF2h4+UkOwWNtaSHA8kPzxERb3Bh5S
	 LgQVBYKSKovFuHgcYTvjxHj3DacbZaJljm7/2nI3cDUPI9VeCBskf4yysnpIQceczz
	 gqR94Q+kgMk8xu7VpSxZ68LmAMZ2Abt3KhYUmFhbMDKWDOuI2uGkrhGQoUTAO38cef
	 8rpC4NvtiIriQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B37CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796639358.14790.13826364291218129897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907912274fcc20ee62d79f3688afeb586154f228f75311c599f00bac79a34b9d
Date: Mon, 15 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757966393
