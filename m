Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373C95FDA7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770539634; cv=none; b=p3NUhWri1MjRmOAE6RleI5LDnAJ6y/WT+MUzVPU81lE2zbSh/L0qa7s8/Bbauo6qLsTyi2dUtM6MZbdoAxCtAXYi7es7JUQOxIC5p2YdaedxGvO9SkpFNM7rUd21fyVB3SHSjJ8OWxZur/px35ujcpbvseaZ0H4Az/TeHy1wfjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770539634; c=relaxed/simple;
	bh=PptqquBU/SRF9F5NZrUaBW6QPl2x4TkGQhLBS9Hrn18=;
	h=To:Subject:From:Message-Id:Date; b=HxVnIK/uXEQg9hl43FRK/5/XAHzhqvO9dcsx4VU1ACeD/FC2Q0ZaqfFsU/pXwkJ5htma6jEMczPefLn6ZAHQ8NxESNU4slGI6NOcHLOlRRAFviPQD4xTgpQgmrn1Q3K2aycfgsVWQElzou/6JKFWWunY5mcNUdxqmbYojM9iMVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odX8dx+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odX8dx+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36E7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770539633;
	bh=PptqquBU/SRF9F5NZrUaBW6QPl2x4TkGQhLBS9Hrn18=;
	h=To:Subject:From:Date:From;
	b=odX8dx+zP2EDHF0ZI0ik6BKFZnnS9/juwZzvpSSnvgfxtdjvGZsEGjajnezCVTTHE
	 5+6MPxq/2b7jpJIy+f5+UzctstCPyyB3LKbkhturL48uCosby6cu0GoYlNZs3W/20/
	 cGTNTs7ftzAMzvFtmeSL+m9IOP8TiV9TFhz9+BKwGhWpQvwSX+nu3gBKb8l6OAC6cO
	 59QvqwmMXJlCtqDNFTYca6IH/6GBbKbAunWUPfNfGPUrXvmDHhgnDgrwSeeaY/yBFG
	 tdh+yJM3tRmab1az6G9rGpcJDheGRnY2dO3nDq1yGd4nq7SBcqs2TS5dGg/hGx+1RI
	 rJom3f8Y6hULg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CC4EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053963359.28953.9757309645740527902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2804e432887512202a25c1adb5d195889be3df7acc6dd677296ff323bb50ec17
Date: Sun, 08 Feb 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770539633
