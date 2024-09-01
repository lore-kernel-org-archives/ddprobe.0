Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AAE16F271
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725197153; cv=none; b=Eapb+7pM9fK3Cwaky4EUl8r4cFM0fkYqocKQHVAf1ziW3ouGzgpddLRZbV/lVwpfdgRQLKTnnMLfreDgy7hSET6jR+hm16+L4i+NfD6DwEMvvJlxvJJKvNuGx3de5Hl6/tgdn/CrSTW21MrVgzL8XFGWBn5L8kWD8liOH/+T1js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725197153; c=relaxed/simple;
	bh=qGB6mTSAl46jWzlLGhD46uB90NpPeaP1ZG7SuQjlTFc=;
	h=To:Subject:From:Message-Id:Date; b=arqr4qHKQ3wXTOO/0qs1oM22RFPzpkoEBNNXMwoiPjIXaldUiV+PmfYeLh4ysmXP7p1UH+wWpJYP7ErKC7FVu81ZJCtWSeCmepvP024tPPxywb6cpqGMPkb0cOJCZscw7w7j/6FbeqzYR8vPkDU5TdNci74UhHDIQp5ZfwRfh50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeve3AKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeve3AKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EF6C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725197153;
	bh=qGB6mTSAl46jWzlLGhD46uB90NpPeaP1ZG7SuQjlTFc=;
	h=To:Subject:From:Date:From;
	b=eeve3AKtR9/OdqtyM3uGspcOEYBsuwgo4vZUs48z0CR8mcghmH4P9ZkNLbitZ2s1l
	 tJH6s+wdirhrbSKBo8DqgyE/KsydhmOQGe4nkVfgi/y0S7Qlc/tyk4bs0ykKkVIv6k
	 RApCEQw3/3poHh9f0lGIc9d6KPFnWscnS50u7mJwJYT72y13xnQRAmKr0+x9S3MTfe
	 q4Fng+TxGFcgRHWTZgPOQUyWIPTC2bBsWR16PBgSrB8+UBvDGCr+TedzX4vYcvDH7A
	 lM0PaDboaF/YcjY8nCygmHewACjcAkUTuHQVTLeTIXuZCLUdhpxyH8Bh6869ISNIxZ
	 VTvBHSYaqeACw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E00C54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172519715358.19030.7909705116420348602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4890905418351a5207fdebcb7abe235255fc55c481c44d2ec632c1a1d3f8c5
Date: Sun, 01 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725197153
