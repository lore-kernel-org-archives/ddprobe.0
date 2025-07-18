Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D8B38F9C
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752841194; cv=none; b=Xt4FTCsjyTtXsGdrRoKvZVQaLEYs26S0XLuelVxm/RYb6B1rVrHPRoJTzfJEds5YBn+Uvb97dBdlym5wus7VBUAKX0Yv9ZHtqIAtohwaYCUNT+56WXaHfzBkOfuNRJcuZQu342MbjkJPdal4x7Lv3VXsQr3iGHWaR3XuAhQh32s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752841194; c=relaxed/simple;
	bh=mIPvR7MPfXnIggKM0JBXB9NpZEZj/KIShyo3D/fOYy0=;
	h=To:Subject:From:Message-Id:Date; b=Urdx5h1hDO29qS4qyvW+y9Lk6NGtPKTY4QKydP1NWA8HNJT5sz2YfW+E72Fr0/3FclPoKPPO+1Qn99ZHdumIdAfmKBHA7e9vwWVi+LL651dAVfRV8ttVvMcg6Nj1NMF9yUFE7NsW9F7L3QpLYVVXSkaOotyk80bBiZklO57xAW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mR6pTHAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mR6pTHAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07E7C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752841193;
	bh=mIPvR7MPfXnIggKM0JBXB9NpZEZj/KIShyo3D/fOYy0=;
	h=To:Subject:From:Date:From;
	b=mR6pTHAX9ljvQBEo39FGmASo1PrXbJYcVtf90iJh9l3C2hgMcnR0hfHRJ8zvGRYAg
	 AJm4VmkthRINZDSuGN/MB2bfoIF7Cl3FusljKQqXSNY14Otf9pdEsRhI5qQ5U/9koW
	 g5jp7F+rY5QvA8JAFmOkQWoYnzsxvd3hnMTW0ysgcYm0NKSvEluE7M1pZjKAmG5e5y
	 wKiFhGTbG9IFIAIev7Xdpj9TltyIQqQjq0l/pr74x7IgvlE0MGDN+cNT90xh8R2FEf
	 tRiOAOffwVhvzYS5LZRuQYQzEU7Y8uV8TMmyalcOyh9bDL60xRCjLihiIwDUWVabDR
	 5/HLnYr33Z0/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02FC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284119357.8622.4031741663100927189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d39c9362b5723ed793347146475a2a0b8fe91f3514e60b57f01f4a2aca9369b
Date: Fri, 18 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752841193
