Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A97C175D53
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758482994; cv=none; b=I0m4+vDbEEX6aLFqHAVwJnR/10hf6Mg7C31AdKvJa6c20D0LqOcmNvZPmMgKeTY5NoC7e1pDpLMwKDBAWHIqRD5dkuDJwqC3yxSX6mcEaZ2PWifloTwM799/SyLdKCzoFtmbVWoo0KUQUaibfZLqtVcFGjkvtfWZcSWNhak5aVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758482994; c=relaxed/simple;
	bh=ND4c44AUpyrOUf+mVZ8WgHQp5mKVmuPucxA0bAOwtXQ=;
	h=To:Subject:From:Message-Id:Date; b=rDi2k8c7lKF1/7ecLSmkl6txKWPKrY/+R3zRS6OQKY9qWnTFDDjSwdpUgP5kIUwXgnObjmbY008cxbPk+Utw0O7EGh0V60RlY8LumOZtSmgEALBTwid/J/FU4xUKo1eNy2md31p1+W6q6Amv2LV3zpVEpQVBbsjpSKeilk9UO1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uM03FlOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uM03FlOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F07CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758482993;
	bh=ND4c44AUpyrOUf+mVZ8WgHQp5mKVmuPucxA0bAOwtXQ=;
	h=To:Subject:From:Date:From;
	b=uM03FlOGTCt4m8YQQ8Ci1A1CEsyGXP/55scLxnfaDkp1seViawAHzFajkuyB8DUBG
	 2wR3fy5+JNneV96Vy43w8ApQjcMmUiDZGwLiZhdrxj3SK+mUCtGg6dS0IFc4HxXaBZ
	 m7o56CFD+HDZWsT6GrejO/MGC7QcnYN4QMDliV6aYe9FVYHmFh856iQqLqzsdWiSL7
	 PjHqmqxiaTzz66lZudhPBnT5vOeRlr2Xrzh0WekBvFMjUme4rg0vNTWfMp0j4ZSrSa
	 hW2CcVIIgr1q1CdWkPDmgCRcomFI/XcwCqmnuC0Lhh/v1cuQPE/9RWt/jhrbsqIV8R
	 6mO096kjl297Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F66BCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848299357.23653.5811436080844784159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7aa824d7c1a5749fa29f7edfc6590e4aa209deee34eb950001baad0dcf9afe3
Date: Sun, 21 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758482993
