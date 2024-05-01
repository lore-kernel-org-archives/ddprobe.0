Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4417437E
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 18:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714589543; cv=none; b=PDqjpHTsm4JzyQDyVqvNu40pCP+VAzp281Fj1W4pq3bFWi3SmcxTx2lMiIkoz8VlkIHDxguSYnw3IwXKKtUles6+44W2OQ5fv8nWNGnJe+qxWftFujthzHUhLfgcLfzqI0wmVtxKHH9SLNxw0LNu/w7ZXG1ydxXkNNi3cZgSI/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714589543; c=relaxed/simple;
	bh=n+sKfqYjUbN9RStMKfvhdds03Vf6Pk7uVIBkQGcaYyY=;
	h=To:Subject:From:Message-Id:Date; b=SYy+0AHIX1pniSOUpvCbhDHp9oMvcy4g0pwycM0nmPBFiZZ5eoyUCkAJ7fBlkze8RkJ60JJcQSLg79KGTvlyJcHFzOWs7vYm2FEVa3EEaaKHoKjvOhGEMlNSSBL0slXLl52dqWF/OrCTMbO27xWUguV90qsXW1XM6MUrAsBqw/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEkMa1c/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEkMa1c/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C60C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714589542;
	bh=n+sKfqYjUbN9RStMKfvhdds03Vf6Pk7uVIBkQGcaYyY=;
	h=To:Subject:From:Date:From;
	b=LEkMa1c/NeYW4zhq+F3HuArjKKx1G2/fu7GlDZilS3UXrSpSNb9IAivG6dGFIbiwq
	 3T4MI79wuoPjlzSZzqjqHsl+/amxNmMDD9DYhycjvAJ0uw3V1ySFdtdIxiIdJB5VIx
	 IPdeBcEB7LzgTVz4TEvXMX9us1A5qWUAtawdjQklOai69kJJgHeyNdzJ7dYe4Mf8f7
	 E94e/9d51Cupr4GuTJ9czUm3A6Fgfr//OglhBXP2FFjLoYvDHSOLMC32rSWfkmT65U
	 FS1GlUx7vJ+dIlvOjATNX6PtZbcCrieek7wL5GmotV9xyJt/T3YuwArPy77e9chING
	 ZV7bTTqH8WCYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE40FC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171458954276.14153.11241641031036955092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf6f4e55cd5878967bfc637877f0782456b2aca3075634a73f3b8be1e29dcae
Date: Wed, 01 May 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714589542
