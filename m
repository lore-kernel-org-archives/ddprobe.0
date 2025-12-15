Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F7941C63
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765819374; cv=none; b=OeQmhInMqoRXiUZjW6WlAHHakP5mRGBDyklKqdXtJ9rK/5Uyo41e4/pgJUHSY7xTUnph6/z7Yv+D59zTBH2jE7oumoc6pDYhuDpjDUo2vTbVDVHT5tHL5obOV13XLTaEJI9HZVkWnolqLdptxJjESQAaPrd+md+sI3AMbzr+Qxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765819374; c=relaxed/simple;
	bh=DPTK4cePjw1QU8JEKkMm/5g/ak9dCSGJ6rKHRcixCwk=;
	h=To:Subject:From:Message-Id:Date; b=DZ3ygiQzS5mPzFS2aD1NdCHwrIlto2L0PzIWI8XCQjuJGemYDrJ6T+VaDHeolW0xqcY6RJ3KHQhsfzcqNzhteZpnWi+0CDVO71GIquNeorJEx1x80z3LpSsfZ9GvOiSbGnWUwI+mUCkzyvcAYwUOOzGIEMMSBtqgNLRRCvT6SCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOSCKfJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOSCKfJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89F3C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765819373;
	bh=DPTK4cePjw1QU8JEKkMm/5g/ak9dCSGJ6rKHRcixCwk=;
	h=To:Subject:From:Date:From;
	b=EOSCKfJRKBbA4EkfikdyIplo+Ti71fbduBe13QhiPKnSoLs78B4HJFvfd46AYnfMq
	 1/oG1EdqNgP33/UQ7OAq916itcJ8p/zDoPkUPafraPmDUWBfRmHYX92IjP9CfT2cZv
	 1ZRkOugurGmGxV5jdEoLYWSoo2tzbmxn8vov/3Oc+c0Jn+dxjB/tzXhzCaqE2N0kAk
	 EZRckE/H7uxfPBp89erXXO0n3KlHgdr9xNxex8hwqKzz4Cp/1wFMyDWe7zZS9drHTe
	 hdlP04dAuKvBbn3YAX/cJLTi824lPCn6njHcNkt513A1q096zkgYgAAbhAAzc0XQLc
	 774Diw8bdr9BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99443D5B85B
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581937361.30561.7837317102162596771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a1dec987abe202fd70ccfc4c6956f78f26261fdad48e99f2e2273a95afeaa3
Date: Mon, 15 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765819373
