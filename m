Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264AE17A2E1
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753589394; cv=none; b=bUnltjDbWB+gcrBLpPijXtyWIt2CmR4wqSamjECDSllpdu/2cp7G/OUhCH7+GQ+m97tuMpkrFvvSdUHGsz8KKoFtPIRch1aNR2TzAqNaUAyf7ty59NmJLhzfnivWxdVKXXol10q/fWgQMPSCxnKU9/TkvWxCASHW9rp9AatDiQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753589394; c=relaxed/simple;
	bh=ENwlabXOMlUkiw20XlKqMGmc21Mgyhf2ExJBJFQksa8=;
	h=To:Subject:From:Message-Id:Date; b=Xydv02RQNBGVV/zE9tLoNO+3cKu0ekGz5ImPVq3wMuCL4qHWnpElE7pmjLHJMwj9VwEfRhd/t53fmeZd0WQkr7xRvvJR4X71FWdA1AwRsvgwLpE9dfv711TrgWkkOB58oRAPDljfw1sso7mAjMcFnt0OCOC09ttv20pC5WXiN6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PojmEJTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PojmEJTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21CDC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753589393;
	bh=ENwlabXOMlUkiw20XlKqMGmc21Mgyhf2ExJBJFQksa8=;
	h=To:Subject:From:Date:From;
	b=PojmEJTnf38eaXFymV3ZC4cttN/4d/0H8PLL4Xh8pJZq+Ik2fGflp3Scq8OFziEGX
	 ON2q/DNWenji9H8iY6JuCrqmlo+eCJhAOrU3bDIprRW87A+qn8EmvGIMv4mOGnLIOk
	 Ik5ridpOX7A6bZfbh80YHGEC53+cb+UMXOoO3uQjoh/ssoOP2gzVKvEjTCFUrXZxFO
	 vRv9hcsrbzqsZWQLKHSLxmbrqp9DyL4wBAdkjuBg5onliltSQQAX0iCE0dcKNvSVZQ
	 xWIFTYGXW7DjhMM51tmDhaR7FEzfuqQSFSltNlVnKHdfCkjR+bvo6pARsY7qczs7Yf
	 J0mr1YCzxIJ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB7BC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358939357.29077.6725918315637843593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73533dbd380330cbc4aa6c46b31ef4e3cf03e0cefcbc7810b5fefeba6d4e5c25
Date: Sun, 27 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753589393
