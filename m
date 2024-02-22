Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2639114D443
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708616297; cv=none; b=b3oR1BJobu2LmCm3qeCmsYqDxr3R4Xk7rs+wXzAEJbpSCUhfirHoEAP+a8Pw3f5OWTsBcKFGDiHvGPEc9wSlk/3u2O3frxArBztFjDc+ibwyTaDT4/VGwK8dSYMyEHkxIy82KtqhbK+eyN+Djv6McEygZd+OgxfGLgb8K30e8G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708616297; c=relaxed/simple;
	bh=0xvAKznnPK8TXV5rZA18oSPmDbGR+C5ZDxLFy3OQ5O0=;
	h=To:Subject:From:Message-Id:Date; b=iDnAKuiyP1AJ+rlJcO1PCOwzIYRhAUwQ+4V3slky0Z5DA/waGBvGCzUzLZ3157FwQjNlREjTs8Sv/2LASvOhJEg6oMASa8o6OhYeFBO4x/AzIVcwmaIJIDQJbJobUUbsfDyfeDaLVKTIqBnMp93rdD5uNuKpfr5MBl24haQ9zNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0lMO0Cg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0lMO0Cg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B79BC433F1
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708616296;
	bh=0xvAKznnPK8TXV5rZA18oSPmDbGR+C5ZDxLFy3OQ5O0=;
	h=To:Subject:From:Date:From;
	b=W0lMO0CgdD/maAIwplHvJzrRH0j3wrE6rsIDjssDZE7L37g/WGUgUIlbJ8BOlF1D1
	 2dtveitREXHHMnfr1BYlpr8+78b4qHTJX3oPtPxR0YF12cSaRdYe4mcMI0ObtSOclE
	 7gpLXwKUElBFnxmcEg+d53x2SEpKdTVmzGzv/z9NbjxWRFC7TPqaQ+oDY5pSw6KmMv
	 84uBd1tnScrYVotStXeVUT1M6RGXLHK7Ukl5ajMvf8GWDJu5PU4f0ILS1LBYoin89T
	 hNetWaISaX5wV3SoRhLqoEJEbiLLGPzKVIUgiulMVG4PoD7k7YrDf2oX1qmg0Qi8fP
	 zuido1r/DoOZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B2CDC54788
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170861629642.13577.1227978388782942405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb3f2ef45172f6ed432f8f35a2b5650b42a73a4526d69c907aadb86088b784f
Date: Thu, 22 Feb 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708616296
