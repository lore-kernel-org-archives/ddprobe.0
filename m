Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230B01A2C25
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765558374; cv=none; b=sUJ6e0pWZLVBRHelRo2xaw/Kn344soA1P4hljcb/EW7kIaktJkrSUEDLaGDRGUZlngjOaHBTRiD25sMM+uqi5KUM17NhXDzbTSDKWVz8JFqILN8icpxDZe3E38UpkRSzt/WdOjb8stFmFwDXB+/yC7D5H7s6jeYwW3UBH2amaiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765558374; c=relaxed/simple;
	bh=THegOIMpF6KGwudPvJZ8HhccKMtc+Z6hKvo/1Io7WoM=;
	h=To:Subject:From:Message-Id:Date; b=oY27ZE+q6jZ9QV9PzeP9nikxWsAVWuRElWC4xeAoxEWSpgSikp9yNBO1pOe0I0hFggNUo6tz4whunXCzsh/ddqQZZR8xf1tHK1deBTgMDqf3FIvvIRObAuY9e3MQnxX1Qu7U0Yo27sT8Gjk9jTlGI9EUzSFHO8GnPileVLdH6vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5ghkqqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5ghkqqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC85EC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765558373;
	bh=THegOIMpF6KGwudPvJZ8HhccKMtc+Z6hKvo/1Io7WoM=;
	h=To:Subject:From:Date:From;
	b=Q5ghkqqprPk44rf23FMn9+09uwFTDPdOdO0wUbHl9do2PNIwms7RtaozuWNMBF+nD
	 92od3Bsbptoe1Iq1asbzYSy0Yk+r9iJFmsYvgUnL8wwzXQHhNsg/ZOU+hGwGysmOjo
	 0K15LI3jL511mGxCLzGhPJOJBlB953zE7/6Evs0W4niMwZeHszGbkG6/vV3Whhqmli
	 uQw1q2jUDOG1i2ajnFY5RB7fYqHI9ovjGbHvEJfvk3MQ3OV6zW7GV3FP8vD0r9sJT1
	 APS9MKCtm+veCNg2FWH56M7E/+WwYhDZks9blvnr3vSPJal29LnilE7gsGDG8+xUGS
	 UPbXo2n0cfAzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981BED59D6F
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555837361.11978.15298657743388079368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 838b74b16829e995cc3948a00b152e53cbd41e0a94d22fb7663acae6c1481e9e
Date: Fri, 12 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765558373
