Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252461F4263
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730152554; cv=none; b=ZnVXjdQadxlSqlLCrI1eqDgwHF/VQHHOZ6X949EgmgdjX/hs1KxGtUe2pXj9RfjMXRxcCeWjJiim6s/t7ER5KukQ4b4lrWRXKqTsC+0Rql12CiypxAgxFpcpUP1Jy3P8OtKPChyih1rDVoobb8s7ucX6elLZqxnyembeSkdlPMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730152554; c=relaxed/simple;
	bh=H6TmCavI55tpZQIrk3WWeErQky0Z4+ji36nW+4v2sao=;
	h=To:Subject:From:Message-Id:Date; b=Dgxy0dH9fu4+z8iymcLzHy1/idnGOCPgXmzYbqy5CZlMV5dGhHNwYzyfl+YxgRvTWA8c1mFqdPBZTk3VtJ9k5wI792VOBeQodJcjRrA+ox0PG3/xbnbY0+385abWjjqFQhc5l/tOjyk8l/XomHOns5E6uLXBw8geT73IszBUNGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6mxwv+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6mxwv+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA34BC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730152553;
	bh=H6TmCavI55tpZQIrk3WWeErQky0Z4+ji36nW+4v2sao=;
	h=To:Subject:From:Date:From;
	b=Q6mxwv+v5Hsds2UtKphBqLj4mjy8W5xKoDtr9PIn7St15TfDpIvuYSzd3QXNIQrHw
	 nSKxSNeqSa3u3QFYYsgTMk5G2fFOSkwCDsiBmxxZBj//3MGA//gmr6SEfX8N44MQaG
	 a0Aal9HsEMZCD+nMdM2ezobX18oX5pVm/McxXrrwpEaLHZ4xzGyB3IwgAFoiz8mxIF
	 0VtfLs6mKSOXfJqldWAfCwx/cw8QaJmJ7JmAbOzCIf5CLo3adMdnIqAMha+/yWtK6m
	 GQwXKPQKd5p/i9+8gAAK4p5TEcHVaAiu6RGAwjNrDp7f0RLIYKCnTLIE23nPTvKTVU
	 P2oOsUIPqHSgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99893D5B158
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173015255361.679.11746994705063608188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d9574fad5c41235363d12f27006ceaeabc857e8b11447922fc99c7bfb62e440
Date: Mon, 28 Oct 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730152553
