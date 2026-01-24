Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286ED3EBF0C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769270634; cv=none; b=N7yZsBRoEKeqK4xHZ781eo6/ydOfTjxuTKTIyuLvMnM0Zhkr+uFaFK9h7s8G2d5rtliEhSwMDH3B1AmcNSgFe74vU4GhzHvjwvwRnbTlmw+r9KuhTnkcJzM5/ksJdCyQoW8g1BpFf6YR8pePuI6M+B1r2hpKEV5JwGCizq9+Dzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769270634; c=relaxed/simple;
	bh=JbR60eOSvUJ46vmOfCRmS4vTAS+rEoh7AR4Hteug7J0=;
	h=To:Subject:From:Message-Id:Date; b=rnTDfV6s5uqRLY1z0kngajfIRKbIzcfE83vQaJgUK5HthOmZLctgAMV3tKc2Bq6gHczk9CDRZCPxGdFHgiRroMqCWecv1ga5Oy/YmLzXMENbKB1EWSD7cihx08dfstKZhcJHKtS7Y1SZAyRoGTca34dJOWGJNOIGo+/AJC19b4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nalBesHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nalBesHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8888C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769270633;
	bh=JbR60eOSvUJ46vmOfCRmS4vTAS+rEoh7AR4Hteug7J0=;
	h=To:Subject:From:Date:From;
	b=nalBesHzgeYnp0H2lY/ukw4hw/lyuaskklj10C6X411+TxPXjD6JXgBmDwrsOHgl9
	 Qj0xHPuhf+ygdk1aYzBuaRTIIb3xkvCYBF4lUNKkaI6b9h34zspRelbAh1hl24UmOR
	 xkSQkC9wE6hTXJgro5F7tTc0iIbxedbxygMSgq5KQfsIucS6E4bXVK+jCaWX5Q7gbk
	 8qelYqqs+iS/ipP+u9oTI3xEnqxKwSjftJZX2RRJ2VqfoWwxn6IprfR3bqKTkXwKHc
	 eZefwNc0oUfxMivHcVHnXEoTnOTBbywOV+/NVAo7U/j0+/TKbmhsKTBSLCvDps/wEL
	 lzbn57td5uueQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962F6D715EE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927063358.21185.3236512477426056530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e4bf94204ab3b72a54b15791b2ffa6639a5e1163408e88dbfae9e977c57f9b
Date: Sat, 24 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769270633
