Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1235D2745C
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762411794; cv=none; b=EAMIfSoKrDCHLsMX4KJkWhNFIhtV3X+8iRW030mAp0dxVjU9pD1Uk2NYm7yIIZB7Ef59xjADuhoy+xcpHFU1JnfU1LLdSO6qfJ46bcyzdwT4C7fJMyL4t+OB3FbrdNCYTNXICVStTOU3kGcMO/OAPLqUpffuxcHurNKaGZoc9Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762411794; c=relaxed/simple;
	bh=NIPTfhU/lDqhYsK482OqIYOPqOg4xtjQdoFlGFJGbSU=;
	h=To:Subject:From:Message-Id:Date; b=m+JMr58Ix4KvNlI9JE3v45tP+qFdcmiIm0afMRJkeu0fy5o5hPX39OA7X5iUIKl/nRSPITKRE0m4JiP4za7SDSAh4irjJOWAlWtGq/NyEopZKdq/owuZDLLennx9PflOR6FY7cXs5xNASGjiKBSaRKgp0lb8gxIVY4Y/FxGvm1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0B6U4Y0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0B6U4Y0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E190C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762411793;
	bh=NIPTfhU/lDqhYsK482OqIYOPqOg4xtjQdoFlGFJGbSU=;
	h=To:Subject:From:Date:From;
	b=U0B6U4Y0zsD307BgURYFYnT32JixJQzmwTb1j2Zlwe5VZ+0TdU6jRpRY7fR3qxNfR
	 G87bMNBwhm2ezZX8U7kILnxHUGHvhdI0TtXsfapiaIKNW9BdDTwx+qjtacwBkJKMvP
	 UtS+IP3U7iuhlcyl4K6hvteDNu1MznVuCzanr+TCK5ysv84AVmJfst2CjrfAuefCch
	 VicnF4CPlTonlAnNA07JaA5PlQR2+rOvGBhjAB4wMdfx1lFf04t4l/fQ0Ospw5VAS4
	 OL+35mb1g0mIRK691+LSm/XulIOIuzLizILEL2wgla/5QH3OpMZHHwh7grlsF1MjWE
	 QSDyP/i8P8lPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A22CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241179358.12142.4236875752921313652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a71bc67cbb8ef441c5bb4ef04b25d43d0033241d597419f60f682072cb81f7d
Date: Thu, 06 Nov 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762411793
