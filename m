Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122E91AD9F9
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733482554; cv=none; b=hi+KDreKNTtebnNr4zaA3E2iyEgUHtprowghEhua0vgFvQ2YVl0hMvp9wjnAjLFixutueylB9O0woNhzq3J1+wS8T9Mq0MQ1aidJ+qSY6c6LDtlRZYqBGrj+K/oYxw5jW9Xjp7Hia0WOPmAHgoPRR51TlrcB158XDiB4gmCPvRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733482554; c=relaxed/simple;
	bh=jqYav8Cqic/JZGW8koFnaKKXnouwzecM2qA3hm1kEtw=;
	h=To:Subject:From:Message-Id:Date; b=UrXENoVkv7Tu+ldQfHgRmvTKJTpVlPs/7FIIS1iIHZIKXqka7Y/A66ranhjqq4WczA4DJ9YnoldbcphAVy3HyA42ebDNtOhPVExLpYKhVsrcDf9QU8ZWpWcC6oCPq/nasS35ZLYCsqvAjDTmQDC/Ut77cPTFpptZC99xSzZJ1nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGK7Xscw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGK7Xscw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A878DC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733482553;
	bh=jqYav8Cqic/JZGW8koFnaKKXnouwzecM2qA3hm1kEtw=;
	h=To:Subject:From:Date:From;
	b=UGK7XscwRlpJBhrI4STcde5fMoEKJrypZLsJmgo9D9Q804hP1wT+gDyA0Q7orTh6a
	 zmfSdFHNEcBD6PrZWALgZqqDlX83YN3xZZndeH+oZpSQU+eKuqNYN1iHQykprUW06o
	 IPupMFAyvO1n2RmdBZ/r6gDQN8rtoSQ+eb34milu0o8+G1fubsl/EYnbpeQ/PK1F3y
	 O9VFbIATFzO6oxKotjTEcHuMj5NycsWf2UZJ40JkTs7GZMZ2NhI0k/Mbc3dYYsL6vI
	 0P12yZSBzDOozrfYhkg0A9lTyb19v9ys3+F0pDqbu1/5WQ9vtC5WNNZo8EY2IQDRzo
	 hz8J1pUoNa01w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97643E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173348255360.17360.11678195798785097769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136400862a98670c2e9702acc019bc5214a61069be841fbab4341e03cec30746
Date: Fri, 06 Dec 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733482553
