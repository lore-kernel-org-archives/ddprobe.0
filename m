Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF08313E14
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762349394; cv=none; b=UEdiWuIVBE0KM7wl7ONj1cQ668eF8HCkXLN87Q/N8INUxQZ9ShS4jnO7oRNsBhDOSmbLHpyBc7cejaftZxL70TAQUyevWWZleS38mmXgdhhBFbRQL5i+Y/Q22bfmCy9OgKjGlBO/ztWiLH5gwa2OU627/WHk22cbIjm31fXv8Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762349394; c=relaxed/simple;
	bh=Y31Sh4pdJsy8E/9pFBIppm8zxJce5NpRzd+VcMO/K5g=;
	h=To:Subject:From:Message-Id:Date; b=FHr8nTigbr2ujtMFY4Pqmk4eVQhoULfP9SgvDK+VtiWtYOgMTJ8F5GK6sHnQr+tx5Y6zMMagFDdru3NehKPem8d5/mK1FeAEt6C8CYgl/T0m7zCR+0QeO7nsoVdsrHDC0KMhsmXzKDAiBQqxxDzqewxyC88TjrMOKcQbNd9ChGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kd0FJiIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kd0FJiIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0990C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762349393;
	bh=Y31Sh4pdJsy8E/9pFBIppm8zxJce5NpRzd+VcMO/K5g=;
	h=To:Subject:From:Date:From;
	b=Kd0FJiIuF+z+9q6p2Fha1cJZxt6GTOda5/I13YLtDwcAHmAWUdXI2LH2pM+j2jO7C
	 UMZj2JAqh+o0LGaDC7rKPUB+hQMUVPfaVWwCmaYR30b4MnvEzM+XDPM37DrGppfFD8
	 r/P0/nXQv+6zum3P//EOhBQk/KO0N6bCYOu0y54fjnXu4UBrqmB2ptMK79swNdwf6r
	 intW5OPQalKtewJRBR2uNRoh2cv2YQh/PyYKNG8BuPqxCxj5WH6+FprCll8Rljoh8x
	 2lhCsDhhAhGIaokf1Q4RmJ23RL42YX7R6oYUJaY2mWtuNZ+UHhqY8au0jw8Cg2Um7A
	 FkDNnHL8lFtng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB30CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234939363.20930.13707210957598262092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b569cc4c4f542ceb22c4a34503f114d76b65f5a41fbbd871df073fb2a0f2c2df
Date: Wed, 05 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762349393
