Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296F77462
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734941754; cv=none; b=UOCOwF/Rxq0ve/GpQCJrPe7+ZAPv3vOrXmTYCO+Irj7fil9phVM4OQpk4fQWtzzVY1j2ok05QJ582K4FmogFu7L6MJTP6MaUFFrztvEsnOt0HFC4QCM61tFA2jz90O+VSB+HJB4tYja9xac+MoC4P4DJE+pO3poHpfKsDbPL6IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734941754; c=relaxed/simple;
	bh=kRBMm2pdJKpdztgLDRAhCcrxoeXJ7cGOEtDMEaX+7wo=;
	h=To:Subject:From:Message-Id:Date; b=Z8t+bFCPBtyjXJljXrtyLsZbq0geDbzIKjYKy4u5W7KV6XwOqmUY0BlzVeBWUjvwdfgNPo8n77G5jpE8taziSbq1NsKQHYfqTPa1afHQquOyPfp/GRII44uM6u9ErnxgwjXFMIw5AGpM9e8tYMVmBc3N9KPYLg5g9rHDtxpt/F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ih3i0CWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ih3i0CWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC51BC4CEDC
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734941753;
	bh=kRBMm2pdJKpdztgLDRAhCcrxoeXJ7cGOEtDMEaX+7wo=;
	h=To:Subject:From:Date:From;
	b=Ih3i0CWtrOlVJ0cRg4LsLqO7DBeZ3s+AgdPtqSNM+odEO09TV5nyRYmC42CluWdVq
	 TqSfCsM1yjLP0WayLtqB1zkHbG84pkzjb7h7rTRRXDYeQxu5sMYtEpI+4SX8qa51/D
	 vZKboNqXnfPF/AKUzPlWvAJV5AmHYUgEM5oc6f2fdd+Wlx4byXVWUUhhxljyKkIQhk
	 FERw9t78FJBVamikSxonY0XKLl4I/foU3P9PcxNAV5Kz1v5ahtlXEvpfCFhg3WCAem
	 KlK/MD81Y/96pwlrV8j7UsUVebSptwBV6u+q497zixw6zZ4Hdz/Ml99F8VaAOxJK7b
	 uyGNjhhQWSo5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EECE7718E
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173494175359.7263.11511956123105435302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ebc48396711ffd531d35e885c33b61647ac04844715fec353482f687c10058
Date: Mon, 23 Dec 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734941753
