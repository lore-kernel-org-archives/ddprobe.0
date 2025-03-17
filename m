Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E4E23815C
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742212794; cv=none; b=oyHG/id6O9ThsPAwTaSmoUwc1G4qjUqZDRzuA7QQTVPkHzcclKKs84SLtFocTtWd+bQFm9gvmgaF30/02XEb784y9TWvVfb5M0hZvXzOAFKz5PNSDoWSjwa2aoaEKL47GqswDfXACgB+0zi9ZObo/qhocr+tl03n3Mii8y3w9OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742212794; c=relaxed/simple;
	bh=tEK7FU4uNoK+o8Bn1TJFtNoZ7nHaRph4RHnvtRGnWqQ=;
	h=To:Subject:From:Message-Id:Date; b=BRX/EimyHiNGL+bwr0p9aVdqVuacAWxyHIaFqZLdTSRi/93tOcLTirf/gWA5NVPx33CoQ+OdildEc49mPymB0YGPkDmoz397xXcIbdDVkRnpp8LmXZZ8yjzF6B/3021PaiBJA6TDvkSwXb70oXyMiShtmV8CVX269mjFR3mMSTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haapBRDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haapBRDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62AAC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742212793;
	bh=tEK7FU4uNoK+o8Bn1TJFtNoZ7nHaRph4RHnvtRGnWqQ=;
	h=To:Subject:From:Date:From;
	b=haapBRDMHnTTDtD0ht26pOMwyYklEh8EvJG+wGu4ky1WAB7MpRiIgoRaUGurguQPm
	 vyswArapDPGOopIj7TRtdva3n47bUo0RBC1B2LX7T5v1rihDdEfdqNT8X5e4i+nVKl
	 A05oyLMsMnj03yaQR/7DbqFLD5VMuoMmuoBnOkw76RYkA2xf2CODJlcEREPhFMcZdA
	 x8/A6DKxy2fx4rmVCcG+qjyszXYbCM8twwVD/1HtopN54Sf4ym+Xrn/oxvsm2G26SQ
	 6mHhTfkeDH0yr/y9I/AzY6XcZN9RiIAavJFEgQfAI5NJCuG6PIEPHSuyGvz11UgxSU
	 dHCoBp6RzmmlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96117C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174221279360.31169.6912521012636012483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5bc88e9158e1bcb823b3e8287b8a36dc5acffb0f20fb10299bce9483c95382
Date: Mon, 17 Mar 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742212793
