Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2069C299A8F
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767848034; cv=none; b=Ct9d669E5z1MIxTNYsXigOIzr+h7OwhhAz4q0e0PMO20WS1a5uzvJh54DsJACglFQQH++Isz81M0ZGqs2rtVUl63jrQ8uKgg/Sr+DVCKxYTd6QLvDsVaBQOALDthQSrJxugEnt1kDMWmEwJKWvRFdLF5CqO+e5+toBeC+cuTS28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767848034; c=relaxed/simple;
	bh=qyEKWlM1mUAljbPPMHy/+FwhgPh/PVTIJZnGbDk2jWs=;
	h=To:Subject:From:Message-Id:Date; b=p2Rvag3pnSfNeM83JBYHlm9TkyGQqe5xbKwRHEzkP4SREsZgkf3/P6ncaOwY7p12OTwBTKcWW+qhMCcLLRj8XiLfDyKuMfNAK5XhkNqMZT+LYLuUw0OJCgHkUHKCJoFjpvQfQBoUdTPQRZcSbPn0UYKouq2spvzUFhJxXEiWWeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4XVyaA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4XVyaA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A793CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767848033;
	bh=qyEKWlM1mUAljbPPMHy/+FwhgPh/PVTIJZnGbDk2jWs=;
	h=To:Subject:From:Date:From;
	b=F4XVyaA8qjC4y2+vnvwHsNiwGmxmJP395HCpB6/Xuaf7tDil9MI7Xk3TDPkSI6t5N
	 zW2WuCvb7+ulwYceoupAp3TJU7LMyfQhs+B/C5KxXINmcAtIeY/nf45YhYR2jjgf5x
	 7J5jDVbcCShblQ8XWnJjWxPe3k+m6qcPsQWqxAbhmtAh/zj6AORKPHca6ZLCjtK+eZ
	 z7nBDXsunLNfRilJFqpDU+wFYu4qHbCmdOvl9n2MsIP8kvJACzwEV6I+bl2JJcwb/G
	 B+T4r/2/CuWX+y04zLYhlAaUniuMDepthzE6CTAPFRE8zPSmPYuA3e9lnKjdPc+yEx
	 b90wFSYAvdcpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94116D14893
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784803357.19882.18335495197212879208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74d605b0303e15249a61e0863d893196cc02caad4b6e07cce7d058def070a22
Date: Thu, 08 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767848033
