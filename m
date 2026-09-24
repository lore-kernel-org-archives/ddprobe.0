Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5179E426EAD
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790237434; cv=none; b=AouXngWO45nmso62FGIbmXZnvZIBVFhVP5E52+8slrnl8q809f+908nTBLjHPKSH398DvqMz3hvY6xbiqp1BjE3EoHcA+PDvBMqMN9/2s4iuPhd/gGm9FL6yIrUnHbnuxiNp6vwPXfeN1y9bbNYz671MOM4BF1W1Dq9oUNSPqqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790237434; c=relaxed/simple;
	bh=EM/GdKU39OItmtKY1Pj/Fi/hRXx0wyNSS7olP6wrSpI=;
	h=To:Subject:From:Message-Id:Date; b=B5aXDkH/gOabMfzIzAMjykInbjhxnYwQDjKxxQpw6jBkqtp3hxCMuMuhlsFtVzVOx+1EMv1YQxJ7b2EZnkXI52BVUNVeoXtzViJx9KgAatoi3gud/kylyfqs2xNHQuChmVZIy52VB5g1HLO6umAnE9fWvT5QaMK6Xe+Yo9sZKmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFKB2ktn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFKB2ktn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6459C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790237433;
	bh=EM/GdKU39OItmtKY1Pj/Fi/hRXx0wyNSS7olP6wrSpI=;
	h=To:Subject:From:Date:From;
	b=XFKB2ktnxCyK/JH/4yHucah2SoIhbZK/V6nPmtkQpsHY88HOus5rt66RQ6PR+cfd2
	 maT3Kjlht8qWQfmIw0p82ZG/zRAMvO6shVEIZ01NBNbLCAfrBT6BkZS3PC7HrGyTSI
	 KLU/87YE8IdAdrMUpuVJXNkkeeMmTo5tSafxuJxIQAsOQ3hm3+IZDmQbs2BwepfTGJ
	 l1g5dn/dq6FC2d23Ka+OgpWOwAz+mqMgkXOcIqTiui71mwq+m5U2gLq4PodD6pPIaY
	 Dlpf6pFfUuXG2Q0k/MS7vBYEYf53Pkw88fYPfQVs3Zs778xxIrwT2lhUAr58gSm4rI
	 Z1Q/WD9KytkIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF96AC98314
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023743370.30487.17943784011050263276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 300a70d70bded9952d04a3e2df99394905da5b9f4c6f211a1cf5ffa26354d732
Date: Thu, 24 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790237433
