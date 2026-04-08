Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CA0288B1
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775646334; cv=none; b=JH50fHQ0XAxmsCWRJ/DAQdd+ZVNlITe8pCqANtrWlhExsyBar0YrWnu2vr2J9pTecJaveUZo8bWehKvFo/XzrWOhFSixJ5bKDu2ZnBfI97bElpXIT18LZP7TX/9FzSfCkXPai+8+WakdyM6borKOibivQvgfmeMZUn73hu/mHIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775646334; c=relaxed/simple;
	bh=f0S4/1ODfn4/ip9HXdPO6CIqxKO3KvLPLk/0HfI0Vpc=;
	h=To:Subject:From:Message-Id:Date; b=CDS/rg6gPI2q3o5SDyJEf0uOOnJKEXZND2GTiWqfeUruT/JoW5hoiBN9OYtQo5jBNxhgJq1FnOfoo6X5KP/Ni3i4vaDdcGhvwIPpsqp60chGOUMXwFRysh5hHsB4VAKc4Py2YGGGhQcAElMQNsb+BdBTS/r+SEJKQSl1o34ooMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oELxREWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oELxREWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31F8C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775646333;
	bh=f0S4/1ODfn4/ip9HXdPO6CIqxKO3KvLPLk/0HfI0Vpc=;
	h=To:Subject:From:Date:From;
	b=oELxREWnQp62VBuDLoeLj0NrCiKyNWgAQt9RuX3HvV03YqT9TtqSaP9Iz31J+a+wh
	 9a77ufv3e2S5XEhxrDIiHpy8qwyTn+bTDK6WhBWUD9s6H/K4vKRJ6+AXgAEUZW/FKh
	 yiFlTIXIfednUMCBA4sRWTxwldLMbi9WaODUnT93jOjjYpQEeZd/8Lmkw2Zagzot/9
	 8kTmkdY0FRwRIG0IsDSizPT40tUxCeXJssDkDy9z3FT8hFzxOHUFpxlKI20NXJkKV1
	 m/ftfW5hLWZUswdXBZBCYhYFSejevhtlicSyQnz65KlRi7jN8c/4+4YNh2DQrq6B1K
	 9MaiQHlVk7P9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00531073C98
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564633370.18453.7879178323728488523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc5b862cb3be8fa06234858d091aaf7ca533dd94584e4b1191db3c131c054c1
Date: Wed, 08 Apr 2026 11:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775646333
