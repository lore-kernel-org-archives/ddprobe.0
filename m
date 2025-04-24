Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBF41ACECD
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745528394; cv=none; b=s3RLAetsx30HZaD8RHAob2vym2RXGkeF/sevCfbITP79uNevRccvs717VyW40SSU5lp75gQX8tn+yeYiWfo8/VsL8yX3G7+2UvthQCxReBx1pjTWKAkiCogUWrgOXtP1fdf1tYCuCz/2GPIQE5e0qUF6sAV9DGsr3X74fa8U+GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745528394; c=relaxed/simple;
	bh=pchJH5rBCdr3AZOLYlsniGLnQ77qQGq2SkBF+Y+4ZVE=;
	h=To:Subject:From:Message-Id:Date; b=MWwkbYxISs6RSNVt2MRixMKnj3pjZX78F+xhdi2o2sP2uQ1tvms5XNDilH8vnjK/Vt/2qKfIINyMU0LD5iBwEkqbUXaCypGSVBV8UvFJMPXqVQjp2r4BCuiFGXUqcw2bRPyivhhCrKNkKfJaxGcF1ab1Q5TXb9CpcHKD5KYoFJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtWI3OLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtWI3OLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19A0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745528393;
	bh=pchJH5rBCdr3AZOLYlsniGLnQ77qQGq2SkBF+Y+4ZVE=;
	h=To:Subject:From:Date:From;
	b=TtWI3OLolF/MtclOzTXs8f8z9zbr1oeXIRcsigR26am9EeqoV1xLnPL/G4N8cGkCN
	 4lF9RjnLVUKAfmIT4XRgPWiREb1HLCrAidO39G0274r5YFH0TJiVGYjsMzbq++4zA7
	 GIjY/8m4LPcwCM6AbVWX0jtPmS2bIdzRSHzAq7e36wU63BGAMFAeD1ZmT4kT8zQn5F
	 5KZbvjdGOUwwyHLHkDkqi/P1Y6GWuHnUMExUgrJRYhoKL/CGGgUuJPMEqqfMm8enNe
	 cSFKPry39G/r4aelzB4Q5n4ciMywBEeBTrJogRrRc19Xpm6PL2Zf1i+YRipDAuJzQ3
	 RZU6x19GFBGtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41AC369D5
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174552839357.2268.3172526683382086823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413d93820a51f47952890926bb49ffb6d2262cfa9a647e5378266f48d30e16ef
Date: Thu, 24 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745528393
