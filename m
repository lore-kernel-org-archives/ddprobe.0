Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1BE2BCF7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768399433; cv=none; b=GoXXH00Jp1HXFkHP5jrkzYVbxC88svxqOySuE+uzoxR9grmIpOUxhk9ETrQ3mWxt9IfpI8ZSwKUx0UIXQ30KkFHIf1dNHQoxks0XuY1fOnTZctX9ZXbK7OU5hzvx910hukvdpiG1a6sCiGToDpDlw4sfKKYcDFN9tCoGUWbNU74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768399433; c=relaxed/simple;
	bh=sLMcCXMFxFTjB7RF9PBPyNpZr/Yox0cmPRa19Hu6DCo=;
	h=To:Subject:From:Message-Id:Date; b=b1jhNSqzmwLeLTQQMBMX6hneMtbqcR2kFMh4X4gka0N+WA6kGUHcv6A3Yb6xEXrtrO0raoBxNvlT92yBMrHYR7doP3/s+AePOAp6Enmnhk4AgNXRUCctsqDmOmbjrrqpP39njEhCObT8VvcHau2fdajiSLfSIovuKXPcJfmIbPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWMtPaqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWMtPaqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CFCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768399433;
	bh=sLMcCXMFxFTjB7RF9PBPyNpZr/Yox0cmPRa19Hu6DCo=;
	h=To:Subject:From:Date:From;
	b=tWMtPaqJsfg8Z3E2IJ0LiWJ3MFXG2p2fusB9qtSuiwfMP3FCv+DdlIusd7dnZK6Y+
	 hNqyG28D+ysE8GIeYXFDulgdUBV9XYbqKa3VapGthZQqFZk+6m0pGiyeh/rZipSa0Q
	 jX1inlquBt+zrzENomtjeXewzxuq4opOHOqeC1/81uiP7EkTO9UlnTBE/LlIi4GeWi
	 aiudZ9hnfuGfN26bOKH5hQAXEjy65foIuLpZ5tAsX5v/n9iw6M/yeMsg8Zqt6ffzPG
	 oLPkLtDnZLtqHU9tpcwdmmoYXj0Fkhjy/EBBkVHUgKTAJikYslGrBDN7fG2QjuQhFC
	 NJOv43BxwXFVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D17D37E39
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839943359.27030.4602645594428037989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb2a7f371f476312638962ff033f63352e2df0c272d2f4588db27601feee1a0
Date: Wed, 14 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768399433
