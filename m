Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7EC530BF4F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778282853; cv=none; b=VdNuHU9Uk4B0eWj8WQORFtc4fkbvCTadktIw68RBaslm5BxPmaxul/r4YqAtHGHFOAPxBmbcKKiNUacIad+qjlQQCKrE6kzh0oBJsgPTIFMw9js36TjW8UrhFhYJ4nzCKNGcBbaYMiCx76g9fKimcKA4ZljOowVrujAR111KM+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778282853; c=relaxed/simple;
	bh=ZRa+FBwaj5lDq2ja/xczDJM3sfE++lKrQ6+qqQ5Lung=;
	h=To:Subject:From:Message-Id:Date; b=Yl02kvRTi3GT0HuQprH+IdQLRP/I5uXg6XMqfznuDTm40/OFHxW+rlR+K1Y8kJQspoVrYy98mgyag2SYJPSxLV7ZHMlRdU5FGm1rkXeB1t2ItuMOTEGRb1tzhDAuCwiIIt6/jyld41KsMPYGFBz/OHuoJ2XdTYeHbTCttrbuVao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhBgm/g6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhBgm/g6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B984AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778282853;
	bh=ZRa+FBwaj5lDq2ja/xczDJM3sfE++lKrQ6+qqQ5Lung=;
	h=To:Subject:From:Date:From;
	b=RhBgm/g6qjBxWiw4VS6UDT5osvCo9gkQLFYM6efNDhosdQRpKTvEEL2C0cNqrVaJp
	 2cizcygSQK1JjYHNfuYYHeRCVdzttWIfCRFdL97SeuHB9o/Lnr8Zstzg4InGNR0Mbr
	 3JlFvVXObQbjzwpvIm1x8G1g7pBKsV9KuPcB094Z1YhuYgtNZOfOHGTKGcaaGNwi+W
	 TnE/hgXERghEWnurLRIuIHzVgSmcGDPK3YfRZYOgG5ZFsAMQrlbp1XhHLxzYzzXtd6
	 NpK7+ww4FwYuLQzP/DUsEkWjW601BszQhghwr4UEeUO2PSDnOnD7ie+fcrz5C4a3ay
	 +OyAd8+ajkhSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5BACD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828285368.15469.12181169991532054907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32936a79b1613fcc79db1ab794d2ecaad987dd6574561aaa876ed72ccc645736
Date: Fri, 08 May 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778282853
