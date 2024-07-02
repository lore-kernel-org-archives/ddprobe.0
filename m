Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCF99470
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719925523; cv=none; b=TjVkcv2fGVfFePMWWp7vPRTe1K3oHN7tU6HmCzQPx4OacEoEMQlbYR/B6QjU78hxXIqdTPvBdMiQfz4iROoo975C6wux3qaqste8KmqmS1JbufskkMpQpKATk7NPcz3BR8O72fRwQJPEmHam92FVMe89cTashA2G9bpR0nYZZYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719925523; c=relaxed/simple;
	bh=2Xsy2OlCviX/jjHl8w0dV5Q0NaPmJjHsaYhpr4P6EQk=;
	h=To:Subject:From:Message-Id:Date; b=sU3pRR5DPYPAYhcQwlTfyiXBxSfHmoJJ1RsglVKgbWHJuMhtk+fy+KZ8FB+Jo/NqTh0BGkpWeg0UYlN94nqHK9K57WLAi9xZZOSyh+9QU/s9WHv54edjnRlqc9o16cjnxdOI5VFsXzj7k+rpnvKvgYUESYV9JJm7KXtjtG9aUu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jj0aNCHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jj0aNCHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF56FC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719925522;
	bh=2Xsy2OlCviX/jjHl8w0dV5Q0NaPmJjHsaYhpr4P6EQk=;
	h=To:Subject:From:Date:From;
	b=Jj0aNCHx2MtEqc/j1kM2roMJ673rFL12yEI5czDTyEzM9geXkvoT/Br+eq9wEc0x2
	 92q/C+kyZxqWBGpQWzZKpxnCF/yNJJE8rr+WqOMCkaSC8ZIN9Nh4iqBxC+Ht1/nn7q
	 NpmY67Yr91HQKJfIWo/XGGDxTQyvcaMiN2O9l6u9ZX0awSZSMUt5ixTQUnIkrq4Tmy
	 dRpE5XRgdWnFAj1Vb4buoT94Jgkjpem19je//Qy4ccocjEP828kcm0mnILu5UZ9MeM
	 ij4AKBPWsS+Cb7di3mfHh/5Zlyw6X+qy+qMNQCwjkOi5J/iQau9JhB8XFXDml4VsUr
	 7CXfnsDyE4D6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFAFC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992552275.24647.15751881406207123583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88bdf2883fffbed0a117d4d9b128e80b173a5b86a097cb8be09daa89e08cb5e
Date: Tue, 02 Jul 2024 13:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719925522
