Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294931E1E12
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755968994; cv=none; b=auiVeoRhGvpH3LOoyZd5wWmEEH84jDOTUtvnCIehyM8np9IGueO3Wty0RbMYvmUCua7RzLRMnCU/r3M0Btsaxg81eASfXINkLy5yLgi/QO8Liup3o3bWpHiagtJLgtLO7vZhSuLDOx2tbeRyRxrfb10XrvY9XK4GVyUZ7+R2MK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755968994; c=relaxed/simple;
	bh=N4zEfk6chs8SOkBqkdLudHLVZoVW5uydLtkSSrubMUM=;
	h=To:Subject:From:Message-Id:Date; b=NwEryLin49Hlhnofbc+2J99VbDnXqcUrSNXw+aTq4OACpni7DPaXcCw3i9+yoitA2GN+Fid8PFEKT/iUvvu1Y8PWZMapP/8rDV1hv/r3hqW8fH0KqtN7gTEmk4ovaSYvkE26FyST/CRmCHhz8ZbagHA+Ub3k0gETawF4fv/8uys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKjlcInJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKjlcInJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD66C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755968993;
	bh=N4zEfk6chs8SOkBqkdLudHLVZoVW5uydLtkSSrubMUM=;
	h=To:Subject:From:Date:From;
	b=jKjlcInJpuLDveFiLWEOYgAIjWYiJH9Uag+3XGphBMGOsaXDd5AAk90/jJEEDalpO
	 K+aMISGgP9jBQYeGy3eegkY+6biq/zhPA7JvWdIQKdKuVtatWTf/t+g7ag2k8Oq6E/
	 DWkNbgcryFw4qec8c5NrcL9msYKBuQ9DBiX5STco7c1teLkeSCDUu0X+oqK+pi18zK
	 3lgiV/FNcfEUtJ1/UPPS5mKvwNHlHudcY5DCLHMpqdjJoEEsRB9So7bgaEvVGalwTq
	 NWqztKPguSSUsdocyidADmF6MUla2d/Yhit6mznzub73QdCwg9GNRAUGUgtxMf7y0H
	 ndbt/T+cx+PMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB9CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596899357.3105.14598613359563116202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa90b19967446568a72a36a7faeef0a75c562a0f1763ccf1dac26ada9e0ddeb
Date: Sat, 23 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755968993
