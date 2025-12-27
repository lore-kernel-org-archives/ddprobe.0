Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D1B45C0B
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766825034; cv=none; b=NK+SYrEikG8/zk4nT8+yc2lqAJwHiDxQ8bOLcXX3UJ8bxiQu2a4FhEBCxmgjVEg2sZZgxwH1qdk/tq+sP/19pmfrKuKz7jY+mpT5q5eqSKNMuuGAC3sAOPIdT/htDJE0S7MlsWSqIOu85yhV1RSvSapRMbukOjUzfU8Zkhynsxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766825034; c=relaxed/simple;
	bh=rvK8p7sL07RLal/CnvelrOsBhW0WfF81lPyfugUHV7A=;
	h=To:Subject:From:Message-Id:Date; b=FEFx7qrAHzru10H+ZMRBzYXJmDvYr8D5pX3U3iVzIuWnSrGQHhQkXJRVrlJHVV8RyVY3WINmg6YPSfd+BHBHq3PA+nSA2OEEvutMJ4LVesRpM0lCXJyi8DQ/Njt1cWAdZM2wiaCMsksJyQKZQpkRmjvi1YP2fXXuFwPZrBHxmrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDzgd7py; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDzgd7py"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0274C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766825033;
	bh=rvK8p7sL07RLal/CnvelrOsBhW0WfF81lPyfugUHV7A=;
	h=To:Subject:From:Date:From;
	b=tDzgd7py/K4Sd1F5/riliOME7s57kRtaRFlNpOef2jwc1fqmMdhj8q9vp2z06L7Z1
	 ZNmJWG5g+SO9xP8GIAXBi+IMmnoFvSSUF+Kx5diQKwzy9AAawK6Nazw8XWZEFQ4YP5
	 WDkSKOE4dcOIoM6bbGB/1m5uU5x4AWtTIngJFoQV21DoLwNJe6HwioOBHPa0Mub2HY
	 3+hB8ZzqfQEmAMAzogfvlxorSqi5D7bWvlpug7PapMkzHWPAgIXCbyxCbD0/ZjuJp/
	 F1KxEtdnN/MeEENPo1o9xP3x9Dl/6kEsNdVn1aF7MgULSypqJz+4O3lpbo+N2EMV9J
	 n13147LRcDAog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979C2E8FDD4
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682503359.2083.15944699204779536279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d3208b898dbcd3819545be30114cf72ed2a6ff4ce1e23996cbcdfb184cf348
Date: Sat, 27 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766825033
