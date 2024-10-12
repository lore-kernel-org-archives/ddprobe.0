Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33027946C
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728731154; cv=none; b=FAEe00EVduuh+tusZfORuYlsLLH54g7j8tzRVW2bZmQ4OQtJgPdhSsisEcTpBGi5nIKNoA7mmHRVJFUuR694lXU+94JCWZjHR2cou0wcVwS9Pe554927y5Tn1qk2r7q63j8hl4PTtw9+5h9BtmISoTVZfA/nnhaQ6IVfPCdHrMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728731154; c=relaxed/simple;
	bh=XzRKbeX/RnnDcY7QhMFJ997iA84gW7kUxRrmTmxUy9o=;
	h=To:Subject:From:Message-Id:Date; b=sRUwZIpCDKXjJwyJ2aF7uRGmiN5eObdag5jD4qTrzcXFoGMZ/+jiFRNFL1q776TnIp1DtcZWvUbPdmW4CiHMXOicPQeokeOoegvj6kDlE5vvnngdV5axT99D1/vuZiuWr+B0WTQMpwz7SugcI4FS7MI7dbZMNt9Hl3wKfR7orJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxl+CtUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxl+CtUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A09C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728731153;
	bh=XzRKbeX/RnnDcY7QhMFJ997iA84gW7kUxRrmTmxUy9o=;
	h=To:Subject:From:Date:From;
	b=pxl+CtUtrvYWpQUdnZDlAvWpxI46A+YOTs0jxMY6EQ/mMQz6CWINHRRvi7A8MfUFw
	 ZiCFErdwE5FZM1rztGrHaqoARgPvY1mPq2y5wPDDzv5byzgd+StNUUwmag+VWSQfEK
	 Sis2xanCzetkabkyoSdHC4GEAsFpi4PKswyKOxZpSyoMk1zfT9qPhAuC8A1yV04CRV
	 cwxGV//VJUvi+FOSMWWohXMqY7wGHvhbPHfDNeakTMitK9T0JYv5BgcojC07iBhhyV
	 LaPWGiLckFoOdVqWegkA6ALng30h9GGBbTmF7W2QPAbO3fd7YSUJh1xBIJrRtqfia+
	 Lpjt2QyxczWLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F88BCF2564
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172873115364.18906.4020311374564725669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7217114081606365b473365f28638a44177888ae50cc4e26861e076bac0009f0
Date: Sat, 12 Oct 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728731153
