Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3FE1F4606
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753350594; cv=none; b=szm6Waw5i7cBqucAFEaDmhVg8+NQlyEbt8YQdsQWp2mKGDIDfrY3FZsogq8ua9AfjI1yzqdZ8LH+I4DORkM0MW1+R9GE258Lp54wkjMDlx65XSYyQ5inBXVhdjRZfJaaACkLuyqVhTtixoqOGADNj5OxTScbOgxpHJN5IAi6J3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753350594; c=relaxed/simple;
	bh=eWCwFEWue9b8sbBnL8Wft2cfY0Qv8Ca5AlwEWfBjF/E=;
	h=To:Subject:From:Message-Id:Date; b=BqeAxQYUGRhK8Ue22bE50gTS5vJJYvM5MDsP+slybfRRbf073BvQ7l7U8NfQDnuvBRjkOioGgVqb01xgYTmRtDoQAa2yO3G1NIq+GPsizWl5fdA5wWjgV3Un9ifY3TGx1e2bNxvXtRlWMRxAHTwrGH7WKxSymy6NJ7o1O4FTlEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMObs/Qm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMObs/Qm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F5C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753350593;
	bh=eWCwFEWue9b8sbBnL8Wft2cfY0Qv8Ca5AlwEWfBjF/E=;
	h=To:Subject:From:Date:From;
	b=kMObs/QmcoJjqULQcLpB/dshRGxUM3dqvuXuHm8MaqQeCeFekYPeP3EmoZB2F9gru
	 x2qtcZt+bK6EUj1cH42cZLOsWpNQ+FlrjW9HAFz8tB9V50jjWg3y28z7C1L+D+gegB
	 1cd1HtLaRFe0siUMnYb7c/ssufaAlXRi0CkThkk8vXPyn+Oj2xG2mVAZ1AJByYAmvB
	 koV/vYBtp9v8Bez0gOtwh3kHtqcKIYluYM8j26ObC7NcCC0daysKVRKFhsjqEYUY5q
	 1fDkn3JT1CNE2Xh/o4mLQ+ew247BOUKbsUMd3ke2r+mUQzECn2T/L0JTOnk5L3hS7V
	 fgAHqwkP1V7+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD11C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335059358.21052.9558088162302556152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac459ef9618e89fbfdf0a558fa6c1fbbd6a8eef436d8ecec46166bb493187ff
Date: Thu, 24 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753350593
