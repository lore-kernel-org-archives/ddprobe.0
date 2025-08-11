Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B1718CC13
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754897993; cv=none; b=XXonGNZkuvU6GZap/4lRnOZ1DIHERb2AT3GC5++Dy3UDCyjHvHXfqqmiuyucgTxpMa4LY1Tp0+8pqbci+udlOxWwsIVS9YtbyrFbri0kNenF30NhYrhSO4fK+V5VDGDFFtcepWFuS9SGTU04hNvJOavza2PjnzuFp6eFWTSECSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754897993; c=relaxed/simple;
	bh=QjZM/zQ43D8F+Hd7Q4LgL8wVaCW07r/fwd0zlypmWQ4=;
	h=To:Subject:From:Message-Id:Date; b=XmHhE0NWjSUGbsr/luIfMXg2wpKW+NYQjqNYHKgqPFwEPU2aG6FM8wYTYeRoPUW6mKFeq2sdwzH3n8aXOapWXVri5oE/8L2zNJZG1dB4wdFBrTFP0ChM5aWkyVRCg+IqfQJH5hDFHfjuu2s/zTQovOlvwqh6fU0B4Qpdk6s2VOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0El0rLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0El0rLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 947C1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754897993;
	bh=QjZM/zQ43D8F+Hd7Q4LgL8wVaCW07r/fwd0zlypmWQ4=;
	h=To:Subject:From:Date:From;
	b=t0El0rLA8WVYN5XcoeL2tpq/4+DOPRG9nPHyjbIju2VdFwl42NTjo5PyY+TsrPKNb
	 1qjPAfHEHKjAJGf7780m4Ht/ZOlYumB93AmgKOyRlcQhDglKq1gMO3qhxxBl24vy8j
	 Plv39IMd5GJqQ49273/LTEJjX9Ldd6t7X53XS2oOD1JcthaaPZzYhpe0etax03Kpx9
	 fItsSFf8BqXVc8B6gcW78phYYIC+EGlIPPLMVL7fO7CBqY2vUhWy+bSlMUaBa9VbKA
	 yRV5Q1oJXeP0mi3vzSdYVVxuB93RhnSBCS/0KyIxHUzprvI10suDXCp3QZNOLhVAlp
	 RGmd08KfpdB8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3ECA0EC0
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489799357.29043.5717832247154127590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e63676aca195a429da1a9b249061d56486920da4324bf7b4aabc6c0e87a6fb0
Date: Mon, 11 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754897993
