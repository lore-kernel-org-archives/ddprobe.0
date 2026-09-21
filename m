Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697091B808
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789970436; cv=none; b=dBKCW35RutGSzYa9bAFm6RmDXSezpEBA40KRZ2LeUHtxGs111WcJG8Eyy5J1pW5z0DMSf8O0GFD7bW7nYdyrI59HWZdkcKozfN8Koxq+z2uYE1HZiepo2vMCMkbkUzKo1PNW/p2HMIjodVskugg+9IhM+Q/o/GAea6tA+HW2CwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789970436; c=relaxed/simple;
	bh=F7EPysFemUdsC/l4f+WIQSzZQm1dLS1oaEDEA6Cc+yA=;
	h=To:Subject:From:Message-Id:Date; b=KVF0IepQ/xECjCrYGBFFG3h8kWXTQwgiqloFOIEqKlkavxqz7Z1v8dA/0TxCZKn8QjeMMY1qx+Mhc4Y35FdQPjEh5DhoNAr0DubvKVaDu52YFXGEJHfbp/oiPaVElydLUTzT0+8hr+G6gZJ4I+9Ltr6ZHr1KTLf0Mt8A5bgSpy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFCIv2KS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFCIv2KS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D253AC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789970433;
	bh=F7EPysFemUdsC/l4f+WIQSzZQm1dLS1oaEDEA6Cc+yA=;
	h=To:Subject:From:Date:From;
	b=tFCIv2KSeYzr8wh7A3SHlPkvg32vN1aLLRqjU1RzUks7tgEpmYTk4s1IXPFPWnyE/
	 yUAH+fqu4EAGASZ8kD+sFPLe0uZ60a86VIiMQDYenzjnMnhxO+Tg3w7/qB2SsYP4dr
	 6dLBEGlEVPV6oMDkkB+PIHVN6XoynLBS+F0g/s0PuEUKJQfeGwMXFgV6hfvqO089B5
	 7CKxb4Zq0uIieXhWkDN5kMzA7IUs0Zbrch9IWuWU1uya3X9vBmT3X08wpO2wgaCyRz
	 NHCDSpHmJKMzXPDm/QMy/Ac6fPJqnAZvi4LzQv8ltPktjixK3URiUeMGSL1T4mo6Q9
	 +SisBGjp1R/Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0202C982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997043371.21290.741942579713405769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8412d99ce4dd74ebdd703a9711ed48785355164655bb428aaa33c624fa74537
Date: Mon, 21 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789970433
