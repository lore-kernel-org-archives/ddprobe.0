Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A63D30E0EB
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760681994; cv=none; b=F8d2yamQROoVZsdumiSU9HQnZIOItwO259TpZ1YOix0VP4PM5fM1nF23DcElZRsHbqQ8i86yCY7lLcKJlq9A6ORKUWHpV1eg7+bsZBY9xSynYO3CBzn19yzDH4qKPFS05SkblAZvFl0nEayvtAYSW0UNyJ7STwsXqplTPa5OEO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760681994; c=relaxed/simple;
	bh=EH1uOjmdeeajMaG+WC+8mZRNCumhfuKOHUlNYa2JfXM=;
	h=To:Subject:From:Message-Id:Date; b=I9ii6PvD43uK6Mq+KIEdU7pGA5lbGImmJsYwL3P+QIq4GllS2xhViu6qXSofyXb1fdjnYqj/hvgaz5qrpjst6HKslVoMgrbgCvuCjwWzxaxCojjvykbeuecVJkBdc1ecCwa0S4sUZ3a31COQtaymPV5DZhFS4DB7WDp9qIRYM4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYNUeVc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYNUeVc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C69C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760681993;
	bh=EH1uOjmdeeajMaG+WC+8mZRNCumhfuKOHUlNYa2JfXM=;
	h=To:Subject:From:Date:From;
	b=gYNUeVc3paSxTJ1f6QyNUnfPX/O0OTI1hiARvsHclezkM1DvKOmGivLS7UhNA7cej
	 rRbexcXzhsXRoNLg6t7mqMYZvu9xFXAhQCGEAEcfAjik0m/5CmcwlBhqam8VDi1j5P
	 Bw4KBCzyKbL90Qh+tvInL3mXwd1lsM20WoOyLZykn5Byg3mydegWt1h0KqLp3nCRuL
	 NzsHwy9HawIPp6ub5Ah08iUL3rByxbyEn5I2ZZIqC6Giw4OczPSxCxiWc5stJ3o8a3
	 hAQu0cXv16rhY666Ai/WhIRtfNXe2HrYduZRqOoSoGPKVMmeUTAJETKVbMda7xXAc0
	 v1uU2UBPuBXQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F35ACCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068199357.9714.9262641500835314004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a53109ad8fb1fdacb4e3319563d240a292a73135cbcea88a3d1c5ded9fd476
Date: Fri, 17 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760681993
