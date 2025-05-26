Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3344A20E03C
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748288394; cv=none; b=hQbtcHKAzWpKd0IBWzYBKwsI9ao6OU9V/LBuiocIX/BB8MjibQ5gjt1Xl7fYPusCg6BukRv8tSqbiP279WLlvJwCqoNNm0QaHRUtYSxxRYOWykOgwFCYuIhnpvreAubZZjAgrI0KEBxO+XBBOczRg3S3J+gtr0ynZlMO3xilkVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748288394; c=relaxed/simple;
	bh=Y4XlhZb+FKb0XRPFNfRzh4GTUjmVKsLnOFuvfpN/FP4=;
	h=To:Subject:From:Message-Id:Date; b=Y2tsUFQcljWCduxDGZd74RcTElahm3z/72ILWYAawB9xZPRhvP4xG3fNO8EQkmdATx52ggN3ajs0xCVB04hzBUuzjw81GibRLQEHCJXEt+HAStWtrVXTk14iB+7i1QuSb06Ujz27yJyXbT08RrTN16GnWeFjCNiUtk/DCdrGkf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swX1qHZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swX1qHZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0938C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748288393;
	bh=Y4XlhZb+FKb0XRPFNfRzh4GTUjmVKsLnOFuvfpN/FP4=;
	h=To:Subject:From:Date:From;
	b=swX1qHZReSp895qx36Dk1NOXl2A6D48xIkESTyvNJux//IRx/QaanCXOW9zrrnDFn
	 7ba0A/FYLcBQ3fvN4bOI1X3KXtIGFYvpbCOSCPnP6on5a4yQ4q4Su9UMfVgdt28+Vy
	 y9rXLWKPea4nDgopIIlbvy3TrmM0fCrMx3hLrw3MqHsY6zZJwfOFrGkDf8p/hrt5u7
	 6XfUQxod+TNuSNqp4Wu1JfFTQoh0AD57cxUczDd5jBWqOFUgjvy5lhD5+c1VNK5ChC
	 /n88xtjRUC6brCtvA8qr4EWhyQK2Lmyk6qGhvTmpNVA4VMWHGrqk3XvG71QJht3RnM
	 U7A7bkttTX/EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11AC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828839357.31186.6249870853945343452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed11c15b2f96ebf8c9463d83341ca02e4390937177e473f60b635eb6722570c
Date: Mon, 26 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748288393
