Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2968C17FF
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708230497; cv=none; b=XGy6NPWGpDGKZaj2JqyYsm7w1iyrMI3soolyLOlBnzwLOc3jEXShzQPmDMoimz7zbF9aGunEfAZ4yixLcbA/Fas55Em6RqcnFx6zrqYUJofTbkG5gVheI+a02ceItKeAqMBc8E9y9jFvCtubodUCuSzTos4ecs2nyZlFjvxeL+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708230497; c=relaxed/simple;
	bh=4FE/dVHdxT6M6LNvGNGkzegVYFraqi/pVIeLwGo7Hjg=;
	h=To:Subject:From:Message-Id:Date; b=cboTn7KMaavoojH60ezhvEChONdzdonikF7nkpp7vgz0HpOUP6HOoo9h1uPchQ8E4+rhUCxy4oScNTlJBZ/lWr2K37qRPnpkuXMne7RzOe0twWpb5xsN/1hQu1e3YxZo/MxAIhUqkNfQ5ADsHIIbPfbaXUDQ/xB7FZMrYqZO5kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMc9bXfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMc9bXfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 966FBC433F1
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708230496;
	bh=4FE/dVHdxT6M6LNvGNGkzegVYFraqi/pVIeLwGo7Hjg=;
	h=To:Subject:From:Date:From;
	b=hMc9bXfK99wdXIiRG6SiF0BgE8D1L0YDjVvV89wGL3j/aUvk5ctbVV2yRiOJIyfGa
	 ppIRwoChjQc65QF1C071T56qQb0ZQlor8QpRG4W2n3hBqYQmUqZUXevwm+uVVqTHYx
	 7gzqu42wk4nExKTVg2NzcF3zCrfRGlJbG3U9vh7B5u2uWcaT2ADh7zoGvSiWJwssLI
	 l0N4uwaT4fERjSIMHP8rfLXu22JlSqThNKYBRqggQmoabqY9P8SyK7zGcYgEbUqz2B
	 oPhJuuROnLAB4TFHX+gprNz0y66GXrr4o7t1T0lgYA3ectg3mzmbIreRPzcU/zM7Hd
	 VNhtQQFLV1r3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7130CC4829E
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170823049642.22775.9066607167961079391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5257d841a2164cc77496783c173c9fe6156e3275ba456bec123b75cfd7d87c78
Date: Sun, 18 Feb 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708230496
