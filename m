Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BF51CF96
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754259594; cv=none; b=cLCXtpx3/Ards7ccdTK7lYsyp58BFz61cryCENsv6ybE1/cvPrE9ZWJQNV7YApHWgV0ktU0GVnE3nJwfAXL3KxTw46apOUcWoFjC/Bpi6/ecM5W9Og/Ye0IQsVKazPrZqb/sl2o5PmTUW7EY7XVd1asdFLUJeNF7f3+cssh567o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754259594; c=relaxed/simple;
	bh=BMQrNlvRgXcMMC//hQmqxpdXVuPyEwmk1vYNdjhisOI=;
	h=To:Subject:From:Message-Id:Date; b=jDTiZWBWmIYhGrt/acqAb9JOcLNsavxqPBZop/5HVVI1U1uf1BL36Zy2MgNLDGXEVwRd9nDxahAuOVrPjUJyNbHx/ap0JOtqwoI0fV95wYnCtyeJolkCXXJNKh0q994BKgA8ZS+aQd1DAdjoywAJWDNRh4hm3a6qYbe2gDLAULI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBwpiwSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBwpiwSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A98C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754259593;
	bh=BMQrNlvRgXcMMC//hQmqxpdXVuPyEwmk1vYNdjhisOI=;
	h=To:Subject:From:Date:From;
	b=qBwpiwSCGtGEcExi6PpPgFwxOiu44JUf4GIW8f5QyUQowbeSrh/zUxfnVTLEJPruv
	 PGL13i/GX1pok7lvcN39jz0/4encXPYm+8dHx/qLjMSgozrlXVszPLd6ROuSIk1zqo
	 YqwHcCYA1nmzgIW2VerMgDtFGkodLy4W3kbFsUwPGLCMrFKpCeGRUz4ct+FvNJMsnH
	 6sqEi7sLJK/68UNP2Sr99aN4cBK9p1fDh/178K908W+rcXmfXJTVjyasFkoDEC2X6Y
	 SPpYOl35Mel5DwHsU/KoQi0E2RhH2nqxk/Dzokd+lSm3wvP3NN2xVTVD/aGJOKRh3N
	 a9TnFXvp74F2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BE2C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425959357.9155.13582841118170137618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257e57d38f9955a474a6e8dbcf9e2f34662a94bded1b2e577c2cd4e9491d46af
Date: Sun, 03 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754259593
