Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC5429E0E6
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758174594; cv=none; b=XV7roU5tBv7UFHAEMa1LUHps6OPeNge9a9h2WVn6D8KRq3sdvtZqoFK2mQyBVaov+Al7dwBaLvGhtFF6mG0u3xxpmiYPtNoqPO4xhlSobBdgvPNw7++5MnDksyDEp+5Sj4mjPis/4B3m4Vc9A/QpyTM3QG7q+OCwMON3KNG6L9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758174594; c=relaxed/simple;
	bh=9f0epay4/uP3hoWGHoXdmEjBU5NCsSVllZYGyTca7A8=;
	h=To:Subject:From:Message-Id:Date; b=K+TWvJ88Q++f9OtoDZ9AKCxhChtLcAAEc2PJ19bNa34m7FM5nEq5NUF3Hp207nicr2j7p7DixLjt7WwxdAixRpuNHLGsYCilG45YzQSgwFs4I9IT338NIbrC35J8TkE1rI1p2tKxrtIfDUoA7Sim203IHrcO+xjl/yb13NLCIWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pauaHxYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pauaHxYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1A8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758174593;
	bh=9f0epay4/uP3hoWGHoXdmEjBU5NCsSVllZYGyTca7A8=;
	h=To:Subject:From:Date:From;
	b=pauaHxYiLlJRyj5tAgX1nGFfT4i/egRXKORdykElZOghaYAhB3jEu1RkUx6Rxs9HE
	 Ueq6mRooe1TbrBu0jHxr9vDCWV+wcuWU6otZmMdsmZEkmLAOHgxp1Zv5h6zH3j60Wx
	 aQqzUaDwdX2K2oWoqhZxuw0wU6HKg5CPm7Bj2kmexO8HZJdzFgT8JzEMYrz6RgaUtA
	 MagEtVwPiSWYyzVylTLlrYGir1DwLavndAR+N+snp/IBt+V7I9GgYN0ZqxfirudxKK
	 05Zi8X8IdvTahkzHiZnzg/z19jCVs0RhWBeXl2orPi+39xgusZeLKxhi/MSF/xpszr
	 c9aEl+Im9huHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B63ACAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817459360.26455.5103938294244838472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dfc2124afbfbba729339c9dbb9727f18b45cb3466d89c087f06d7c637408df5
Date: Thu, 18 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758174593
