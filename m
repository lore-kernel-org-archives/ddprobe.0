Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FA969D2B
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752442194; cv=none; b=Q80I1hsWirceC+rc7i60AKvTnU++lVbjQDFVU9MVdL5r0b8rtreVInmw9H1oaO0LfuCYm75Kg9AWJJRcnVWaBzhEu5mHJXcDxsYP5UytsN6/bxOwmMK5xUkMszSgh8Su6Di6/5MrRg9jlfjL/tgB0KXtkSKf5n3Izmwo1MNEwBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752442194; c=relaxed/simple;
	bh=9XfClyWV0WV5F6sNR+7np7myfayxPEm/LItSJbIg0Ew=;
	h=To:Subject:From:Message-Id:Date; b=kk1NBFBpB08LE5INgCsOz26YNg84OFEzMErhbJ/0cDHYqrOGGL5pjZNAeDn3OX6aY/iRAF3tsICvyHY+SwbfQRs83eneFHWwrJWs0/8ghGC6L5zKU85Z2YdsVmzJi0Vx+r0SxLOZfDIBp3trPfAWTHoFDXSsTGoQMDQDBDv/9go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRPDCw3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRPDCw3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C62C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752442193;
	bh=9XfClyWV0WV5F6sNR+7np7myfayxPEm/LItSJbIg0Ew=;
	h=To:Subject:From:Date:From;
	b=aRPDCw3BpAkIGEUOmwEpCeJxzMHqJPIbXTHeROoowyPndNYDvrz7tj3Jb67qrZqYl
	 q1vvb9Esxr3FqXJR1HS7ZSkAZEyIHUtLEAl7WHOc/wJmhEwOHONrlGkDY1TFySTe6C
	 YXeFFozH29jOqTKmIibggROwV0QuA8qJ4ikJvZUet7J563WScZB3v7ZK11zEM1J/mW
	 UMWmHW9vuax3ZpQN6EMzq5W0d8JIYOpiA1KngVol9WKjL4YPcCHfkRMSv16pHIi0LG
	 tUCHWowA5dpse2saackpv/3w1Ci9Js39UUOhzmDL1JOUhUIDoL/FGZlYt2wO+4QzmB
	 tV262UkU4sLXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AFEC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244219357.17534.4197164942951690846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba0bb8d74d1fe7128b7bf78eb0c8fe235304a29cac6f7d5df3cbf379f6c0fa8
Date: Sun, 13 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752442193
