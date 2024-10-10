Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D97A18DF6B
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728596154; cv=none; b=GEyTg1RcJ14Ovud6QkUQsa3VaM4hSmAdEu26zylsud6TOKxQtxDLwQh4/YQcB1dAOIh8AnghPhoKWGzH20SnOJ0qSQ+4QDziORvAhS0cklvNZpocIf7rqMVztemmTdCf9pzQzG/0uS1rbznDJuseiKwXAeLP9mqHENCMyQdUISM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728596154; c=relaxed/simple;
	bh=zxLxkzNSmRHcaBIj60uSwYKKsdNkjkFN8x0XaRJutbU=;
	h=To:Subject:From:Message-Id:Date; b=ZaTieqq2o9KdZnEbnEkOpWUAeO/wB5G6zTXk/uVi7j0QBdwIvHD67dfRnqYaa9Xh/vYXFcEZl8YunYWVv/Hf5x5XB8zhaANkdqZ4VwBLyi+GTnBEUU4QT+kVU5AhX5nBoGV3HM2ISF5lwPKQQUI07dHbEq+BzWCaRy78lK45gNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGaXo1hI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGaXo1hI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC65AC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728596153;
	bh=zxLxkzNSmRHcaBIj60uSwYKKsdNkjkFN8x0XaRJutbU=;
	h=To:Subject:From:Date:From;
	b=IGaXo1hIRbs4pNmm1OC/WKbsKsJYto/N7TghXJZU9/Ly+n0lIucvP2LBteQYGbch7
	 zoV+uZAjGn07e/MEV+7RYd1q6jy8W8KqdfgnABZymQfDvkcZeRFDf3bCR3FpvFtTyB
	 acf3x7mVCx9SdOqMzqxNRFcXZ83QkGecSOJtyLcBoXmZOJvAa0jHOEE+cKL6VOPmBM
	 sTOrCGfosFzMfZcsrAxO/b8MhmeRMQdxGwhjAypE5zcLhiLzSBjtMkXH1B1WmOKLAU
	 o79ahY9Q9HioSt0XUK78b85a6wUcpR/uaG9qsygPhodPlS3BOutRQ6Qu9heZjzuqEK
	 yqM8qtD0eTPQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97830D24454
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172859615361.22457.13431062990347382189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3b07976183ec1448075aaa8a283813485a5895d26e2e0830404c50883ed28d
Date: Thu, 10 Oct 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728596153
