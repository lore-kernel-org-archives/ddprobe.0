Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5172E3CC313
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787162434; cv=none; b=BPyB+7Nk9aDe76Wq8lPbIyrXn8ckIls5ohAmdanXW+UeEtdiyZm6QA32K2aX9N9TJsjbcfMnQ3BJTzesqJsgfht3mBy5hNwX2oE2/8sVHtFcn0wIch2NKWC4crKsar0am1YSbBEeOejnPdXpClfhg3/uRjjIxDUUiXQyBqxib30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787162434; c=relaxed/simple;
	bh=5A1rx2tQ6DfOA06WTc1DLFYRx53JX6Y3rfNGPz8647k=;
	h=To:Subject:From:Message-Id:Date; b=DaT0zahv3GanAeVQT3NePc3yK/wQ1KxfAARCfte4Yl2VdzV18VwW/ZB4qfAqiScf6uCwPQKkEi1czBKjnfJ8sZ9gUqA4RUyp/id5qJ/wJwzFUsQP6HVk7u7rgUN9fm73fwmwuOKOBRIUWy1MvhP6G88aYnblSHCzVh+xLr0X6cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gz2xM07K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gz2xM07K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF69C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787162433;
	bh=5A1rx2tQ6DfOA06WTc1DLFYRx53JX6Y3rfNGPz8647k=;
	h=To:Subject:From:Date:From;
	b=gz2xM07Ktop1FIvkWm5rmBzYCOkH0bxsB8u6wA6lq5aGAoFyo2PDAeHQJgagz9fY6
	 +HU8I/OY54tBUG9Ha5Kf60FRkjoHmw77RT03qrsBakYZwVPDA07bK8XsJy7kxV6V2F
	 nuRNYsjzOMKyC/slHY5+EAyMdJX6IrE7MD+lDGwiZuLUywxZnGl85boTdqbu7AfMZQ
	 ZQ0pf5YO4cstOpJNa1QcatQVL44V85uDQATxi+9HZO4TGWOVVHdQBBpHf/oXcyJ9w9
	 F5o2AwkCgRSNpEttWr2focBCp1y2c/H0PFCqo35DjhZT6xCwy53XCgluoJu9RdLosG
	 vjG5Qw8a+caLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04FCC5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716243368.3286.18219022668469248290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18ac8d3c9fd906d406e31ef73dbd88080de2551b9292925d0e677fc0a50ae84
Date: Wed, 19 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787162433
