Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111A5274B5A
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761254994; cv=none; b=nVhAlIGCqxeKpaSp3RMUaKTuOUKwYg/KK+aWfEkXDreo23xuWYkIE9k6BL95np1RnOstJFBxcKt/sFmFJAZ0FgazKb8rmWl9Aw0jy8DDSpeKFW7vI9btigd9pMxzbVXLaurmQFIE7XJcgg1oOA4hbiHzIIYTKpdVPUqEeGkQsBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761254994; c=relaxed/simple;
	bh=Z0zskSImYW8sEAL4bgS3NLlGK45DvpEUQRAYe3BT0WE=;
	h=To:Subject:From:Message-Id:Date; b=FO5Dv6KCLHHx1u503iWDvLKm3HT4HeQ6wpbCgLgpXuzOk+eDtFHnOmR4O1Vv/XifwsmEYvSgA8jfsPkNJguAk6ZFJ+IycGZCCGuVcy6BfbsJXjRYHtRMZ33i5cEwnmsSiq9bkD5KVNXbVKZgioOoR5eVvy++POU9uAHbOnTMsZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPknM89J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPknM89J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A98C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761254993;
	bh=Z0zskSImYW8sEAL4bgS3NLlGK45DvpEUQRAYe3BT0WE=;
	h=To:Subject:From:Date:From;
	b=HPknM89JyGfLIceOfC+yvbVS/EbBdcjkmizidP8HWxX1TK3pInn8zMInK3fATCwsg
	 g4pcUKLJWDjxMt+ISGyf8UgydcGlPkXaxMNZ3nBmrSvMxlywKOI7a6T4ukXK4FQPwz
	 BQvCrEtNjevj8+W3Ng+oUR08bq+ALtnztREjR0G+oRIHRQLkIzcrtROZm/T0t/gXff
	 4hI3hXng7owRew4nNhAe5AIQGDqmNcNCZLWtW2w/yBTQAgZZts9zSbOeYdznFn9Hsc
	 Q5jqZnkgdBrO5RWZnQi0PoWlmJTdT8mSlHwojy/y2z4zx0uaCA5sL3+t/lMctmtrqq
	 6Y9PpfL3pw3wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DE9CCD1BF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125499360.14364.12838097100799372165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea46f8abc2c47ab6e4a2f22ebdcfd9e0fc1b429fb6a183ee76e3d44ccce9bb7
Date: Thu, 23 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761254993
