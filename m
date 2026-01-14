Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2DFF38BF9A
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768433634; cv=none; b=pfAXyE4sbcMXdgKoOvOCsl8BIbbf2ftBhxtg/NguGdZsJQEiatSNu159Lz3XSxq3sDb0jkcnenygsWGzH7Ye72VaR6XaAczjpbE3Q4ewbOqteYJEzPEaiHdCjIkWkFKRcZf+xdFL/ayjI6ucfqBoWEId40fbsJlWvTfnll6O/LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768433634; c=relaxed/simple;
	bh=hUfpS+FtemNv4Q9/NFWKAI4+KtqrCdM5cEANovGslU4=;
	h=To:Subject:From:Message-Id:Date; b=ZjWXqWRdw0j9sHB/QY+bAkXJcL5GraGxCvCXb6InIQ7ou5cDuum/V31n+OLjqPdh8V5Z3MGBwJKkg8R/l1QN/RHDULDISx6iNY9D9giQ2uJpx5n0nDhTmmov5dIXIknNlIrALolVCPFOA+rW5ePct9Wd1aQLWAIbXXMe3YlCUPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGSRU0qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGSRU0qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A6BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768433633;
	bh=hUfpS+FtemNv4Q9/NFWKAI4+KtqrCdM5cEANovGslU4=;
	h=To:Subject:From:Date:From;
	b=YGSRU0qdCdvF4aq3XCRvP/rc2JET9p1t4okRnnqZxJZJZsupbAB3Hzvb5gwY4f4b7
	 xDZfSK5LZ1d+lkWARZDDLHF5DaW1LScQ+klmpyOOsZgPSyzKna3AOfIPypn/mZbrDd
	 Z6dCx5LbwYeUQlDFF4gBRpAxGGNQHiXLNuxdOQNch03EJPVeuLhpg+n4CND6R64JoS
	 vjp3FlfJK+947GzwsyN7mP28vNI/TRmQZncdzASlBsVPnSEHXC2wqgOHmqyBWx0snP
	 qnMAt8eEf29iWJEMgpyIcxhUXhDegIWa6VFaxDeike8XWFA3yvz8t9mieDYc/iiprF
	 zO8lUXA8aZXTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929DAD3CC88
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843363359.13846.522486247619895257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87326588c4cf2bd4d1cd8c84e6703e6810d2de4c6b5aae5a79a4870c1fbf83c3
Date: Wed, 14 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768433633
