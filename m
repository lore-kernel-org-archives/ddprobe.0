Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323D3273FD
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754034594; cv=none; b=m2dd4hwNK0a7ZY5mIiMQmG8Nhq64mswa+1HOgGFSilL+wYLXTV76mXRklorMR7bWMolhhXcgmx8vMtElSbcZJYOns5PZgaeA8+ucQIJaCGbeZIweVW8Xp28Arlehvsunp3xGqjyHGaXB8+p+yK6BPalHU5S0mOhpJ4VCij1/jh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754034594; c=relaxed/simple;
	bh=CQVtiw2ITcDaG18YuRGHJkxqEncv5xAolQwiR6flqaI=;
	h=To:Subject:From:Message-Id:Date; b=jOC7709Y40ALfisTRbrIxskzV0Xgst32OnWI2d2XGGTxiZZ54Thv6JlAjOPYvodJ9h/BxTH5EjDxwcp35B8prSb9iz8Zz75GEC+h5ZJ1GRvzK8ajC8uodTOzwli+eTESRJKzJnCPusZUcnSEPrwHX7Sd18Db9ZwqeFg3uO31P6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9jz6GoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9jz6GoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB89C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754034593;
	bh=CQVtiw2ITcDaG18YuRGHJkxqEncv5xAolQwiR6flqaI=;
	h=To:Subject:From:Date:From;
	b=a9jz6GoINQu5SWpZysEaJfwJiYWFpCdElembJZ+OHOr/LAeOr7O5T3LdTKq0pqxpg
	 2iCAvYWs1WxY8dCyULZ88XjOQfgizKxIauz4rPvZpQIXNmbKl/YAYRGhYQwjc2DJZ+
	 hbuOtZBmbKPwRd7jvxyvLaK2kQ+jgMjlEY38ntWMtNrNwyjUFpp4Ei56fzHKzGT4cx
	 fPUAUvW5rEULbWnMBbq/GXbkJYpFwuUrBhgogGzGdMfjNJXoIXH03yCHHaw87KIhrT
	 rLAzno6pbFGIdzfUENXbx/B78LP2QFMhX6sYsFWY91C17juXYbtbFQCsfXhRHzQL2F
	 5UlNpG+TLn1MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971D2C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403459360.23561.17223388116506790336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3daa09a65851b2e11b800327048ba7835e997f3cf55ec8adff68d8132ddc0a83
Date: Fri, 01 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754034593
