Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4888A224B0C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748881794; cv=none; b=n3jQjLF7wppW8IWwlSt8fjM7i5mCc0l8mllAKOhNU96CZZi38T22HnR1u4cNKrgUlYzaCbHrs1mkmdyq59h2Kai+5kTrY8ayj9vk6zOENdSoOZWLYS+7ns+JA/CkaT7Sm63XJ8eMAuUoXP9ZtBoUVzOM17JCYtckNDXyg06RLXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748881794; c=relaxed/simple;
	bh=QLRC5yrVK8SETlGxJUgqt2tsuG6y5vO7GAiFP+pXYR4=;
	h=To:Subject:From:Message-Id:Date; b=lUP78g2WI3lORnMOqoIh1mL+DR2RQ7y9NgWkqQrBvpuuf2Ei6Zm9S7ctfaz2+nEQJ+e1sw0KwdJxTuoYYpiUbNz2F2+KqenqYSCrHU+EYwsErGT2xCT0cKgme34D9z+uV8M8rPxJDDBkunb3CjGCxdr5FF6L5Leava972zxeee0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qxy/F2j0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qxy/F2j0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B017AC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748881793;
	bh=QLRC5yrVK8SETlGxJUgqt2tsuG6y5vO7GAiFP+pXYR4=;
	h=To:Subject:From:Date:From;
	b=Qxy/F2j0NVJVKYX72I7XzLoKNG2UZ2nEPafmkuZz8PASA6OMzA7bvkvlXHNsILX2z
	 z28j0Z7oFaiQlRKg7i5ki2e0FZ8KsQlylUjM52v7LDGfgw0vW47xG+qV05DI1hsxDY
	 3OfuV/wErM8YqqZZnoU3lig6QBPOQysN4KaiRs9r4+HnoMihT2ZVHjUyGWHY48hGYk
	 6MbBlGGc2u6bw7OCCTg0AhneRTrlK0Iygt1L+gf00bxn0coBOkLrcwyFAg/RxezNOu
	 UkcNnDO22wGBUFSaVzhK9GmSp3sx8t97QaRemTMe5bQ/GcMwhxsgqrgNG3AhpfWxD8
	 vsrUxScdMP3KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A906C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888179362.27717.11719521158357215207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33201c45a605e6499c0bb5b09cb31ba49cb5c9028c4bf91941421e3db591143b
Date: Mon, 02 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748881793
