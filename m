Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1637363CB
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766205234; cv=none; b=FMzNoMhwvisBlVjF89lcLRSrrsHOIskk+4pVQr7avBOHTkDfe3/d0j6iQ1SezPSblerwdNDZGw082NQsYax41VNuFKkqr5sGIVHYAUUHQ57NG8tmnLL/dBHdZPyF8OBPZD5pqZTgoUTG0aH3RdiGDG0WHRrjicNztaQ1WyYkDGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766205234; c=relaxed/simple;
	bh=2ddpC5VeVylwNHYXRFYrhvpxvt9s2MrdI5FTuGd2q1o=;
	h=To:Subject:From:Message-Id:Date; b=AD3MGjUEn6xRHks+1TnITVwP0GZx5jEnzfHR5nk/uM+k5CVftBZCQSv2IRG+njYMFZRxvlkzz1KbZN9bhQHmAtGWPympi/ONsWrNN8UyBCcXR2vyQjXyUB1fnnHCZ8IwwsABM7bcTEqzm6kvpBsBMRlvaqBGdVaf8d57po98MOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgSDfXM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgSDfXM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E95C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766205233;
	bh=2ddpC5VeVylwNHYXRFYrhvpxvt9s2MrdI5FTuGd2q1o=;
	h=To:Subject:From:Date:From;
	b=kgSDfXM1RPYh24id+CLmqOlW/GpnUGPOtQjFHxfgi+Tjk1VNwvFOWupA3GuTcmgpQ
	 OpeDHhXRTQIapi01KocAEbDpbFuqTgrIo/pI/IxYvJbCVWB/JkFn0WSrjQIJDOR5r4
	 2h82wpUjCdWud2vXbbj3s77+xjBru6jDk7CDJYBW97wuMMmXKOTMIitaZvXT3+mHch
	 Thpb1EVg++ZAViL2XvOwtorAOOEJiILx0rY3cXnl+YTYHiJb/JbsarhDISpt0lCM6N
	 tpjOHMOUw3Rzqg9uW2/r4rbAnq47gnSRg3kftBN+VKWcagTuJjO49T3pdMsGDvHnPy
	 XO8nx5Z728BBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9166AE668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620523358.12845.14798824640494009129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714222f42940ae6ed3c4ba06684b9c674696b5cfb77427f31e1f3e3290248e67
Date: Sat, 20 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766205233
