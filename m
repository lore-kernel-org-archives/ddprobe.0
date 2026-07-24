Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467BD25B0B3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784873434; cv=none; b=CvckxPepECL5ra+HWUKfHTVDhL1d7C3Z0sdmL3pvMflawJEH1b/PEjtTWvtcFfopa0X5mPHuXC58+oGKPD/auiOpWYku9xxl4ao/WTH1ZfQFY1PRbJQq3+/o6PYz/VsxR69tCnbrevIMgjtw6OqrOj0sG4fYPgyWxJqKSyAdjS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784873434; c=relaxed/simple;
	bh=hNzbUYDPkn4deCz6YfOKsPyCJuKhoojfpDEqaoynPgQ=;
	h=To:Subject:From:Message-Id:Date; b=sBd2WBZTLm+tkC12m0up3MfEevQQgg31vI+YnR3oQ751FcBrb8OnDJsc0hM12dVhX9s5KfMrH+Qk8rGICO63P0N4EIRKNQz7SzWWycXM0TMo+c1pNzAAtEEDvTk/YYROM9nRBSrhMGSJDxL7ps06PO9L5FI/Nv3iqXYufgmAmUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1207hYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1207hYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF87CC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784873433;
	bh=hNzbUYDPkn4deCz6YfOKsPyCJuKhoojfpDEqaoynPgQ=;
	h=To:Subject:From:Date:From;
	b=Z1207hYnq6sjMmDhq7PRGTOqzMAIVfhJoFCDGfp/hfKzSsiMuxUY3N/oOukemwhDD
	 dUCMHrSU0oN3901p17YCs8+MEJpWPnAhJW61DU8uO96nBlJ+ChJVOSHX4q/VSdJp6j
	 zbfLvzvBZQ6GbVdjVTd7rkBBYxvAUlIbnAvYOnf2+wJ3i4DgUqYfSYbiFhwv3/zklH
	 5UH7leE7LNyg3LofP81gPB0FNSE60A9yjNsFKGSyDNuwcndsHEjqYKCaUifvp3zpE2
	 TFu9iG2rzpG7kjDJRBORMxIjEC548Yn8eiBWyw2cWPi7Nr+UlsULrRK+hSXF1ZQTGl
	 HUlQyP1UMyX3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA962C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487343368.6746.52710819133811882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a79f52cfa721b9921fc88d6056b35d1cb8e2f29eeb2347ed46d22355164f11a
Date: Fri, 24 Jul 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784873433
