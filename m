Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83122C11C5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765048973; cv=none; b=sHACq47kYcnUxL1+EDgkBtRvGH3bTJzO6v+dzhpW/hvLL2ap9FgDNMfS3k0VAhFiI96WhiNabjUhdpVhEVbbwfX60iA44gOcUC1DjS3DAMoJsYidSGbO6I/ekvpz8ngkmKoY6aJdVxH+adjrZ3GBiTz0GG1B9XGrM5HyYGifs8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765048973; c=relaxed/simple;
	bh=83F+MHuDDv7AYidpJ7J6ymzXO1eN3UNVL8dy2VySOSU=;
	h=To:Subject:From:Message-Id:Date; b=bQ8QIKVTuNeZGj17FHsHg7iMjAL4706vAk4HKTDAWS0nypdqir9sDi8PrUDPYdea9vP8eMnL2DDJYI2dMJXqGBP8i9e+Rlpfa87Z3lH8T5RU6JvclJ6i0LTjzRtCM3k6MAfyeEuwsZxm7mUXl+pG0yK2+72w2+wPFFUETP7NT2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2VFTAsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2VFTAsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F2DC116D0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765048973;
	bh=83F+MHuDDv7AYidpJ7J6ymzXO1eN3UNVL8dy2VySOSU=;
	h=To:Subject:From:Date:From;
	b=Y2VFTAsdPQ6D9ybLr0Z3gxoLSrfhipv0Kro7fiRBBSwRqLR4+dWlGqYr3GKW8l5ac
	 vbN5R96UIKcjL9UXVBwH/EYvxiPUnYRdK+YKLxu7e9WQoVfYTMNgGo22WUfFawwe9o
	 MnqOhuvfebpdiPmcq3cXIgHY2BHxsUqYb9Oh4YUQl7ta889IaAdh+3Qc7/PyN2Y98U
	 mxHyyh0TDIoYcqtkM+cRcHvoAQIbMan1C26QByibidFGlabS5hRhsc9DLqgjJ3DRBX
	 Ej3HAU+1ovVS00oqkKFhqcFaZ6sJrm5jIA3/8Z1vGOTuaocCqW9YQJ5jaTG4GPOjTs
	 4rzeNos+QQFeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A69D3B7D8
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504897358.26574.3029045910087100214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0036ca3379072b4dd9fc4d54b81c6c7eb9a0ec131385c6cac91b406679b5d6b
Date: Sat, 06 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765048973
