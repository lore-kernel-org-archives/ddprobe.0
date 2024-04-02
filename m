Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4615F873
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712054897; cv=none; b=gpciHTSLqWBLAaeL+jxAq6JpnjLnlwQQQ8uiDAClGbUkD4BKccOgoBgDlrBg1P33YF6qpE43A8XxYiWK3A/lKjg/0F86nrL4cZnwNiuJ4+1LiTtpvhOH1LbX++urLfOyKBvRiUAsuLLj2vMdJaPzrtFnedUk8YOcYGbPLk8OQuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712054897; c=relaxed/simple;
	bh=BCETVk2q/F+G/5ebGZBriFxfmtjATB7srxAKJHSZR8I=;
	h=To:Subject:From:Message-Id:Date; b=cfLa6nVlZjoptZQE5RAgcyoL1wMXzid25qQ9ALCQIyFqSq958mAPAVAYVPlHlsGNOCJliy+ClOL8SE96ISM1jN43IpH7sGnbQpY9ytxnqW+jeQPjnpKH0I7gb8ifSBOEoAOik8HZa4BIfDTm27tP4SA1TqW7JqcuWWtNoerlzZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvEVEe26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvEVEe26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E26CC433F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712054896;
	bh=BCETVk2q/F+G/5ebGZBriFxfmtjATB7srxAKJHSZR8I=;
	h=To:Subject:From:Date:From;
	b=pvEVEe26NFynnb9uPMGrvZvEv7K58FTb16VK0PKh78BNcLAZymYJx7CRNHGG5Cz9F
	 K9Pc01p6r4IMMn+a6s7GAT1442o/I4yByU8rvA1RGDfQmtZARFU+laVWIfZugEthJz
	 +VBXNT8Hq5rjdEJIcVtCrOd1qORs4TMvoxyeO24GzS4QB77vRe2pxqPVG1gp55jch/
	 fjIUkpnXmxm1A3wLK49u0/VrcB8MH94BqTdVLDX/k5y6FE4MowTKLRJtJ7EkfYTEww
	 mLLpZllX4qNH6xPJgW72W3sB4kS17kEWEn2nod/+uWNiV//dP7Y0MV8xSKophoSdvD
	 9rGCB+a8z/L+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69133CD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171205489641.5669.14655670119998004988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f959be5e6a9ea51c7a0a4c644fb96dcb8bb32c95a9ee93bac2ef8e018fe228
Date: Tue, 02 Apr 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712054896
