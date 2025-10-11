Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3101142056
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760213994; cv=none; b=kef6ziwHfO2UVff4+MRFy7E7PC+YvRhwK2SYMMXorykXrIPNFN1/AJuh2okHuyrcBkFAgIoCNDFTJ421dbhf5FR7vR2MFVzKzAIHrBr/aHDXguPcIAqievo7WoDT1Y/wBJdjB1Qmb4f+XqHN1PzYBNMt4vDfqgGxqfOzZSx97bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760213994; c=relaxed/simple;
	bh=yMKKlDfsN6oJl4e2QO0RKZMdlQOU/X5g1WYprjR57iA=;
	h=To:Subject:From:Message-Id:Date; b=lkUhIuDc9M2vTVi9wnZhdGLs+P2lArUlURHNzLO9C3wyMkqpAF1AQIH091p0KOa3/ZvVCZzWvFBJno5T5RE2t8E81vTVq+s9MXjPSLbmh8K2gKG0FTxIl2fM1uWEVsTDQQNME6/cea45pUqr1yXyVxmm7xcgASdX3H5tvS9+W7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WR6a7sY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WR6a7sY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A9C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760213993;
	bh=yMKKlDfsN6oJl4e2QO0RKZMdlQOU/X5g1WYprjR57iA=;
	h=To:Subject:From:Date:From;
	b=WR6a7sY8W3d7KzxYYioTlndkToWHxScLVF3ECQa7fVE/U+lShH3mg4ox9PUNRjcj9
	 aDJaCwwTabyQ46GBXxKr9QTvDNuGR8pDSJ7Sd4ke5hkqDi9GjnyF7VZBi7Gbi9HMIB
	 1qDzKqcaFxh+dn+NU5Ys2u3TLCDTCI9JB2NNrlSMucyVnMPsV6CEJ0+GNB2gIXUqfb
	 Sv0AqdAkrF/oA8UEwCGZK9PrmMHNRxMZC64vWbL3GzfXb5VTeBCmqsLxKpZzIWkFMW
	 fycJ7RNyCJpHRCh0Zt9wNxDK0Pf0OdVcs9ziyoRcsPfBjtIzt2BL/wvzx+T6XKZoxQ
	 W408BkWru8reQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92089CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021399357.20732.11357919252571274154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31914c1c8c055d8322f15dcec42ff13d1e090677235099145d5ac40a6f5087d9
Date: Sat, 11 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760213993
