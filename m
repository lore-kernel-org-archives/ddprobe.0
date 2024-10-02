Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345A61C36
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727835354; cv=none; b=FdY6UkWIo5jXhKJHHjhz8NUaKaG5H5nh6IuYgJIxNW2lTg7bp+7TZb2KXvOK9VJaOWxn7bd7H8t/PzTghvIwjjxeUTRnoNv2pwS25XG4ebbkoMyxwvZRcnyYTOGGWk4iCOvbFIKJxL1Eo6pWu3Lx3iVehsiCEL3cFTcCKX36RBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727835354; c=relaxed/simple;
	bh=E5u/aAvhjba68NuYQh6GhHmCN2SVGWqR964iO1hydu8=;
	h=To:Subject:From:Message-Id:Date; b=J20tNDX1bmuh9CPspciSO5L1iP5NuGdh9t0z1oWtIaJMajwLnDll5w6lL4Vj+vBI3+8oLkgUHteA5QZuuQs0WXJdpnq+wseEhRmJnIGWBABQu5l4oMmuy9sjLMX95hinBayFNguBHft6w9+BQLDXd8YxcHUUFYJN0/WHlrBctNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/Qt2miK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/Qt2miK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4911C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727835353;
	bh=E5u/aAvhjba68NuYQh6GhHmCN2SVGWqR964iO1hydu8=;
	h=To:Subject:From:Date:From;
	b=d/Qt2miKXlditkpq9BqiJwHj1ul13eKSbmDLE8ykAB8ZJMLIFvAjBTeoXJ2b5YXE5
	 okCtEl5QqnmF2JZWdGBdD4eA2L9vFc0Qt3UytpcBmKT5j/FEb/a4+5cna5LsEBRFYa
	 Grlljfd5yMJWBUfuMkGVXyHdvCmqqAEk6HpRd1zuZk6vGY4S3zmjzmHZAHgPSjpai1
	 O62GVoP1ZiC0uLGH+o78uWSTkxoLyhthXghJBMj+EbKTxIP4bSYfodx4sPAzQrN04q
	 umwRvvR6luSGxyb5QQUwC3vhlaRRiO7dpz1jdrLQpGf5A3lBOxF9lrTSWoR3ttPuYO
	 UzzwkScmigJ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC3ACF318C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172783535362.23748.4204297821642918792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debfaa0479d0deff2b12d1309a16fb1374abf892e456138eec0897f21499d332
Date: Wed, 02 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727835353
