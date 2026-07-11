Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2FA2E9EC7
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783733914; cv=none; b=cVq0ZgaENOw5ZkmSe8nkI6RvH/s2DmXm3o6cB0GHtwv2ZOuOc4jstzrB08d28QGbnDeukvDCA5Iti7kayyiCvgkws49d0HbTLm02J2z5YY4o80jF1EqAB+qZ2ZnAaAcXarHHa7YmL3SliIxrxHR7ymVPGCyeUCR0hgCpPuB6sbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783733914; c=relaxed/simple;
	bh=/lrXXkapEqgkSwh96n8mBMmiU+244OnXZRb9K0FV3iY=;
	h=To:Subject:From:Message-Id:Date; b=GJz1fSw/wHquZ2qsXcArk0LGflxSMfAGdPcKa7s7YX0Y985hXzy2wIgCVdySPR2VFaIY03oZ03JsNOA7S3CAd+eNQjRi+iUJtQ+KkMYe9+POTx7Zg5U4K421ICLmMMOTEZEfaqKCsOPF8b8g/vvUgIWJ5WxR16YdN52+LEgIlQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UM25rTSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UM25rTSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEF3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783733913;
	bh=/lrXXkapEqgkSwh96n8mBMmiU+244OnXZRb9K0FV3iY=;
	h=To:Subject:From:Date:From;
	b=UM25rTSx3meljqRnu/Skn6WrLrBuZQe1tIFFm6bZ2tvKA/LG+a5yajvt59wmZcK8a
	 UtwIqOXITE5Du5aZZ63n8rNJwGF2kzclOi+N7JSAvfpcTIu505VjJhbz7RsAZn+itu
	 XyM254cxoaldPiM/o8Fu4BxXOfO4oCj1k38UD9C2pav09OxT6+9ycE0sgwBZxrewP+
	 IqqqjdQWHPAqO1LW0SDW4m7SCG8qYj6SEBFlU5Y/PchjEJ0diCmYRN3Oi7BjfNR9Sg
	 8jKHMxTfSyIK3Eb+pXBzPZv9XLxpcZrdg25QgR0KtXFhwPPXSJQ+L9LF3Hk86l/eBl
	 jj/WT5z92Qj9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0F2C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373391368.17474.13453499417574030679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25985482076c5c4ba4e542b5fa668dd9671b3b788a32bedd13d8e8f1de1839ff
Date: Sat, 11 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783733913
