Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECFAE2550C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744915194; cv=none; b=FinDLi5dt1POPs8o2fLxxr0CXcc7fPsHSYYbHhk8+LELi8Is07QGORXP44BVh8fVJe/XgS6SpmDhAjvoDjGj9FqZf7v77MzlMg3IvK4dCp1TOYuA6WfumkzIVRKDGT+C5kBOF5aGusQ2o0bS441a7bET2LCJXzr8Je3WBfVIiMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744915194; c=relaxed/simple;
	bh=QU67riWF2NYH3kBDMdytodNzPCX2tOhshVaBDYU8bt8=;
	h=To:Subject:From:Message-Id:Date; b=nvA9IjxXACECvQxk/Hitf+rRUp0XSfGYcXqfOUkZKM9tZuw1xk1/KGiM86ftsc25+80BzZwAzliNMoilLNk+YzcNc++J9zgQ6pg83hVmPPEsfbBVCjKYihHn/c9hR/BtigG2z8w3vHNvcvPPW2hecTTn45tdbTOuoDM6JJ8/d64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYZO9P31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYZO9P31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0204C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744915193;
	bh=QU67riWF2NYH3kBDMdytodNzPCX2tOhshVaBDYU8bt8=;
	h=To:Subject:From:Date:From;
	b=fYZO9P31PzOqwVkCHfRI4CNiMmpR+KZJ2oRD73qhw/aYbyi094w2KB2znwlDS1D9a
	 jB7MK50tiUQCE6m/bzLMDFvNrbGDNIqtbWYrAcjD9jx+V7GcEpYodWUjYkqM/ZZKjv
	 AlgV3cOSdIV/qD9qhqAVmMjwXLGCisczT4vu6BzFpADSukPNruDr8MYnL3XqoEjni3
	 RVw11Nhp0ucnUO2McTK8W65NHJGURqt+Djji1cFT/HAw8I2dY92M7syt63fbvz2EsU
	 2D2J0igpIIlBev/O4UoRZNEzJXMk6X/svSi9STI/+cYaGa7vQgPyLkTFt+KewmWZ3D
	 V9MtHqoI6N3cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C726C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491519363.8004.6020747683159547800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47890ccd64a208297289b308289b060dee245186201a925172ffb20616582189
Date: Thu, 17 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744915193
