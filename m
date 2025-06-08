Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BCE70830
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749405594; cv=none; b=QqQ+MZka/NdVaSl3CQW3MsDZdv0icc6dPFSniH8F+8oolw3KPeRuEUFZZNqeWx0D38V3EBf4abbZxQ45UZwdkvHhKFcUY6k2oAzKIavdrXGLXHs0d5y9o1YHZ4At18BbjEewn2iadKf486rketQpclpMzOedsnlBzdKd3KbOpf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749405594; c=relaxed/simple;
	bh=48/XoQf9RrM9wXPD891mBNZXIuE/IDLLWWy1CHS+u5I=;
	h=To:Subject:From:Message-Id:Date; b=pHyhb+cRJZ2+a8gAAT8pqiPP8U35vH+pX62m+sZ1cGEP2w01AnbiL4CU7r0pMagBsmTpCm5GoHZ9hOyb+sZ6sJqayOmcjR/pG9oTDzHu3OHOXTYTNxPwi4yTQwiXO04JOSBBs0diEkqsk2LXzeQHsoiz7YjU9FCC1raDw64gy1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0peBOc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0peBOc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A022DC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749405593;
	bh=48/XoQf9RrM9wXPD891mBNZXIuE/IDLLWWy1CHS+u5I=;
	h=To:Subject:From:Date:From;
	b=d0peBOc6sD4PdAWdxu4TQy95QxmQFbeZUwu2yS5x/y3NUPOHUXS5L/Hyq0xiN1xgr
	 2a1rodUKxrZpxO3qYZpFaTFYB4u3bq2rK0ngzisFON0z8tF5XsCZ3U79kgxfQcdMVf
	 6l8MBaEh+ZLVEOCImEuJLRgIdzU/mkv/qX/DFGwsnIDl1pBmX2o4E7Z2uUZhxlWXcS
	 Do7dePsGAUjPrIGozBxF83ICNtxqZpucGzD5c4YPTk3xu783YFQQMxcM9Vafw/CmGs
	 ODcaBy5BluyUOvMbcD/PuXWGJISDG+4hMsT3y2oY3FiQ5caBO+KvbCm5g5VFEdjElE
	 Ecdm7YZ7Cx7CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB8FC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940559357.2712.2749628704490276891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f190fe103fbee6df565eebcc63d8fd9dd190338e727a06e94b0225a399149184
Date: Sun, 08 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749405593
