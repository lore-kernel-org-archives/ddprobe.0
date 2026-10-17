Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C21E346A10
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792222234; cv=none; b=f56wV3ZtstKk0kTQ2XPY4WLh6MKeFA9V3YEHq9Ws7p/hUWB311bGzXclzFGIeIr2BTg+QVAN+UqqU4kmD03nfhE+IWOD6eunbCkvEohZ5l2IH22an1sFP/rH4jRj5Igw3UBV65HLPU1M0IAMKHiZvrWZ+tLiIRutlA6O8FCva98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792222234; c=relaxed/simple;
	bh=0scH1jXrPtbzybchkROYu3pSIm9VHVcOVdS7EgwbjG4=;
	h=To:Subject:From:Message-Id:Date; b=f/PsAEqamBtopU6lf3/toSp3plSJ7aqlLJITSAU8uTAFXtlQkUy/V1VMF88sFWSrMHQ3tusam0zs8gqv4KyDmGqA4TEVbpMcqIgYPERWtLrPZnw3ZQgRhqCgMhASME8NsTzjWxiAehu+J003/GFp7akq6EMo1SgKBimitmjTyw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2PnC2t8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2PnC2t8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D579DC2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792222233;
	bh=0scH1jXrPtbzybchkROYu3pSIm9VHVcOVdS7EgwbjG4=;
	h=To:Subject:From:Date:From;
	b=c2PnC2t8U1i4DWMoe8IRWvU2J3MMga3/CaXXxA5MgEvRp+xWyxESxe6g9RppkWjDZ
	 R6nyFaKc0kuIaGtLV7xEELkqFTcU9d7CFPN4Vrt3wkV62kBpnuzEmaygbi3vNt0h5F
	 HJcRGmXot9TQJA5PrnJV6ubWyOjJt26F+T7L5NXzPE+TxiAr2F8bJJ9e0RIX7K3SlU
	 QJqw+Fi5LVVwM4U0YNr6V/6tTM/E0s5v5pjYqsCAdOI++4PA62S1BP0H8OhQqDShFP
	 4Odoi9myq25J+bHwVYcdtbmkIhqWD4YC1lFJ/psUEjohhLdQ+ZtQMNHg2NIX9p2XsF
	 fzGZmFKz8o3mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DC5CC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222223371.2537.16225336678189057334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb514c21efd62677bbacae76be17850969622f55fa6e3070c6887067b719526e
Date: Sat, 17 Oct 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792222233
