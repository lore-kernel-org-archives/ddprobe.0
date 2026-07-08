Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3BB41A79F
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783503514; cv=none; b=St7UEtvZBeqowhAfxw1tMRPBjKaplZuCysBMt5oLwe/VAhjwOA8rL1zrVQU9CAjpIHaPi4+YJJPs5/Km/pA+XvYIWpYQnSkWITiWL2cIyA9drlXJxKzH7VYEa0jTpTw4kRvpycT/RYiPsr9hWtBxHdOWi1B/fnRAtJlgv2cBSGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783503514; c=relaxed/simple;
	bh=WaKPn78sFzPimlZigDyops3aBhSjeOhaKFFjTThP0I4=;
	h=To:Subject:From:Message-Id:Date; b=YOb3wqAPAoZWau39RkCDPE8P0v+qx7slUWLK9zs5UojbUF8Ry2Lwbpn9+hTX4b1auGhP8CZRDLUEL5r9aPN0EaeMfkl7YUEdKCVUj/JcuDUih6wkdGwOL+eZo4QR2BwYiCVV8HNFNhffNx3nxcBjc4KRN8TvnENnkoRvnJ8D0Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghF8/EZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghF8/EZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D41C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783503513;
	bh=WaKPn78sFzPimlZigDyops3aBhSjeOhaKFFjTThP0I4=;
	h=To:Subject:From:Date:From;
	b=ghF8/EZA+bXyOueM5IepWFRELcvyXLuO/tBd3IhdKXGOUUE2sdGEaH4XyDkrkZEMg
	 lAqUvv9egKTnqMPOa01B0K/ejuWh2Rc8BI66TN8BY2fCcIaXwTYHEDZkvWJXIvb8Sn
	 RtKfysEnrl5Lpo3TgnHkOOznnqcXWbGOGiY2DF3LCDgWVSCWX8FQKQ7emzoWaXhrfT
	 AyY81rC+5b0w/R+G4Eozgn5gO1CrGF1A74vLcBDLYn8tFuLv0hvudAlJfI3Bbng0Vn
	 q4tuoUmiG8kL7yBmdTiO59JY1lF4PAfGvOSR66OjIjrD4zCO3vtQhnTFfCituw0XHT
	 nv4wJz2OciaeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84ADC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350351368.9462.6463462759898590240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7e3fb00826b1baf45413a7c253da7261047ebc3836701f380500de3dd12a3d
Date: Wed, 08 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783503513
