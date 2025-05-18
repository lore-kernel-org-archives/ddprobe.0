Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391A4524F
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747604394; cv=none; b=b+hesG0F+mCPgdpr75dXlIiKXjpWIuvJIETlaFp1HEtDnNF/Fc8AXKXz4E8kvRFBkE61ENEFI6FW/nthVeJJztDAdRTApmbm9Bqb/VFFxh1vcXwRHcwCqOzv1XdOcCDqW1sJD2lCuXvco7Uvow7xCKEs0f8gYOntUPPKlZDyDXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747604394; c=relaxed/simple;
	bh=L3IH93GT70eGnKlM/8klACQpLNbnQzf8MlhcQdxbTH8=;
	h=To:Subject:From:Message-Id:Date; b=aGx6FinYAK5arR6lAoQp850gvEg0262hrqt3TiQ781r47ixA6IwbcFBMwR0OtTbsin3kdfFuoojz6IqjeqVyZL0Q6B+PeGQeZJZYfcKY+krcPngjcRd8jstOOpLgl3GUcmBfxgJBRM435wqaViK5bth85vzfM5OLKzU89+J3x0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LU735KRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LU735KRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A1DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747604393;
	bh=L3IH93GT70eGnKlM/8klACQpLNbnQzf8MlhcQdxbTH8=;
	h=To:Subject:From:Date:From;
	b=LU735KRZz3Yb1PTlPlAsI1Sy8NEvkpEmjLYl9UDjNz8v96gMGGF0KM9OV9QrqqB9l
	 Gyj+AZTpwf2DT6xyloC6S85guMIvUfDT8fWi99zCMGyNJDEk4daoO8u/ZsN8HavOvk
	 RjyQZf/WgSfzHUK6Yn/STHFqizaR7vW7RI9eB8Qqck/nSdL9TzMhbBFpl8VDU1PNeP
	 7lbEM7CFYj1S9cq2VhzoKpj6gXmCfuQM009s5IgIkYA6PEDxFYqRTG7+grz6pe3t6K
	 KTAIOiuGVjf9Mg6jdvpLRNThETmyvfaOUHx8pZ/hUgjhnz0MydJBav8uNRnViOIHDo
	 aTGcl1dCBIZ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9171CC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760439357.13409.59817144724491959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb7bf1609a5868c62dacc1c3646581372898b789db41b8f697eee9721e5b5e7
Date: Sun, 18 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747604393
