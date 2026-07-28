Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6103E49C6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785274234; cv=none; b=CCBx0RjJKlG+pHawyH1yrTiRRsM2UHdzB6XpmThbzjefCnyIvykt51UVDBeM6bTCsPz1nIH74CnJW/rDoY0e8ZJjBpthBK59WQxYVwk8/tmutDTMSG7uSezQcj3GYHNwKbmZmtaIk2bQmfNNXDAcb2H15tY5ngDoNGeFnex0hyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785274234; c=relaxed/simple;
	bh=dPJ3eBOq6vGp66gy/6zRvgC+hDDx5nlErwb1pNA3lwI=;
	h=To:Subject:From:Message-Id:Date; b=bZ0sDxxxWixtqTEJg0GCN150CjuI20huMj0qn2mEWkDOGT53jBopKJeprWbgrA/kyKsGs3+UzfBYfR7pgfUxDJwT7+XR6f6X54cUIkMjwRtKKU4UkX8cQ0wcul7DRUiBlQQSXRE8jbTT16qhCH05ljdvp3R1Py/+rXFU7KPfHno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRQ2GKZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRQ2GKZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF689C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785274233;
	bh=dPJ3eBOq6vGp66gy/6zRvgC+hDDx5nlErwb1pNA3lwI=;
	h=To:Subject:From:Date:From;
	b=qRQ2GKZNQePEozrcp7WDkTbVqNPV715D0iA6GWemRpRl4Kml9a59sKeEiPR/gzhSG
	 k1wVqgn4uFyMx1Bq7bFrdS9ZkMGhSyBfO7DKRgSaH0Zs64vjfTzYZ2Hn6pBZsA2Bht
	 3vdGSs4lJg+PnbqD1wALGZOONF6g9ljJxTKY4Y2wY6OLjSGpG3M4x9jHKT/yfNhLWB
	 cbomvqB780hJ4Mu1fQAQG9ElsRtPqo3nN1PdtB3respoze/cS2e6DSzIZDVKaEIuG2
	 QDOG3w6tsd8g+4dQla8OTjeIyEaZj0Ns9iBU63BeZ3Uq150XEE3oHPtR4+nsHVv+lz
	 xREO0zxmw8Jxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA14FC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527423368.3259.6965284980359946832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205dca3c40cf443298b1060f51f6b51d2f7ddebfeae9f236917a78b6ef97e3d8
Date: Tue, 28 Jul 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785274233
