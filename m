Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59989547044
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791592234; cv=none; b=HcmcixJxu/j9AzfeGmBSa4GmjEqAqpqLOrW5DK7H0AduxxUqvNbwu0N8JUPdqI55LqPaU68KOIaSUXB7fxSQVbzFbY+xrVClOJydbNT0jj2JbaAL59U0JZssZObyMzk1byww40GAq4CGlqmXcFf7QiAA7WhcdTJWQXU6IUp+baM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791592234; c=relaxed/simple;
	bh=Fdm1Y/UJIyRzgI3ssYI/cBdTMq+fnaegIq1lv7TJlKg=;
	h=To:Subject:From:Message-Id:Date; b=FK5H7SEElRU5TtKOMq5E3e91+ZJ2d3kIZPWWmSl4cmJoF15mZwg2c1Kclr8YL44m6N0AbvYM1cyYUtCm9kD85SA7cJo279OGz+9cuLNLsJ/aL7vtI4PM02qOCIiaya1RoYsBeTS29LkZVnFiMEXZpCzJat5UY7tIAcj+mzhpi5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHAx/guL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHAx/guL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EAEC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791592233;
	bh=Fdm1Y/UJIyRzgI3ssYI/cBdTMq+fnaegIq1lv7TJlKg=;
	h=To:Subject:From:Date:From;
	b=YHAx/guLUInMEhlhcsj2Bx0IRi5L/W5hIQxdVDhE/O8B+ayRNcPaH4P8X9BnBO1Op
	 /aVNJih+/kwH4cL4vbWUlAX0op6TLsRlFt2jMfH1XsWihqTsUOjKFt8y05F1qHiKz5
	 K3FitVmwN6lPAu+0b56oKvbvl60zOkRf1h3Cmj1df4bxdtT8jCS+nXosiKCud4M6hx
	 g4rfycRIWtVzZchgTfb//f6XkGZJr2L6kUz4mztBTC6QszlnM32J7Z22rlJPwke//w
	 M3rLYWWHfxBv/fzLqzejKG+WFxCbsospJ/tdG60CKbcgbkuayalO6M4F3nNCvsa2qE
	 AirbWYtugh4DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC569CA9EBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159223368.23773.10540683955609781044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f101df805daf7946f2ea24603c8eff812eaff56a81b9b21adb010117628ee6df
Date: Sat, 10 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791592233
