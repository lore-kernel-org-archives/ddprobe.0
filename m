Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBFA1852
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710637697; cv=none; b=f2cJMwXcr54Qr+Njc5/3vm4o8abPN2vSlcU1WLp+3Wt8hsRcyY7IM3V/uprZnZObBc1t6+t5fgwupfJBBfWYsgaNGrrjH4MjYEYbnvMLRqc5eGUFeieL4Ucjri5RPhFeHASF2lp73IazMsaiboBuoNRK5Pu2U8cmA85fT49yjdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710637697; c=relaxed/simple;
	bh=MaJmBPOshaiBdAShXqSz6mzj1Q5EUJOvcORoUCYPhJs=;
	h=To:Subject:From:Message-Id:Date; b=OUOmsq92/kgX3EjrFZMY1OZIlCidjM8c6iLE9egFbwb41E8WzdxTmbU9bZwuXoewkG4yl8q/DqOR4fIJeG9iaV95h7BWoRhub6/UwWG63S/xFQD6zwBXGxRN1Jb9qiW3k7TphGGIYjaQZMillRqDfGQbWHuT2fz6lXPSoxzLM24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjjVDEM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjjVDEM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7349BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710637696;
	bh=MaJmBPOshaiBdAShXqSz6mzj1Q5EUJOvcORoUCYPhJs=;
	h=To:Subject:From:Date:From;
	b=gjjVDEM48v7vkUPIDzAnOezndJbJOGVyCjLnT3+TMyNZ0CUfHc397cqT4ow1jJWiG
	 v9TdgCwV0pCeRkBcZhiWi96uneRboKvoF3VBAMdbdkm6EqmxdE7qjGk5wQzffxu2h5
	 cLuarzPDBxMyhLMSUY6mZjijbJwU4xSADdkNCVViZL/3lBOsXz0rutrZOJlkYU2baE
	 birxiZ3M7tQVZlfg13t+a4Zw4f9yLaYmpw+2iemVfM2ebR2673gikPzHGKe33cyZYZ
	 KxrKM+S6cR5wtnSGMLdHBi+2gfHox62Kj1AL+NTa4Clufoirwhb71ruZpC+u7+w+ao
	 zKbzs77ECsCfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 616FDC54E5D
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171063769636.3680.14329163638847513521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e4f26d1c910d0e3f2d98c63fbfe9b9474dd48c1550bb0cd02104c3a7d402a1
Date: Sun, 17 Mar 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710637696
