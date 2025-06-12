Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199F7214225
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749742194; cv=none; b=jIHlxt0Ag1enWALpyL+2Pp3uK4kexdN+5MDctZHk7LxW5LGY2wjizc20dhHiYZBFly/xVKYfjhvb7wQz67x45tOgdlel2smT+qLUdIQBmTiwsPNBw5jVV15i44TVJHdX0qLGS6Mx7XBszFAPJpaKAqRj9Oefi9+A0mYwDh1nNuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749742194; c=relaxed/simple;
	bh=P+KyDx/gLB678d+gwVuUGOjz8ewKd44RFXQyJth2pZE=;
	h=To:Subject:From:Message-Id:Date; b=fcsVQTL5P6vq4LYQW7peVvJpyYskEGCI/peKgSs1LCQY0n6At7qRhucLQVAT1LqfA2uxodzhHDxjj4lZxcf0ekH1FRXOk08mR92yFfe8AUQKz48tqi2JhFy4aZaj0b+I/lLgprA3iUew9dvWHroapNsmy6o/am1lEDDXXFArxqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYthkLN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYthkLN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0035C4CEF2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749742193;
	bh=P+KyDx/gLB678d+gwVuUGOjz8ewKd44RFXQyJth2pZE=;
	h=To:Subject:From:Date:From;
	b=nYthkLN6SdGhTD2vbyoPr14R+m8wuou8NTpp+USZFZHWvKZFIvnHGpxpmZaGTQFCW
	 GJAe58vFeeJDaIKcbcS2loHmYhp5yn7QB5WHtIgOPnfjUjof8OixyA/JQGhbBy/8H/
	 11+gnGS6T7bfR0wK/2P/DI9HcMdeR/MHshQbL++PtFDL0ccUbwpw6t4e2TMl7YD83b
	 vpxowjomsfmFeXr+M7T8H+23g4Mt8yua4xrp2pnP8i8ffHPBwh1zWee6AfHNmDKCgm
	 xwGEcLUn1mYbks+wQgES04BEOhxMU5d6kXXqDAidbsgfEfFuhqDrWq8bZAlE5je3mt
	 6YUWtfzy0BawA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC6FC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974219357.4509.4092907190008769363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f2e485ced2e2305bd4d35b7ca83c807b2250dc96efcd470e5553dc6accc371
Date: Thu, 12 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749742193
