Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4483F2576E
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 12:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714307543; cv=none; b=KtJk1RVWV8GAxiCiIJJ31lmtEcyCZHNdwzELEkSijw95fEHwAWaajmqTM6bgtYvSNu+XDJHVLaeOBZ3U3oB7TjsLaLbQmmoZux9vrCiAHU62W5ba34s+cW7dReQc7nT+N9S7YhK+Ja6C9qkExe2VS52OwqC8yT1HRDBpMRh+Brw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714307543; c=relaxed/simple;
	bh=K9k2k+Q4xAhh9vwZdA1vVnV36tCAH5/qx7IxeTOcImE=;
	h=To:Subject:From:Message-Id:Date; b=Q+SNGlYP0MT/Z8o4y/DfK4OXs1og3SpM5soBgitTCiC7omC7lWUULFGbgdBa9F7NwyYwtHTW1FtPpSlo724cVn8Luszj0Re3WSSSoMN4Z1KM10JY/7tzSTdOs9l03d16fj06aTkRe20i0+tBovr40tIHDjwLOiT8KLWV4Nmlx64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzxO01+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzxO01+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D302DC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714307542;
	bh=K9k2k+Q4xAhh9vwZdA1vVnV36tCAH5/qx7IxeTOcImE=;
	h=To:Subject:From:Date:From;
	b=VzxO01+1+Ls7jrrgTYmdXD9lzY8ioRm5/0nNmoqhLpO1nGA+ZPIB+2C/C04PvN2of
	 2RFhC/L4xuVptOGGhHPeIib2lV/BQdKAKNU/QorzbtPCfalgs0rHB/54Y1kbHO6eSt
	 b3dhswokCHtqOLdfujBpDplo3ZJoX7RwsoBLmouQWiFKACugtZgYZ0QEomHssMFYVh
	 6FUb//AJFPfIW01vsxwz7htnonGo4JUcT4sU20Bt36w8H/UA9Mjjg5a9hCfyJ3SK6T
	 0gpkRJoHoVq1+Cn+KOIt7quvHdrfH1bKq9CPHGUDEnfyC+42ablS7ST0eU7o4F/hYc
	 rmFz/ONz6S2eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAF6C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 12:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171430754275.10864.4573092243923165963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706bc1f15845ac99ea0f9ede4e19dc08cc45c6dbd43e3c50b4d801736a9b76a1
Date: Sun, 28 Apr 2024 12:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714307542
