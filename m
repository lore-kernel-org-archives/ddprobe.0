Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714672F0673
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789240234; cv=none; b=RGBFxF49CSAOuVgfW8m1vqeOq+XPJdCxgdMLGcHO9d67H4b7V5hZV6jtzKOYZTJAzNbA0kJ3mxHmfVPDr9d7O98EuzBbiWsEXu9NOcgF+dpSHlSP7BwS39hsldXvSTtASRbWeNvI4yI604ye0hybPKinuqlrdWQZQUzNBC1Kc7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789240234; c=relaxed/simple;
	bh=KPvUHm5ALSNxa8cBIpl6f2g8ufwiz9xgauZj37irmsw=;
	h=To:Subject:From:Message-Id:Date; b=GLJHTlTFjuecCaOYgV328tK8ooY/l26Xp6LlTBrUvA58b6sHeeZ+DGRbv3zN0wCcJzmp/6mf1w6arVef/DroaLMWpYjSqL+xlvtr+2yA2651BScpS7EJMVrqy2jSwQMjqMTXFknvA51Jrqm2tjyYl8SPtlH0yVxapDwQetmqIZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpLl+UKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpLl+UKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1974C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789240233;
	bh=KPvUHm5ALSNxa8cBIpl6f2g8ufwiz9xgauZj37irmsw=;
	h=To:Subject:From:Date:From;
	b=PpLl+UKK2KVqz4XJ+QCgW2IW4fBpuYZYhDwRtLjkkmoh986Nps+FYFKGCFIVHD9SR
	 HHMVcgGVUJ9VXHvpqDZcs/xV43V1oXaOGNa2yQMuUnJ0cwzXnUBGluQrWpXufSmiH7
	 V22NZJOg+ZEWe7MynJyEL4S823vUWP2PpGPqwk5WDW0TD4n4h+a45bo4u71Kass0u+
	 8xq4DX78152d5GBtJbYUYn3ykV8LrNXwJCYNrQTTWyJwZAmly1+gkhdttBgAhT73bL
	 +mayth+YFG6dJwM6G99x+SNVx/0Bm1tEO2aUEaQlJt1r7iti2OxyJ41J45Os/h5VwO
	 CJb66couYN57A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5C3C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924023368.19797.15295419759058146326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39be54071e6f4e7abc7482351cc5cc2c1d847497dfa8470d2d39ebec400e77c0
Date: Sat, 12 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789240233
