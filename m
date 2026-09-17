Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF70E4CA296
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789642234; cv=none; b=cEz6QvoKFaP6YPQV/8hvxznht24/eKXPnuYLATMeJS/00MkcysQz0jWD/wHHRLKsVhW95Ls8NxhLFgNHzv0B56trwcbzy0PKRRK6QZnePFOXjsv6oER1HnQD6exbRuVWAm4rAhx1jvQrrvJqCTz6AnbsIsQzeeXrDjOtrRUPmGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789642234; c=relaxed/simple;
	bh=429uPvshkZ7Vk0ymlfXUQ6j6zNndYdnQWWj30Lkv0Dw=;
	h=To:Subject:From:Message-Id:Date; b=S67Zv7rIHArM0PQCOh2BUi7uGXmK9NLcSCqKIYT75UdxOB9wU4fH0A08FkZI0Vc03+nJLDPpfklavoJupUOwR5PukOiR/xhgxQxwjHj1FWbg9OP3WEAn1PboZ8Fy72jeqQKII/DlePA3zfO4NmiM5iJAtIRvJKr9sOc4NzklDh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0NHCoy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0NHCoy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B4CC2BD00
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789642233;
	bh=429uPvshkZ7Vk0ymlfXUQ6j6zNndYdnQWWj30Lkv0Dw=;
	h=To:Subject:From:Date:From;
	b=q0NHCoy9qyB8gyZeOQC4ruzr2lPx3K89XvKL+vuF8v/ftegax69KUwgKwUg2fqDro
	 oSpq84No4B2vgYu5kXk3e74/eQY8IutxjTPdnUANWSzSvxnQ+4bjQZLZgJIXcq8TxK
	 dFNyzl9dtvzZB4TV92ZVzuKKjq5578VqzU7jDtYPWQVAuj43k/yDOtrmsHqPxX20uC
	 pC2IhPCOFg4Wrimz2b8+mH+yCCfN9iqr/KlzBKkToYVihDXN6QM3nxYyKDhmS/WAjJ
	 l0lkO/pO6sK5SJGjGTZlsnZARecgdF8PsEG0Rf0DEadxAjHmSr4V2hyGDvTgDItbEX
	 u6Mhpunu0TVOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56FAC982CF
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964223372.12895.8725532760953666874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91310237cf91f2dc2dc9252b83c63020d40b0194d1f7bc67f6636d9d1f71ddc5
Date: Thu, 17 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789642233
