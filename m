Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C4C29B8CE
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756163394; cv=none; b=sqxK6FZd1rlE4v4UwT7A2Vv5c5PxV9GaQFntTjAw5Of7RiGku4pU8c3NyCi3fgCZ4l1jx21V2k46t3aeWIHEVV5F+rkGeQD0vvTU1xRvZ5L8NbBRxXur3qMGA7OR6l8uFDPFAYHGIPfhVqucjF618DoehyCIiHbv1xb1Y6ZwBqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756163394; c=relaxed/simple;
	bh=zMJD0nHEqZF5NiZ4f5Fep5GT/CSJzOlzbzSv1k6uF5A=;
	h=To:Subject:From:Message-Id:Date; b=s/SKSyQjrGNzzdJiPUdJOruJgjmZbc0c1VIOYSFnnTIIi+sMmIeOPx1Mke503K+Lnq19GzbSktbqea5CFaHFUlbQElMY0z6bVzFXEGeomZ8Yx6NfMWV9BMv22veyiWHhuZ+4Yhwkzh/RMzYH6SPpjiwEme42jJ0ds/cFfDT/CFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yhcg+yix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yhcg+yix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F90C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756163393;
	bh=zMJD0nHEqZF5NiZ4f5Fep5GT/CSJzOlzbzSv1k6uF5A=;
	h=To:Subject:From:Date:From;
	b=Yhcg+yixcDlfXBDVpsWMvnZ1whyZOraQ+PssoXI6lBw7YbbYVRSTi+VMRil/rNqpY
	 cRRNbg78c9jRPOINbvYv3ahwQAXnoM2a3xAxVRSRlSkuY5EnVo67Kvz/2YA/h+Gc3i
	 +LCjNRrmcUgWOexorLTcZdf+jXevmY5ZfllbZ7IOIsaITFADBFVGONuIpzVqHhLvdi
	 cLlMHaKUhZrpsfe1/jZEZzfLpG1iy4mIG87EjOZmAPP9MKRSFGR9mDC08duKTld6hq
	 uBCzcer7lpmLH9kiKX5dI33JdW5Z/2UbWi5y1q7C+kYW50t5Ffo7GJ0ThBIBYiAa3Q
	 OzO+SjWkKqLTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDD4CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616339357.12484.5359963812593144593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c894f816b3a32068225480497126dbf5c1a4ebe6aad433b7466d43763fd4ee7
Date: Mon, 25 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756163393
