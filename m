Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359DA1946DF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750792795; cv=none; b=o6Vtza59/jWrGOKl+SeNvQhb56xm3A+EGX8Eg0DyXE5K4orM2ZMz4ohlO2tS2BHRm/i403C4o+Mv/C8BO1ffPmazPqoK/G9ZZO0b7X+DzOZLvm2sm6rsOb6VlDiwCk2LePxCOJ1XonWTV6AMbJXRY3qcQ3Bt0Ala0cddF7ORrLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750792795; c=relaxed/simple;
	bh=jSBOaXuFpHotBgiVmsRN2llVqLsKN2U+ECfSABT7//E=;
	h=To:Subject:From:Message-Id:Date; b=Jh73oky+DfsIM2b2MHq0QFRy0b3+N8IXg6wqyQmw0xJFgUXUiD2g402t8AkyYJVE4PxKXbGFyY6uNO/dL5wREK4Up1ke4Il0M0zgv7annINnnQqSgHy3WIHrS5P1LYmQ0of2L2IWbj3qmk34w9Xb5RZwFOc4hZgtQX6To6XTI1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/fRkG9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/fRkG9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A4C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750792793;
	bh=jSBOaXuFpHotBgiVmsRN2llVqLsKN2U+ECfSABT7//E=;
	h=To:Subject:From:Date:From;
	b=r/fRkG9AVBOUMg5DwcFDvbZdVd6SDe5LbZCbNoqPfTns8+25H38TQB28zxPZ+s9aq
	 69jkZanOaJIM8lsW8j6N1Y9HIfEl1TEElds0zKNSfrEKUvGCYN4OPNjLFIkpjaLZq9
	 5Y7li13LKxROznWaMCFK06RgHkRJlwDvkcdACdy+EyrOk2mYT4urF1t1Rg97hzGKYr
	 ue5+VLjDTyeakr1cyQCxS4FWnnh3ZG/QGfT87TWlUHP4fXsnHPkkXkb0rstAAt2uve
	 3gibNRxLRpGDUwETzwZQrTd9KPS5gHrL7bxSI25/jfhpXWxj2TG3P++Wqa52cL8plU
	 maWfQIuq7sSRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F02C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079279359.25630.9990191071783153200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d76592603a00afa3a8d2b06f3074a596163086e13ba0d244617256d90773be
Date: Tue, 24 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750792793
