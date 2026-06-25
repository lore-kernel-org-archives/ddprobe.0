Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC0733DEFE
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782374854; cv=none; b=D2ajIrM/NZ2JeN5LN85ZWUiP7BGgQ/poDDw7HE65Xi60hsFPpehL1Ei15WMPkOZr7rc0CyBGsaAhQKm0eHaNQuxtHD7ufapKWbMZekLh8JsTrfGOiXgm0PNBRbixw9hbDYsD3o/tdJTliq2vk5kIomp/kvW5T7G2ELDa2I4G7q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782374854; c=relaxed/simple;
	bh=SWauJM+PU3rWJL9RlBpPmPvv2BTxdNSRcPpnOj+Dlns=;
	h=To:Subject:From:Message-Id:Date; b=jEV9a/pTu7miMc7nfV5LBgg7Ud+9PFctRiWRESep8Zm7l0Fb2qKzCfWLQJ+XXiAyIvNBV/5+F8edBhnjPaBdew8tF1CTVpE+8WPxnmV9U/NDgbHtrzqFbb/s37/lULZ/oQtBjXTFSpRpq8AR4umrMShcqowYCk9aDpQQSVcGKik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBQmPS6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBQmPS6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D152BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782374853;
	bh=SWauJM+PU3rWJL9RlBpPmPvv2BTxdNSRcPpnOj+Dlns=;
	h=To:Subject:From:Date:From;
	b=hBQmPS6WhiS8OtpbAoTyf6UJfgOIsTKHCaOxyWAzkQFhO4ivOMyLERrwqsZWJ0pvE
	 +sxhSpU8RWeG+4ysZreyqMHS6prporD8qIcS/FYzX8bMaCQDuePIFDkKUlijtlMMlb
	 bn/r3j9zwrRdL+x7g/sh0HPhiYjcyykRkgFH/NSiS6mLToQacXvZ9b6VePbVjxWpPI
	 KQy46F2/d8RZhB14YvA302s+4LV70nYe7/iCUPly2BN7nx+VtAlv4FaY0gkdhl+1At
	 enn0t/1ENRKslpt8WdWJCvhVJBcgD1wnAd4TkGKIQnDoC+/Ox/S/GdZnUHY3rmw2xk
	 Yg2cnQPR90XBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F9ECDB466
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237485372.16699.1008038054770161191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a706de92755a1a11750ac139f5358844fa9ccfe12610242b09443806f05bc120
Date: Thu, 25 Jun 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782374853
