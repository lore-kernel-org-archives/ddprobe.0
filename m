Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FD328F935
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751881795; cv=none; b=UVwsKGOYH+n0C+oaa+eHNaqz4WM8CR1EI0ueq6jgU1OAU4q3kleCaWtdzLmDxwJuZNewiYE4y9DoZZ7AbjNfVk8eszkTsY+0sz87z6cZFvzdnIW/x6dUITC45gMOpYcBIV1cKSZbUjBUKWCmhoJRmGbBFh09XngT9AlySvYxhB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751881795; c=relaxed/simple;
	bh=NEZR0xWZaH5ttaix4dd0EmPWM9XdJq6Auo8X89u3SXw=;
	h=To:Subject:From:Message-Id:Date; b=aYffOOuRQtt1gh0AMN09Mpb7IaF9ygTcRRenVIfJBHuPboyWt+9aJ8lbw8G9i4bjWfxMS/5NaDmhsVLVOXGfGv8EqGeB7Izczw1WNEwgB7qnh7UVvlH8Wi04tDG2qozluyxJyXhsiHbI7yuA0P+JxbWICr79kRvfbhIizfmegQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqDVPv5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqDVPv5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 29DABC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751881794;
	bh=NEZR0xWZaH5ttaix4dd0EmPWM9XdJq6Auo8X89u3SXw=;
	h=To:Subject:From:Date:From;
	b=lqDVPv5BBcDSIGd09AzZoMwz5HrgqoTwB6GPsN7TR8g87JsNm6uMovcoxPcf8DojB
	 jd1NG7WIbkUjBrVoWMY0Uru6J/dm4eT/msjNMw0rL17cgqIX16Bhfklukp3HqlR0rk
	 TxpA1Gj/6sgHKchkGVq6pj22UR1tChQOhWBCHGk22SBb3mRLDk7cdF0iYLvgXxojEq
	 x489vEbCx90BhVhqIWumHNaiofKe9tc8QKy2vPh6ZhmZcTQc3ODGEHSAebjQy9Eo3b
	 7GLWhlDswncA/ZmHzBg5hubCN7JfGYurBReUVKG0p1/JUjKnpxiaMa9HtvtyWNmTUL
	 6ib4NxP1OhEDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E83EC8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188179357.30520.6909192067407891939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3155fbb3a0a0ed624c30d361741523f1ba0c00a41dbbe70bf8c3fc1e9cc75f27
Date: Mon, 07 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751881793
