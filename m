Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD45334C1D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785042034; cv=none; b=QGXhBHB0Bl+2bEZ5B+cIgBgnAIDfKmCqurIdw+4JJ4VJtegoHbHXMrXbO5nU5FTKK9whjLgVmFPWmU7o5xKiYOIb4w//fD19vuQIczH9V+ZeeEpZC+GA6z3L48K0m6/duezQjk+b0JbZbheQJv6DEGszjnONTf9JunXtnEX9zm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785042034; c=relaxed/simple;
	bh=6pTkG2LsBkPXpCewgUewOhLJj50lMt6N+pzpHq4IiqQ=;
	h=To:Subject:From:Message-Id:Date; b=eb2tIvX9xHBlQY8GAIN7Q5vMqBMEEa5ODozlIXlElpg19WGK18WBkKhznQfEvSXIrFN1h4LonBpMHtFM2JR6F8C5XCH0UzXBbqhXAEyiZu8bR3qk+zPKEOWINRVtIaHvBFFdp4/fyBIZvHxjVgzEU4fjyIjuTiuBnde5yS5SFWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FodxoZJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FodxoZJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE728C2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785042033;
	bh=6pTkG2LsBkPXpCewgUewOhLJj50lMt6N+pzpHq4IiqQ=;
	h=To:Subject:From:Date:From;
	b=FodxoZJdSm9NpsdLEht+3w5bQ2zOS61cEykL28ctsUfLIURzocL/FER8EyGp7optw
	 OVKHjiYc/Dlq8k065L/zOQHcYEJE1mDPlpHT88gwXYPwDxA33GbLPeUqQ2kqt+dAkJ
	 S4kpnM54bst+OE8gKQx/Z75mNa319rE5u5wKTygEOFG2wkF7MOd4OzmXfkfY2ookP9
	 ji962bkc63AOnq8K7m3b+kX6Q6nlht7/Sw1g3bUpx3TxUgsKeYW70C9AOXPO1brweL
	 iUtilp7YX12qbCnRS5UcNFbd662d+l/C0Qhgr3pK0ZejaL9LuM9RIEHlGKfBBOHl/o
	 Cit8rS+lxuCbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD883C531FA
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504203368.2077.11143420936182530738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7164cb554fc24eaca943bbea8edfe5dcde3ee408e6e1155a83333df29c9b7443
Date: Sun, 26 Jul 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785042033
