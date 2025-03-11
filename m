Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429776F305
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741653534; cv=none; b=P9zwVRhfSkRp0ranvuTaP4anWbNXSABexIbC+sGYWBhqVhZnc3TTBd5OTwW+6zqHBL2zpZqHLPa4C24nMn7+qRAhfzIX9qM+ahm+oK9gesEDyiA27KykkmLEqt/xASEwIbIzl1+GVllKR3wA2Euac0YN9kx5lLkteahfE4hkKLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741653534; c=relaxed/simple;
	bh=vj0ljexNq8NeoqYXy1XdvgysaZmKUwVHtQxER66Tgk8=;
	h=To:Subject:From:Message-Id:Date; b=AL0pvQjJSJTl4GiWKrhgcePN2eN8ehiIqMeO9N3OHMR6Wb9kXA5Ni/a8aIwSIEwVY+rAuPa1fVVCPLVtAcwN5s+X+lzFSeqKlKgSDKDClN/BEs53uKIjkO5LLNz3iuINZ4cSvGKX43iyqYJuwtvSPwmurlLzcXiFPu0/dL6njwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zp+dahDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zp+dahDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D25C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741653533;
	bh=vj0ljexNq8NeoqYXy1XdvgysaZmKUwVHtQxER66Tgk8=;
	h=To:Subject:From:Date:From;
	b=Zp+dahDcmFJyWHMHQiMTsyj9R3y9AW+PXEgMMHo0ldwrm3gryFdC4WZuLoMywVqP7
	 A00udwRgNy/5GpyHwp72dBcIaDJaf/pjpthOGFHfAbbu55j5CLrddY6REOMWwhBf7L
	 VcURuWyfuJWObLnYeEJbL23QZbYGCq6HpeQ1hYQVPLRVx+zCII9JSpLpkrDqnTMy6i
	 N/krDyWN0dRIvPJWevLY9MvVI5vlq84qSuR3iRE25eSgOOpIi7faTqsWlbFbomJQQh
	 YQTzOLk/e4//OI0i/s6X0CDCuibCe9zqVaE8ToRWR00OZdmw4CfV9RgxCgX33v4tXi
	 GfiV4U+OJuGsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E30C282DE
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174165353362.17412.10786985973681720003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1731db80c60c8869d29df9077114ab3768b5cb3f922ae8636d398dd68592306
Date: Tue, 11 Mar 2025 00:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741653533
