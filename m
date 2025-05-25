Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7D27260F
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748213994; cv=none; b=pqVnrDVbOdNbtRO5IcKQjk3fj8z9G9JqInleEb4C5LzMaIJFhmbVOn2RAkU8B4UzOOIVNLzTLYv07bybZryTg2D/CmpoXpS0szhrVi3Bl4triqLvMzJA+nFRqpsOOlS6yrfGT070YnKxyn9HaQUMk31eQC96NOgbqI2Qm0TvQaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748213994; c=relaxed/simple;
	bh=O6KcC2HRvSpCSSKEUEsu7yVGO/CM+5bmQRpceThreTU=;
	h=To:Subject:From:Message-Id:Date; b=QQ3LCCEud8nFXWI9xgV7rlHZj7/eVSrrld4nji618aDn5iVeZxlXPb8/WQx9PrUoCS1184q7iD2gsXLwryOvXXIH6kR11cfEf11O1CqYwN2dl0MXTav5GzEWTMfy5kCX5m6sZKdfj0Qw1l/Dr9ORSf0p4jjmYXye8BUsehPNN/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOEnib90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOEnib90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB283C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748213993;
	bh=O6KcC2HRvSpCSSKEUEsu7yVGO/CM+5bmQRpceThreTU=;
	h=To:Subject:From:Date:From;
	b=VOEnib90auJo1y8CX7i87V2HfmS88GbnZ3Q9sW+QJs7TD2JFP6y0KOGqTiEW1J8fH
	 peHiouLRlH/YGgW0lnmT4r4nmBhYwBO1Vmgy6sRLIhs6dR52rID7wWxYvpbLTr2PnT
	 0E1ZJCBG3ebVfopbIuvbqoX+Ef+ShsphMllPSaQQNMil7JiqmSkqb7lXZSRkwFeSDL
	 FX0FoC4ATG6c/V6LjDw68XeF9775hKPeVMxBpwJIUUAIbVRrLI8wEHwJiMkjwzV8FB
	 /8Q7wDDL4amngzhvai+9DUYoemQtazZvvCwS6fxiFb0LFsENf/KvNY8Xax8nxJMjfU
	 i4xrN1NblNOSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982BFC54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821399359.28957.16169292710470361853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a059a9de94c7fe8bf67ffca0ca14e4bb204188404733a0cf2ae18783c82900d
Date: Sun, 25 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748213993
