Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA9023AD
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754021394; cv=none; b=kRW0Lkh36RUtpE5G1xdzBwlvq9xD3eifyzCYUqJwfaW515uyVM5zRLsu+vMRbo0fGebHgKKUPY8JampC9zPuIfMfzyh2z/zcQkQTi1wUBci99AE/jd+8u5lievsKBRkE1hjE8upi3KQkZmbOkMdq0eEjyANvYYS1NoQ4iaeU9dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754021394; c=relaxed/simple;
	bh=dcbP+im4J1rL1F3G2QB6cMFg9nwIDKd9dGxeVj8S/8g=;
	h=To:Subject:From:Message-Id:Date; b=RukcJkHy7vWogcGAGEKLc1/WqdvB/zDodTwWDFBi/XRK6K5CcPgge1z6dB4LKX+64GvsJSYBJP13Qn7qJCLWM4EOqrqJ0p3hZIZxldBkHR95xWeD0mfsLM9/WO6OYuls7rLXnOcDiD0Fx1oN72WDKrwTksH1fXMiX8WeKOyboFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYGF3Zm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYGF3Zm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66C0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754021393;
	bh=dcbP+im4J1rL1F3G2QB6cMFg9nwIDKd9dGxeVj8S/8g=;
	h=To:Subject:From:Date:From;
	b=MYGF3Zm5sXm7WHnwqRyUj2AmIj9BErynAIBNihJrli6PHx+axo55fbIbcqBrnqQSO
	 ZVUCZCHC24crdvnkjvaSkPURSroQLXuhxgEkFwC3Hckfx/8YM8Z/aje0gZD8HciVDC
	 x1bdrMVtWoboUINf68l747slY4ER8ssJ0JzH6nBFbYlDJIpeHmGwUiqaYAKePExsDs
	 yzEoG74dhF2kghKq/yLrV9GBbjRBg07g5HbRa+HOtoVb+qWhBVnndVsBkyjXEdtsuj
	 K9vtHl+SZtu67rn+kbj1ciQYcMlyeUgpMPnDg9ATs+qyB1gOZ3nWNzur5MgBg32W8k
	 iuYT19Q5fxSbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94442C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402139357.761.13896865837603519532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc288218860b4f82c5290eef33509714226139a489afc0e005daf4c5013aa5b
Date: Fri, 01 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754021393
