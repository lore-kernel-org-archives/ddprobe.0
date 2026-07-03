Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38634340A7D
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783067314; cv=none; b=iOSri8Sq/5hfk+Xx2LhIo2SX1YLdYEw9zrgxomFqoR2EFlqg3QM7/cccCJNlf3NF4Vx7fJKXXqx1yPQQndVXQHhxIBr67Ztz2laX59LGteGbbmf1qt02CdJBenF6LkyW0jhZJpiCTwpyfOYFJlbfNsc7m7Sim32qA8RhM0vG96c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783067314; c=relaxed/simple;
	bh=iAX9tgPSUivT2feKNTAby4TpAkDILC1rsleitC7B2/E=;
	h=To:Subject:From:Message-Id:Date; b=kPywBkhvEAOsVrymBiNbVQc/gk7XQh9xzxmulhgbLvgcw5+3SHtejOLOJ6YiKfHveJqWog0UT5vm35AwtxFIXYXaj9cBaVPxzHSYG2ngxvi+ouErVcVLpg0dgTZ5wucysz9rWz9DCr2ziEAbYt3xDITdyrKSafPTbBqppaNYIIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TC1nwSgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TC1nwSgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB4BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783067313;
	bh=iAX9tgPSUivT2feKNTAby4TpAkDILC1rsleitC7B2/E=;
	h=To:Subject:From:Date:From;
	b=TC1nwSgZSen7oLj97rCDbgriAM/idQhduFYuBLxvTKesSqhONrJsGvVizXZdvZenf
	 cQgxyOjs2JKLjg24AkW6RyR2K1vHp+cQDTEMfFlAZXpDNBUT/FiT/wCl3+Yy9mMwY8
	 wNGHePPqLxWBFbdYOgB4YxNQf2k/lzyruRuxgMgsBsLf+/hAtxM4aovbs6WlTy/khg
	 Cbk4blUfcdJyg07WPGQSz1iCP5NbgnuIT69kZVQU96KqNN+KyO3FPp+lmOyJ9L0XPA
	 4NlOK3qxyR5CAHZZsEVtf0FAlkVuHWvMH7e6gyu6ebmh+REohA63kCvBQCVOAF3LCv
	 wiLPbHUzHNCyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A932EC44500
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306731368.1237.3041253552631405228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0502e4c525f903f8a8773c92b7d70788b7781c13d9472351b6c7ff97cd449fb
Date: Fri, 03 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783067313
