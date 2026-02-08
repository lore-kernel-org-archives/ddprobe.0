Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E9E487BE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770544434; cv=none; b=Rt35M5wGXK6+ifhb/9+sikRRi8xHl/zdrZDfNC0AjycmnZw5DWMv7e3tHGLC6mmEZmUTflAjxU0lrDA9U2IWU5YBBNH9s8otajBuVBgndZnRaGRqCKgSv3M8AP2ML9YPvv9mOhOomNT5rRu97RRc47tGCy07ailyeRaDiQqSSO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770544434; c=relaxed/simple;
	bh=+6ez+Q04DrfFapdnqFA1K/xOKY/u24+ae+pJB3W4jHY=;
	h=To:Subject:From:Message-Id:Date; b=IN3WRX+825D6lX2xmnqqIEQxIZklQ28Ie1snvPfzrdAHJxbw6a6uMc3KaRvUPSLa6voIKu7WLJ2XCfZvAnLaVQSfMBXginw6YPPrNJ8417LEMOCxUEwdwYyOt/i9t+i5hlOTvz9xtZQBah/A9rmUsxrxfWPkLi6/oR/KFq8RvKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/NtTi7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/NtTi7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB54C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770544433;
	bh=+6ez+Q04DrfFapdnqFA1K/xOKY/u24+ae+pJB3W4jHY=;
	h=To:Subject:From:Date:From;
	b=f/NtTi7T3jhQ128f4f77wBEFahDdmqgMS+LSRsJC7LOtQoNtwjsYKrL4WDpu76NyE
	 3/t1aLkPhxoE7W625LNiUqA5PDSUi+iSwx8Ad6cMZP/dNnQ+kKq6ya8F4dbQGdhmuE
	 OUWrGCNQ5iCwUuDyVsMqLjdXuoAc4lkeATxDc79fb5Y9QhUN7en/69hIxreRFouOOT
	 R5sPv8BB8xksyxB3Pq9F9vJtGIsC5Dac2jyClYlOypw09BnwmSEFdXPM7TOWGWYtXv
	 QFbtGi8SaTzU14slQgvoHo/G453jvBhEwWh2WgbTqygz+UdWCbOZh9meUonx3Fy/J6
	 UPhkwn3tc68rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB0FEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054443360.10487.13848696732913480524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0f7f79d69a4ff298f91ce6bb190fd0384fb0c9ce0a389d60f032440547e87e
Date: Sun, 08 Feb 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770544433
