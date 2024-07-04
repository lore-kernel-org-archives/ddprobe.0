Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A93157A43
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 11:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720091123; cv=none; b=XbmVrqvXd9jDHTvh1uQKnlIbc4ojm1at530c27CsNlujf7THH33iiUmfvWFguS7N//oSKALB4ztcke27nOifmXvj0FBoXCU5vjhuaWToYDAtPto4zhbXKtbKFN17Lsp7u93uyhBatjtkGFKBTZO0VN3SLUaWIJPMYYAVlngBgpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720091123; c=relaxed/simple;
	bh=nNMPcSTHgyZ2r9PhmTW8+Fzj5IFoHR8zWGQedNS0Jgo=;
	h=To:Subject:From:Message-Id:Date; b=ZM65RtTx0YjcP64ihzekc/Z07WNzPe81uZgdSzhl5rT7RxS0clY1rwnxOYxQwgASIuilqYLxvt7sQ3bhhaFoELNWleCe4GVxGWdG1+0f2j0rbYkYtBEJwUXACnkIunGWLLaVsCoAx060wVkTJ5TinFYzxW/LKLzC/j1CziTLL+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAoBt8u9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAoBt8u9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6215C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 11:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720091122;
	bh=nNMPcSTHgyZ2r9PhmTW8+Fzj5IFoHR8zWGQedNS0Jgo=;
	h=To:Subject:From:Date:From;
	b=UAoBt8u9+ptHpweCz4CnPeEFgh107MN/hW+v3nx/eu2Q3ZbG8IyRRN3F7r9y1mZud
	 AlM2kh/5D9nC8dXYCosIrSITOBdr/RaCKhkuLVMECGwzCjlTh+ldYuE5kE9lDe5RRh
	 CMcNvFMkl9Fod+FA73/Y2jJGh3WRKCFIZ+S82mTVAY2BJ05FywidSOWnv+a4fZLncI
	 r2s5y5apoYgNvfFmnat8qBHKwnAIjVau0LglzzWQuSL9lRRHqVwkViMxzbodZNEoB5
	 aT5P21FN1QUuj9pIhyW12DpLQdnF0pYCALcB71DpDuu0l1Wv+o8ThnfdKSeiZBx2kp
	 SvkmYI1baP6yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C52E2C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 11:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172009112277.19996.13875755462624626010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b51d3ededac60f561836bf6ceb07f626df087bc77b2c9425088d4daa5be95ae8
Date: Thu, 04 Jul 2024 11:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720091122
