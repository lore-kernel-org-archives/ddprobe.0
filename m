Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C4E34D939
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770977094; cv=none; b=uHw86VB5eExwyLrnwZfyiwfoykns3+EuTYpwnl+0QSIuNCLC4lrX7BIpbepYRUr5dCWzwAKAPsMldsQ5BzFlWmg515vp8Bqw1RruHUkdemn7HOtfWWnliU4pGNeQwW0/zXlbeS6Z2KV/nliNH9Ag+UQehitN8B7/Fi9okDlqdRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770977094; c=relaxed/simple;
	bh=XhSuR9ld0uTKO/d+kby9WDiP2Koo+SkTHitpsllp1lg=;
	h=To:Subject:From:Message-Id:Date; b=dLqau08VldBEekBbKp3df/kEMu3UiMUPx4gu2aVKNpl0JyHuwz5kxkupLkK1PoyBA4dE8imG0Zqcss5KIeiIc21QOqtHptUoh1Gtuo6805qixhHpdrTGaqn3tj8Gj20wHBqQKtu9BI1K19ipfQF+unMSfI2BRnPjQAXN/DvileQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjFHaZaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjFHaZaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE317C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770977093;
	bh=XhSuR9ld0uTKO/d+kby9WDiP2Koo+SkTHitpsllp1lg=;
	h=To:Subject:From:Date:From;
	b=jjFHaZawzrYEkb4wrJsRHhLob42bEJ/E3jE0vR5pLvRfKkDt7WWKoRM497QQDOBy5
	 1+OVpEbnLuFT7m9szqK8j5AHXqMi78fJrbgiw4mYK/U1rey9hkUAOReQyTctLGCvZp
	 3pq1yJySoeJcqOFK8NhOMRROQrHTo4GO/0Y6Q7/mau4nK5QjU/FB/isQ1qp+G2wtY5
	 PZ0sehuqHmb4ry0QFp0HIgg73dq8sDjuyvQxsynhkiJEg79LiWN/9kPgSlWlG9F9us
	 T76LfsQp1C4aqstXJhG7uymq1P0FDfKwWNmm7ypeyNETe3Kuwbtm+SnU7Hje60XA5F
	 Z0mATe0c8A6cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C6EEDF145
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097709361.18645.16560542347073066328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565aea44c6a9507d9153c9d52904137cf75f6ed5e239e8638f5da89ec0318ae2
Date: Fri, 13 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770977093
