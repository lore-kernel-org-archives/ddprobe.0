Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B191E9919
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773039893; cv=none; b=tPEUDyV+6T1cbC+wsqmaRYnx3dyInmpkLmJnQpX3FXGiIuwKcWC4m0J5jNQ9AAIjzSUC5mlyP8O7ZmTeBG8qVXBEusU6p7Nx9w+2AZj2AK/1QzgZ41kH+o7421v6btvp0ZbF0iRhPzMEXCZIpZwnBq2axFw5g0l+4oeI8Hzd94k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773039893; c=relaxed/simple;
	bh=1cBk6J64lk01oGhPyeaOu4n4VK4yjQ9nl5EQ3rpgFZQ=;
	h=To:Subject:From:Message-Id:Date; b=OtKpCtQzBij9OOBWbYBwrIdZDINGTLmQ2WTKx9w/R9JuipYD7xAFXrbGrtRQKwBJD9pFg1FkGvshATZqZGdqGUeaeHvcLRE6LRcLZiEvLUTvUYTIJXpOvvnd91WnM8qacQU7QP6RCg6cpVHSNzZ/rK0SQuAtbphKwJbJJQtffwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abk9cmCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abk9cmCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF544C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773039893;
	bh=1cBk6J64lk01oGhPyeaOu4n4VK4yjQ9nl5EQ3rpgFZQ=;
	h=To:Subject:From:Date:From;
	b=abk9cmCg2/6pSgAUB2+lmZSO0nob9Lp7CdyWFjXnymkI1Cqj3Pu2N06vErP67z4dW
	 qqoO3yrqPrHN++8+iG/ZD07qNggTCsBzjlw1jqMxl8sigLTXUh3aSgV3ZvRXEVe3qV
	 FKeFF7QrAk1d40Ooyvo7/kqSQwVErXKbxzj/PQUGQrU0L3IFMwIAbsOLMTOoIPY/2m
	 RL9nPY/JNN78iG8UdxRARxJhFs9TAPjxC5g9NbiCc6FStm7CqDLWDyJr5RLR1fEEkc
	 7E8fEJedL31MMJQVaqEvvm/QprWs11VM/65Re5wUd2rxJdnDN4WtxWc5PaMd+GtVE9
	 zG4Ko5NPuckWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A59BEF36F1
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303989362.22151.13185692677415674491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502c2d38aa0c828998a8ed7f52fb1578b671145bb9815f292f2aa2be126703c3
Date: Mon, 09 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773039893
