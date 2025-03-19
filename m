Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE4720DD7D
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742411394; cv=none; b=F1HTY+xc1JlT6F7WiQh8nQ3CT5n8vgv/nRBxN0Ze/d3i1xR8XHwRFAzKIe0rSYRvala6Bhsc1mIJ3aMxxgI2hIuVJqIYj1UZN6nJ4w/8SXo5cT/8WikqnqhRxq662XDULsrdjoR9PXgoeD7LQ5s5mP3eKktsUjIIg2dv9u/bFws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742411394; c=relaxed/simple;
	bh=x/g6lQ/atfwKitZCcHUHWhAKzz/94/kgQZ++Qi2BkJQ=;
	h=To:Subject:From:Message-Id:Date; b=qPOuoV28lHKLfnAUuZJWzxOPjOSh+R1KorMb0qW2YuGoPs9YnGUrw9an4DnP1KivTI2iw2FA5K4j5WXKMTJDpbLc9vUofnKp9qhZDf2PNDHuZ74qUvEaDJqjRsXxlXwxPVo9Qa/TwR6OmJBqWs2ou7pN3mc3/jJw2bmnbuEV3a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZnAJhze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZnAJhze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F5BC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742411393;
	bh=x/g6lQ/atfwKitZCcHUHWhAKzz/94/kgQZ++Qi2BkJQ=;
	h=To:Subject:From:Date:From;
	b=OZnAJhzetl5lwRXzR75WpfR+GRbIjYtIb7vrQsGNm8hySTt04yzWHdLigX8bNHik2
	 /lyrVd0MCMECM1S4ADYP1D4Ju4vt66KF6IGCNFAZFYfmfCqTBEHdyu4+rdSWPdset2
	 Im2RR13TlSeJuPOd54v1CbpvLwEdMVmJkFM6IWXhMWwrr06pxMXpMRt+q0F7W4abQ2
	 4LYmCnYrTtRdj2e46SiYPXtM8nCB4rCWCmG0w9MyoSW3nrGXtUG6bTr44HWzmsgnDt
	 fTTOVloivcwZBRqJZ0jzG15qlwv7uGSqiosLvuzAWhxK0E5iFhd4nec6axcKUUbNaN
	 D6Gh9XWz1MoAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91653C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174241139358.4786.15037008950624737320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c35d92129ddc74160c2c9caae43ebb464695e179862f3514eed1fc9ecb5bcf46
Date: Wed, 19 Mar 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742411393
