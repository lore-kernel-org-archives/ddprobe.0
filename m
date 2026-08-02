Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA7D21A683E
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785662434; cv=none; b=tTMabL8Y9n+TQFx+VQHGT92f9UxgVHxqe6R72x3tyS/4yT4nlVBYvtb6dCTGZfKfUiQSHeAQrhqhoeYI1MbcWinUWkvpnda3boOkRT3i4nXqtj8gItlNtKsDNGWN1y9y/KhNlfinWVE4cv6Gecd5I064IBarH/gjpjGojl1I04Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785662434; c=relaxed/simple;
	bh=fztdcoRQlEcIPqleWq+WLnhn3ZyWnnmurcAWz6QWIn8=;
	h=To:Subject:From:Message-Id:Date; b=TuXJfJN7KBjfXCO2usIVnSdjXGh7WrQ+pKBnqvGzH1lf2Zmkapw9VnyNqYI7uvJ05/PCTZ0Y78RjyMZ5DIXt/88JR8tqxexe2CQYLNewT1yMeZ0q12qxW1nSDfyJNkWT4teXizLouhsxcwXf2tXNjxdD7c1fMrvUVL2naqJQGbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4n8Bua4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4n8Bua4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA955C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785662433;
	bh=fztdcoRQlEcIPqleWq+WLnhn3ZyWnnmurcAWz6QWIn8=;
	h=To:Subject:From:Date:From;
	b=O4n8Bua4RlaBrOCW6RRKRc9yJKVtnYCQU+lyybRjkglUHpxVfknzafq7eUOEqriKQ
	 jewOUHi3sJW5V/shivfw6XmGXO48dM1x7kUdBMeviniFgBRTCRVtFLxkAzkiJTsg0D
	 NPNso5gpM1QEw9XAiJyML4S89yt8D2FELkZ3F4YxHuqxHC04IBUfgfPsW8mLv0W4K4
	 52CK2wc4QPez9Sey2kw4qzwe8jIIFsbF2poFFWEpbkXQH4ef9Zc1tp3pj79objrahZ
	 WKgiwrsnEdzJVdIDFano/aTRqapSDlTqhuk85OR1Bl67Afx7gwA//8Nx2sw3IKsMig
	 G6OKnyAP9RwfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A18C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566243368.3125.4321180987703007134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d778aba905402db780bcbadef55a102edc3d3baae37e34d781132d5f885ef1e9
Date: Sun, 02 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785662433
