Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B6613AF2
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771121094; cv=none; b=WLvvo1N2yR7viprm3LV5wdNV2pLxXMKB6nxnp/8ns2BOo9gpvxzrP8wOFChQRwlrdPTj+SqOyAaOoAsf6e6iRO0nXScnI8ahegUJ4N4KKGKBJSsDDPxfEp0gROx6uI7KwBrFhTHAZ3qrZIdfsxidygFxi8QspcUVsiOZ32HctWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771121094; c=relaxed/simple;
	bh=3SKaHMbQ+7q3/95KC05UoyVl8QGxRrOtgfsGbXVqCbQ=;
	h=To:Subject:From:Message-Id:Date; b=DMtGqsUivqkc3Nt4q0Nr8++Yl+ORff5K5M1aGray8fh4uPiJCwnOOM7/LV7/KFf/RWbKlxBFQ19aVpXXiCOWb10uiyfhzSNTi7Fy26zraF8ybUS5RApxt0B/e24v5U8N37kndaRW5GojGyPhmmRTyt4vaJ732dF2Opnm09jiS4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEKa76lz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEKa76lz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A953BC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771121093;
	bh=3SKaHMbQ+7q3/95KC05UoyVl8QGxRrOtgfsGbXVqCbQ=;
	h=To:Subject:From:Date:From;
	b=CEKa76lz+aui6oXDpItCZQ/q0sFgFUEhdhHL18BNs4rDAa2FQecmmXZvhBNVTec8O
	 8m9OH9Q5i9e8EnQxZXxmV43z9QImsjT1CLM6+tYedgP1X0rf9n8WSRIc5lXKUcJ5MS
	 lsyTGe4BNWnhXPorLTzQlApkf0fYGOuA+TDa+qqXbtMvNuhcounUGSE1VHxMkhwYtP
	 HHxIGkniMocw6C2Tmr6BuIwzFhE0jQw9k5qLB5HwwujLSAZlYsG43M1EmetEZQOymx
	 Ht1+LmPAQlaPcGv8lHD9uVc6FOej7y/fZrhKtdmsurjL5nTfCFgFQ3KpInGWy+rwON
	 uzD4xx8KMKGeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9623AEF585F
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112109360.18063.7710669428691058042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ae0ff318fbffbf79cbc3f3c3aafc2592f2826a794f52ee8b6b92f92c630b97
Date: Sun, 15 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771121093
