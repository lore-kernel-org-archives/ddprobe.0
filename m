Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E5B1E1DE9
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767187434; cv=none; b=X6tg+0ItcH6xydx0WmiqzMEGJmwmrI0hBiDyhhTLrSIdU9le9D+ppT/dY4aNSPlXp6tY/FxXYUlESzBLjGpbJ+d+NmNXA+URDhMVt8fUwaMr+LChzGFHQJ6WGOQhc5SuGc2J30qAZIyl2lFOXwXi9oXQGuYd2e+qff36R9Kdtl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767187434; c=relaxed/simple;
	bh=iLwLna0skNQFoaTFinD5Q1JQ0MMQamV+n5MJlLRyiDQ=;
	h=To:Subject:From:Message-Id:Date; b=s8alPpsULylLbcmfnWe0GBHdsN5lK8kazENom1bliRdhExsQlyc1eDNPkZCJ6LSa/lWLmEZT0NDUqomARercLypcVmRnTIhjnU3/VmDUQytGfv6TIPqdukIp6znWvjReJzrtJUTwEVDG+B0ptcyzpW8/ZGPPPlK2nBD/b24ttDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmP+mzQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmP+mzQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EEFC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767187433;
	bh=iLwLna0skNQFoaTFinD5Q1JQ0MMQamV+n5MJlLRyiDQ=;
	h=To:Subject:From:Date:From;
	b=mmP+mzQhxvwQ4In5PHudF2Rip6Q8+EXIEL6Va4DneE6wL5Ab+ztdObcJKcjk3dVly
	 T+qRV4+IcicATG9UxBH5pO3bkU+uTd0I1mL645Pfy7wErXOkyXB+1At5On9yOy1DEn
	 LbdVT9rG8fCqQdAxJJPuc/dw8e9RzztNFT6rpoBPuGhmd63WpbN2UOY9p0zWYGfzsN
	 ZEkVash4mf4TUTXQf8yOP9d+QdIIPRlABiuxfPPJQUhEC8BltDFRJnOMxAuuKK6KhD
	 15MsNVgXbybhVGkbLhmzCcSHtR8fmGd8rKwLDiAwU3S2b1sO1u7Bx/uuOo/UoQnr7O
	 seIIoW0g7G6qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A1DEE642F
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718743357.32573.7527898227750971806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b216be1462bdac47ec13cd7d256261cce5c5d0e0a7a92575899fa52bcecec66
Date: Wed, 31 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767187433
