Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17695478E
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729162554; cv=none; b=pXBuu+L0k9JI+GltI00/gibHHr9Gt5tT69AttCQPT9H/RgIykEaJ77irY4nQQqHDHiJ1VNR5VjiE+xoHRfKYcqMz7WQl81KpZs04MFdgQHBQ6EM1r4QoOrEUDz7z97fRBtnSJMAgAmaUuRYZ+Civk7tkwnLKQ6luDbXuvixXR74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729162554; c=relaxed/simple;
	bh=rfrgeIaWah7pVDj7eh86cXbpF6Ica9STFB3HkuWlYao=;
	h=To:Subject:From:Message-Id:Date; b=DzdcpQO5trv3e3uxrYerzZHkiC68D60xDwh1aK98/l6S7cdKrOZcTG9GAeKh3vDvNA1XNYcfVQD+GK4wizbfTivK0l0dQt8ukeieSU3dolT7a+HISggWXYpKmTnRXfkjSgqZUH8Su6xwhppPxJ2yJ74fpok21MJAQbIaRoamAD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaRI04q9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaRI04q9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61EDC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729162553;
	bh=rfrgeIaWah7pVDj7eh86cXbpF6Ica9STFB3HkuWlYao=;
	h=To:Subject:From:Date:From;
	b=AaRI04q9FHxvpN1v/JQWUUzGtCKOewtbD7VnTwOAovV413WVp5R+2pDSKUeRmc5xU
	 hOA4dOm8vJKqooSn6pcyhQR0QZypybH3QPxDWGss5ie0cDb+mjayW5HRjYQr0zkRwm
	 GAq0VMaWuzOsKXFcd1RMsUfsMmqLRszvFlIKMy0kayAzBgCs/y4nAHoukzRQkXtmhT
	 h/ONMAUFvYJ5B5gtmE0vX+09cTlRQxJJKeVIvBiWM3EFIqq5Bqc/FG8401j1KBibHS
	 GCnuf2U2ALtm5nGSXMS69pnzk6/Hs29eP6UiOclXR1daVLSv6LjJbcYijmgSwKfu1j
	 jKcvrqEF7LW9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D86D21279
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172916255365.2728.1734795563644237123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d23dbc99b6bb2b2d7bf923b08390b059ed300deec690a36ad4c3c7ba14af37
Date: Thu, 17 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729162553
