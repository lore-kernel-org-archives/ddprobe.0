Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD9B1EEA54
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781766394; cv=none; b=bXytB/seRtjoWWs3isfbWRD3amm3bK1ciavA8IygrZE+Wd64VMXFFdBXiiR8Dr4PAGTA9OGaDewrDZSAbsatGJSuoHVbHGaUtjyzjnDQrOfOQ8bY8h3KoUn5CIh0fldWC6IH7WKIgQTgzBSMQUZh5fxr31sC97X3OktTHRBz0IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781766394; c=relaxed/simple;
	bh=XG4w7RjNX/6bJklWaHBrv5WpSDMxSrt6TW8FtvNALDs=;
	h=To:Subject:From:Message-Id:Date; b=VXUX940/PSeR/b8Vgi4iDUxsCc96crj+Y6XNDCdYYfCElkcNnMDtdC1BLhBjJZudV+iDCA9oiMm+kso/o73zuw5Zce145xVXrjvt6XkmBajmzu1mSsZDy9XUUeo3LDo6WM6K+I4YpUVBV3aj3jvCqYBScmpT1EWSS6lkJeAo3io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3WU8gSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3WU8gSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2028C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781766393;
	bh=XG4w7RjNX/6bJklWaHBrv5WpSDMxSrt6TW8FtvNALDs=;
	h=To:Subject:From:Date:From;
	b=L3WU8gSKmtJ3NOeWWTXV43SywrCy4H6U97GW7t3R8MWnGlckzc9/uEX6EJwzSRXvZ
	 vOdUkPaxdJhPdKSkMeSEDQiCpedYQQeENcF+VB00FyTWswpyqTvmb/hm9sdKeF/rl2
	 SZSiVPmLQ3oqRpGdN2lkh5dYjc0nwFQjbIji7qj36TwfjU+qiogeCKO8oaVXvqKsgv
	 ZOAZIlGR013w8gAEDxme2Y3adwklYXR4ncWx40JQ2tW2aG/u4Qjjg6ujyCL569zRpz
	 ai94Ue8Lpncu5GUQQd861QSyZQX0SlcRc0fcyNFpFYsj2OsRwvm/k7L5fC9IygYcjV
	 5mr5FJYmxDfnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD92DCD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 07:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176639369.11145.10000642191822323859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691bb7336e25c86d4c3513e4db20b022ef0d9e1b51b7221b1272b5380bc6ace5
Date: Thu, 18 Jun 2026 07:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781766393
