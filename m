Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07686C13D
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711268897; cv=none; b=mTFSsN4dcUKa8//H19W0q6xpleOyMxYBUyXAaWxJInoGME6G1EgDDj0L3eOw0t2CY6Ht30UXbgfhkysDoQ5C9kscjDxiq057ikbxx8PBsiBvDPc7X3PJw39VvnbJBc93U2g3GHG4eeUro2LRsayLELk8rsrZxKwBsUST+iFlufI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711268897; c=relaxed/simple;
	bh=fT1ZKmXu35dYXaReRcahM/jXhF3+RRu3ymT3jahpqXI=;
	h=To:Subject:From:Message-Id:Date; b=BOOunOrd390bzREFXWkr5/teFc6n3S9gkJuPI5To9aQ5PU0O8o23rRRYud/XPBJT/tWnE3E5hfquano+OydgAcicZBnwUYogTVlFlkL7xqgnh+BXprqkMucW/yHVSkezJFSxI6VlZ+88u2AGEczENMtN0JQdgL7VakKOGHG7tw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rG/GUbzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rG/GUbzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C544C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711268896;
	bh=fT1ZKmXu35dYXaReRcahM/jXhF3+RRu3ymT3jahpqXI=;
	h=To:Subject:From:Date:From;
	b=rG/GUbztxLBbByP4+OaahWZK4QjK5yKRKNRHN9cEHRGNuN5QMqK4LhaGWW4tBP25K
	 B6Xx9WPEf/CVRUHDAj3j+b5z9FY9DLldDW2Ios9YB14cPYY3xNlfsZKurziZoYKjGj
	 ZBPovtp9bI7hH8cmHCyNq5fC6aL3YDIokEMNNNv0R/6dOOGYGb8asSDsVx/ABUV0B0
	 BzP3oiOYykKMyZMc4RDwRLYPX96mcpR0L93eQFT1LeL6+SJ76VdbTysUqsyNbphFn0
	 9wM3GXo50pob0rBqy98Ki2YLhelPs15RMktkTiIEHGQxALo/SB2sgPZmNw+wMNF0jE
	 SdLgTnXQ/4NmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6659BC47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171126889639.8777.1831344550313829585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1afac90aea30d2b39b37d520b560f6479a6539990de947d6a6ef9df3d94aa704
Date: Sun, 24 Mar 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711268896
