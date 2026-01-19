Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EA12773C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768848834; cv=none; b=Xv3qXu6PuQczO8e1Y3o7VIzAdY0dgDtI23g4kQ3f24SUTtCZ3mqqgyOdw4JOGEDokusiO7njJf7a2UkXHYD14lB2waTgdprGVHO91IoXqGDy81k11RI2fnGnkPejpHdjbLWZn32rpx0bjHY3UO8LV0n3tqraVe/eSteT49TKAfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768848834; c=relaxed/simple;
	bh=GdD1hV3JoV3CkFGmBT9zkv1LUa6jFlm7++jlvDXoqMw=;
	h=To:Subject:From:Message-Id:Date; b=tkpdIt7aDH+xwryiP/01V7AyJAt3fy96XFLtO+FaWzQwdBvLswxq9mVv/IvMt05NnMZTZs/vQgBWIoeAo0PR9MOr2RkidPhSJ8/fxDrfIl1A3TdtONwCiWQN12YYOhlpw8TGNu4HlWPwIKLijk3DietEa2bIagWvmPSP80trcms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEoEYEua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEoEYEua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A25C19425
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768848833;
	bh=GdD1hV3JoV3CkFGmBT9zkv1LUa6jFlm7++jlvDXoqMw=;
	h=To:Subject:From:Date:From;
	b=hEoEYEuaFNX7E4ExXBMA7GHz0DOrCjIwUuFJudJKAKbNuxTx97nOY6uZmAJUiwrqe
	 r7TbDluydBdvtg8v3SK/fncI1HIECdqpWizYTvgaqIiL2E0sHsOdRSox/mMOUIhr20
	 1NyZ8kBtkKDPpWHcPG8NLPNYWJFka4yQQ0cQU+QgteP9g4gOwufUIH5ztfIr4bJYmD
	 RnxewfwzDVabVEhnn5+BRyUQkR9ti8dg03iacNec00r/DprYMmPr9pnIafzsxxN+Jn
	 4ETYnxkQbOhAtV+ry0BG2vY+dZP7xIqHWa7BmsW1F+JOYk4lk7jEEPUsJrd/Nzoquk
	 krIs91Ii0vSLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E8ACCF2DE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884883358.6261.6055423688049689441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af523a5c849ec148143f47ae26bd00beb841c9fc1df4227788d98c44cbf79a37
Date: Mon, 19 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768848833
