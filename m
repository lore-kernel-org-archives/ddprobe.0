Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2633A1E0DCB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766987634; cv=none; b=RoJN4QUnHa1j5w9+Dw7w2o9F3om84ssMcMcV6ltn8CgJdWM9Rb5i/rchTf0ww9aI8z7bN2Qa3G9BPUMXWlpGXV6fHTF40b+D7b5/o3dSbwRVI9QTpDEgWugpRtJwW344rmnVLW480hp5zsSwM+LPd9RjwEgAEpH2C19+ay8Llko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766987634; c=relaxed/simple;
	bh=3xHbRO/Lw99xX2i6jWwYzlQgl8ysdD9Tnk2ZCfdc0ks=;
	h=To:Subject:From:Message-Id:Date; b=EhsIVm/pnAx19mCfgi/LYBnq47GtgUMLUSSr1b9GmPnegE+ci6HtODtMuu1SzxKsYTa4lJa6WcLIOyTaaUIwpD80LlV1eIN5QJmzCdpCxsJPHfxvc964yZ2wy4H+2MULHx5Trtapgsoc/awBwESyRSir1kGkoSlQEpjM/IVWt3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSbVWkwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSbVWkwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5957C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766987633;
	bh=3xHbRO/Lw99xX2i6jWwYzlQgl8ysdD9Tnk2ZCfdc0ks=;
	h=To:Subject:From:Date:From;
	b=fSbVWkwq/HCNuwAx/NCKbR7PFz3ZR9HBUld3JxJkO8N3I7sqA1AoGUrtAO32T0Wok
	 SBf+E4Bjc3qFVa9QZWJWIfmNyPSNCE6Z183+REpXs6T7iRUvsdwSAxVJmsvXRllSk1
	 9yH8PbO+TzRq9HGk9tr3S++XYJZ/6C8rMURc5XWURSWBRjhgApYoJMqin9i3dkGHhH
	 3MIVXvfybGuWUY8oeyVJ4tZiG1fjB8PyBk/wOuriBI8bWsAhY0G1UXolRq1aexW365
	 KPBSYSawKQ4zq1g5lr5dyyRkz9i2JvaEIkIAXIQlxeb3sSsGuunWcbVi9qftxwcUFT
	 dvA4/s2R6Y2mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93441D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698763359.32285.17682621664867108812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbcc2279e55e35122ce7a946520f6a83ec83322a1e6b8724e9c4f1f3f50dd635
Date: Mon, 29 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766987633
