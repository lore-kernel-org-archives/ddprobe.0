Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D46204F84
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742731194; cv=none; b=W6KFRVSP5hmwn+5jEpLvdt9f3m7o9vX3bvf5Qwoj/LdE5HL8bpXA8YEQVeKEZBiPx45lRX16Rn3l5CkP04LrzOOievafQv6XKe4Y39eIz9FKRo7qMP22236Ii0N6ifzphU6MR57i6EOsa1YKuUOrPydWL9JxQH4DZaNsqHPgjs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742731194; c=relaxed/simple;
	bh=TrMzVOo2MapxFETAaZS4QFYJPtxtHqK9hn0m9lzcK6w=;
	h=To:Subject:From:Message-Id:Date; b=AY70z8/buIDdrRui0dDYX36TefdF1qBkjFhgvZZrAUSgM0EiCeN/TAxkoNwwPOXChdfIzwJYey+fkSuiuy3f6k2jORT1IQUzE9nuMI5+s5MEn7NrUnGzJtg7DkmN/b/5E7WhoNGByf2as0kCp20tPmJeoieLK/kxcyxoCgxYo40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flAZQPld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flAZQPld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A1BC4CEE8
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742731193;
	bh=TrMzVOo2MapxFETAaZS4QFYJPtxtHqK9hn0m9lzcK6w=;
	h=To:Subject:From:Date:From;
	b=flAZQPlduaboyKoDudO3+3YFoncaAgkCKwKQaPnl59YPPDoCh2FrCQzFCjPREVFP9
	 kEOh5A2F8f0VM/sF907S3gxVa3KKpJ1R90+8smoMst9q8sD3esVCtHgH6PGVLGM830
	 q1/U1h2k5R5xrXlxxAb7m8aCx8lGQEEwGyp3pKmdb6ER8U430CjBVk7MfcreLX7VRg
	 v6oAquT/vTeSsKAVjRjwrZvqqZqf9h4BYa5JULCeuePklDnFyGrhPhjqX0tcDisOvZ
	 wtrQKCHhtMgsrAcLiD6mXviX50/2c+OOpUbdbQsOQfoXbvTbLPDiYfFIuiS3lJgqMa
	 JR/79Oxjib5Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3EDC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174273119367.17616.15487081767732299843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614ae6cf307c53e207dc89b27694344008d156941ddf2d755be5026e5450bddf
Date: Sun, 23 Mar 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742731193
