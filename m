Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D259324B23
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770584034; cv=none; b=LC7AnKk2Zr81+BCW3OgoQUX+IHpODheoM59VbZ8sKwxpS2Va7idi18XO8aIKJwj7B8oZWe70ZHSqE9tym3FjteIGU9eIeO4pNzPH5ADQSj+kvQVGGqxph4GeWSn8NcSoxM/eW3gb/FfgBPT1zofdvU4rj1G1PN+HDIgjzrNVPlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770584034; c=relaxed/simple;
	bh=EMAGYpS9nRLIyD+GxYGlZEK/8gsWhC2/AzOiZt0FSic=;
	h=To:Subject:From:Message-Id:Date; b=prrYE3wjho8HuNDaA1PEPkt3d4lUXr2sonRTFn65vFCo4o6KkTuAp6qepF6hgx50djsZ+hGbm8B6R+QYxlR0ljZA/LlvsB/Z2orqeV3B9DauvDChumuXF+2qzyi6BjJvwItJ7igEptgs03E7484kPwke2VCTJ8R/AQnsebqSYIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qx1dVi2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qx1dVi2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0608C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770584033;
	bh=EMAGYpS9nRLIyD+GxYGlZEK/8gsWhC2/AzOiZt0FSic=;
	h=To:Subject:From:Date:From;
	b=Qx1dVi2a2fek1olPegK1t/njqEfS3LAmEPN95/Fp4yxI/NeH9+MOijeatuLPhx6WZ
	 FWun9VWgOO2iV6WTdlRUls1Qg8AO0jiWv7DlIsP2yRQ5MUionX06SnH8smWOA7WqbE
	 W6albGFwHXxCeI1rWB96hAFO75QdU9krFYcRVs6OsAmcuUYEWrLqLpsSFl6GFUIr77
	 EE2odiSywY+6JJMfnzmTOj9zXe7r/oG9Sfi2lNNwRa/bc4ze6DfegFbbyPBeViS9kJ
	 VeLZnDQOPQtr1jY/jCRTR/jero40UiBN1gV/AB4iLRU1aVIgBNyeXNlDxxXfGruCuO
	 H6dYrnxDIcptA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A415DEF06E4
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058403359.25756.3084220288401855393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9024a1d508cf32a9980bffff1caa1b8c7d3a70265999bef41dda6a9608896d4a
Date: Sun, 08 Feb 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770584033
