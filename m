Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284082BEC5A
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749744594; cv=none; b=T5coVFIJV6mzgt/gtpTtAgCqF0rTA19NizlPiF6VBwdLgI59qgl8HmZW2CQJhc2URHP+hH8YntasYSjeEquqFazdzJ8PiiSEiDS7pbnH30o/qhpNBCxzdobsX5spd9+Vf3t5jfbVGr+p4O88ufzDawV6u/Uunuda2cOvUvvMPEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749744594; c=relaxed/simple;
	bh=dDfP8tKIM11cxIefaTRsHrkMyHhU+zTmpbOxCm03FGU=;
	h=To:Subject:From:Message-Id:Date; b=nLQ7MJMFxgZcFSwdutXDF613NMo70Ga+ioLvfnY4Z0PJiEXWYJkR9f3Mgz18ZFh/6zxfFyjScpRZ5sacKSdGTEXA/LTqSvlu4EgBKNPVRSfAcGe3gSfatmNE3jq7iOMS+1aWQ7N5POGNCsxkElmlM3HvNFQXYreLwOzCHOJGaAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czos73fq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czos73fq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FBC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749744593;
	bh=dDfP8tKIM11cxIefaTRsHrkMyHhU+zTmpbOxCm03FGU=;
	h=To:Subject:From:Date:From;
	b=czos73fql58he3es46/8KNXQcA9C/DViTfAe1flhg6y5wak1a7sIZt/V2hl92y/jQ
	 EDihhj8gvshFxZnBydwlrTQV1xSkQjV8k0j+J3JTpspu+GrxFdnlQ3xfGhSYIMchq6
	 V9zHybnj40qFBrgH5MYN7MCNNwnkRS0QTKsBEMBSn1/z+TslVfHEYDOecAOj7hp9Yr
	 fiP7Bd1jSyerbriqQSpG4y05JDStLVJwJET6+gdYWFigD/72Aw7qV3v951kwhji35z
	 NSWUMDVs/u9p0SiNbyBkvQZZBzE7dLagIYOpqglJmjAJnRoC3/+YkHA68Dhk6zo93K
	 jmf9V4lX31zYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90803C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974459358.16644.298778530059553313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e29806ef722153c5441cbc30923be19875360639da4fe562c2b6883d4e702b
Date: Thu, 12 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749744593
