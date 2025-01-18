Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477E72F50
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737171354; cv=none; b=uc/YN1opcBKqoF2vZzEqcW9hwhbBm1y/JOF9yDnxoC5VhfXOVpbxrszseGoWZrwDYKE62TMw1McXWpOlo+TyvpvoB/xO5uLgS/ztQNhQGjK4eZjrPqqEetMKPTTAOO2AUM+nadPGxjHUbprIoRVIapfBklOQ6BgjXIZ2CFcgAhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737171354; c=relaxed/simple;
	bh=5uiEnNYS2JCSU/2C7oPl0degrRKoR1G5MPIEKWMpZyk=;
	h=To:Subject:From:Message-Id:Date; b=FkUfHVdSXoHLwOgVLY5n9opFcJ1rGNswfI8xEJyY3pXsG2gI1/az6Mq7hu83pygmRTYX2qz+UxU8ZMsDDOvHvPPI3hm8zwfzf5Q1R5nusefGOsMNzA2tWwiwE3aiAWXq7ua3/tLShMv+15DnHqEnpKDRurLTb3crda2h8h6k+5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+lIerRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+lIerRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D71C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737171353;
	bh=5uiEnNYS2JCSU/2C7oPl0degrRKoR1G5MPIEKWMpZyk=;
	h=To:Subject:From:Date:From;
	b=s+lIerRV/riWhcCCNoSKFkFxohdMDIGNTwRVBZbfP2wigcqs6Po2gxLFnQ8vPoaQc
	 EaeJ1UfkrFIuw3dswtB3E0KX92RH3qfo4WO9mnSUxByVLFfQIwf/+RE2cQ2LV/5m9I
	 vhT+ezUW0upZk0Dq7ID1IBYTpI6iVg0iZY2HjgGXQkR3V7aavRK7wMbUHYdyZPiN/7
	 pCsBgFkNmbAEOH1rncJtmI2d/QHS9QTilPygfAMQRh8ce1zbHK6mfvgmuHM6cNvOMU
	 KtMwFxdeIerhtU0BK+qSMGkbhzcBFdiQNzd9wjwEXpGW3zhrb6NdJOJVffIT7F8MrL
	 JWqm/g8/h3DSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E948C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717135360.3684.7585667804809248286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd6f346222859244eb8b147f6cdb58fbf82037a81c855e01c8a28f7fd8dd133
Date: Sat, 18 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737171353
