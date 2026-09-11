Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704C24BEE30
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789163434; cv=none; b=o9VQ9448e5B0OIwqMtx9tXLNVIpBHsBen35HJ4HEK6v496S2LrhkPCnX4ETv3vQu2hSsL+fvwHi8SxxYxXpGx0akYmvq2+GlQGaiJFoAd8sCdnRGcOHc3HwSr//7drimIu4oqGXbJQvKaZADctE0LvIdAoxBTg8Fb+N7/Ph/DfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789163434; c=relaxed/simple;
	bh=8wE/bqD3TWG/xmez5tWWqrioOLA4KuLHfkJIL2yoAQg=;
	h=To:Subject:From:Message-Id:Date; b=N89Kqe9d/L94GEbEvYcYyO41L6pDb5iNjtkYxV8o4H/59H/7VXVSDgMXQdHQ62fjThJZQWU9U57ylGzUnnJgTd7JFQOu5eg7uNRtJOY148pBhYNaSDL9tLza9v1Xc0Z80D0OpswJmO1GpF+zAKpPlfM83ysanQ3j7cLX7FfXcKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yg/SPSjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yg/SPSjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E7EC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789163433;
	bh=8wE/bqD3TWG/xmez5tWWqrioOLA4KuLHfkJIL2yoAQg=;
	h=To:Subject:From:Date:From;
	b=Yg/SPSjh21+hH/ocL9ZbnFlhKQrqefkg9V4x/E0+wh28vk4FvyABwnB0uyAKrKMQB
	 ak+dTjd3nqLJdQW4NXbRc6815nB3J4AtQfi+P9sfngf0lKENPX+f+Aj79tDtewr/qT
	 JlTdR8wN/tmd2DBX/OTrDUvqxFqR1c2rSngCIuoGSENu+v5/f1ClkYE0HA+C/iZgIg
	 Ay/9PxAGZke0SUeir5a+XoXDziQ+mbLh18IpaUYidGI+QU2aeepO67iNfxBFbapym7
	 Ow4SY1mRt5ne9A6x2W6MWa4c5yftBKIZO8O3WmpVjsKEdoHwqjOuizyzXEJzj6qN1P
	 TRQwZt0vKgI2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B097BC88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916343368.7712.422218791280109610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21c949d529943c3868e970ed7eb3fa3348ad100e9391b2edabbe610f3cc838d
Date: Fri, 11 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789163433
