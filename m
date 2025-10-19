Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F36C1369B4
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760854794; cv=none; b=auswno8+75Xb9OGrQr55AfIdxqF5XBDQEWRZuhPpkjEIO1HbIFFfdaBUI/0QQJBFsJ2UEvQ3FlUKyZRc53P1weRQH5CmJskSiCdTbOtafc7YALQGGhvEzZi8sH8DtFS8uPpMiYSEXeTXWDYyihcr5txSmKZfN6Qawi5VhIhwYAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760854794; c=relaxed/simple;
	bh=OOVDRxnumEnDTwRH5dMcdcRB6UHnoQY76AqT1IpkTTI=;
	h=To:Subject:From:Message-Id:Date; b=Zr8qZFS4uZEXrOvgwmMxjtBiu4eZ32N68qMI94FuZZdUrWVPa9ZsyN82v/1SCaxyEIxCJIJ2la/rAGlu/wmETzCXMCu/gmmmgFABXZHIz1Azs17bD/6On0Qa3O6Rcwm+QDNpoW/xlvjP//uVd7hVfnHS9J+rcfgcxU8tJ76ZQXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXA1biPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXA1biPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83D1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760854793;
	bh=OOVDRxnumEnDTwRH5dMcdcRB6UHnoQY76AqT1IpkTTI=;
	h=To:Subject:From:Date:From;
	b=uXA1biPWZGmgKpH04LB8dNEawXJXbUJ157Q8wBB41PVtjAsKtHHtXAVEA+Bh6CEoQ
	 3earESuC4FL3PdxeSUknmYhuej4G6Bn+J+AbTYs27v4F3u993Tjn72smFVSKWH2yjf
	 45WlqOZQwAtNyeQJcZcQsXX71UFgRJ7KKrew3uvRXxe9T74tu2YAx0+7B/9JS+/6/B
	 1uCDT+BrH15BrF/B4lvFKCxMud2aWxTUOdbuvt415OTrZYdFVWmZghburMD4xanQgn
	 Tzoz6HOSUBdBTS8ey7JEUGEZSs5UWEhqxgDFB71mXnWu7vTG00b88M47SXHuIsxXGy
	 63nsRwsHQwBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F3CCD1AA
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085479358.21680.6929260976045204790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f097b97b4513db5d15ae5c7d48cc2c38764a2524ff6b43112959909e28cfe0
Date: Sun, 19 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760854793
