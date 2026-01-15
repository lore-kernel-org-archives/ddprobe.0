Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E9D3D76
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768436634; cv=none; b=eZ/T/VcQGMIK4hGJswM9Shqd9hF1KDmKy3Oyr4trpKxL0Ah0Z10wDr02l6uzH1IXYi8MzxuPjPR/geWblO0+mfzN1e5IFfygQzrRzbWrTvnJQilN73FH00KqmQVmv28vyE6kvc8t5gOK6et2LNgQXBvup5RId3qanydRJX6w1T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768436634; c=relaxed/simple;
	bh=7GTxaOYUkzcfwfj/jupMvJkf28r9egFoSdDz7ibsgz4=;
	h=To:Subject:From:Message-Id:Date; b=ppc+gEg6NavNNjo26jU+ZcnbLV5CjsQ5DcoJuoryJEFH2Niholj/0f6VDfGEuCsVb24sND9cfigwRNK1O/JYxs/v8IC/sw2rHaWk3Kf16Q0pXUkSAEbKxSVs1+sZ1a9aUa1q5xRqJs7ByUPVfJ7r2Dy7SOLouJETLSSUXl2IuNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNIoO1Ng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNIoO1Ng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4495C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768436633;
	bh=7GTxaOYUkzcfwfj/jupMvJkf28r9egFoSdDz7ibsgz4=;
	h=To:Subject:From:Date:From;
	b=pNIoO1Ng8nbr34MOJ780jVtAa7Tq9IDXzLHXZI890ItOQa3/hjKrF2TqzNVtkZXvi
	 Sh2XMSTS7idXLco+5ejutrFD33W2YRmfH5XOKj1ae0qIUYCwyyi6TZshby2jP1JHQz
	 tF6/mW2iRv/mYIjs29Gm3AFHDzxIV0drdqz75fJXJyitWbTnZwc38bqH5Wvyjy00sJ
	 SAFoGv7n1dWuCuk5RExek9zT/eqC0ratkzBKKP/N6CJJJnUy3KCP/IBJJVc8f/oLb9
	 d13fJv2BOsHFY/tDZFoMMcCrHtM4WcGqWT11DF+7+wy0WLGQeMM0Ii1gpc/qR9qAHL
	 Fi+sza4r3K4IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E6DD3CC8B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843663358.20615.2148120175255052255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a731d789c4a1bc1416f42d2f4bda02c410aea540f36c59fe204f87cdd447758
Date: Thu, 15 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768436633
