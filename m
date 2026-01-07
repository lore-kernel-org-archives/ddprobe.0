Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD9B54758
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767747234; cv=none; b=TXqZxZTt+rdiBoiKGjTMjD2OdqTgt4elbOinMnyvTzpDac2IoqBXKswZhc9oxffXx2ZZitQ3P9p+GKgck0uSSmzk7joH94kWeqaK3aUnkPFW9t8+96lU8t1gvUZ/1kBmKo71v5ixqTSXu+Bw0t92jfrXO66g39n4XZqXcCVe6ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767747234; c=relaxed/simple;
	bh=ZcTxUCIU9mPLQ3mze8YowCn/0gxDpqPbCBVyqiW5HUw=;
	h=To:Subject:From:Message-Id:Date; b=qwrWtmGRCPcgTgycFAqS4SsR1JNH3JQNtksyZy/nt/kn49cmoHZGjg/3Bta0hehbAw3us0ON+fwm84Bil29ehCyjupvYjneiyPchVd7BUr5xNJ3ovQUrX1sC5yXndSHV23GFuG/hG5K0LhUMtiJJ7w1Nn5Gi3GSyIF1ZCadrMp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVWg/uQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVWg/uQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48CAC116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767747233;
	bh=ZcTxUCIU9mPLQ3mze8YowCn/0gxDpqPbCBVyqiW5HUw=;
	h=To:Subject:From:Date:From;
	b=JVWg/uQnNyln5PJjQ/D4IjatEQPZbcOb7e3HpWJBx/mRY1qyC7cv1TPVND0btaQmM
	 A/NNU7S+pTurjgOdgxCC0ajKW343bAIN5yL+fL96BkEWT90XZtciIr7IWtAe7Mc3zW
	 EvN7dB0Wer0J1gMhCubPO8DSCvfmw3K/WKrmA3r0yFP6JkWzPpAHp8xI/NJR7Ts1R6
	 i1hh4riwD7n+bYMf2fWT+YoTSyqr+8MoWMwS6LUw1ESAlWB63DbOe84MsQ1HMjbKRh
	 sthFlwpqt2U7O3R1pu5oBXyLQw8RajEoWXlG3pqRzRwvUDeBccpyQkwgXrmBriivEp
	 SV1804c2woSjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D19CF6BE1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774723357.8067.14003476333685865659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e310ebc80ee744feea8d530351e8b1ad1350fbbd4150d4ffe8b842bf9cd301
Date: Wed, 07 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767747233
