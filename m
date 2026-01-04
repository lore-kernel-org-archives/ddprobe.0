Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA33748F
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767486234; cv=none; b=n2yMJ4ULg1fL46hv/btI5VYRuGRGdCzhGVxD4RawSt+TXQw/0ofqZ+crGZnbpt/z8aAUnxbQj9Fv+P2o4ZJLsKlDTCkeHTecPZZpcyUC2FYVvM37zQaRs4wyg/gF3/Tt+bFsQEYI/2NXNsOzb1AN+/Z2loK8cW5u/sfZQrPS8Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767486234; c=relaxed/simple;
	bh=s6HS8SG90dYN4e4br2pWPlQmBhKUcbCOk7JoEclTMmU=;
	h=To:Subject:From:Message-Id:Date; b=hAoW4mZigb3yzFCSXnjDMPpOH9jv9jDropxGUfb+FboBwZjT+QtmerYLW4vtrLkio+7tT7LDr09bCrtki+VTF9zYma1++AKqku2WLJyUgPFbZshutPAmhsz6mXmY/DytbvHgGTm3f6VoYjpM4CkMF5NQQTYBoJ4HKxHddFnLH3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjSzl4gs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjSzl4gs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A509FC113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767486233;
	bh=s6HS8SG90dYN4e4br2pWPlQmBhKUcbCOk7JoEclTMmU=;
	h=To:Subject:From:Date:From;
	b=rjSzl4gsvs/LJP7lgQZ0AGLfqsrIH8kivJJLEf3SR/LXbr83MfZQVRkDPA7TR8yIk
	 A90k7VL7ZlqmTcLA2XwJ0793fTeD7DLBQYesV8E0B7+g07262wddJ0lNhwFgoAorEg
	 d6uqsUlWlY00qLVLkQ++XKezMhwZXgRxevIaBW2kjla4jG9PeivEKXWwfDUTruxh5Z
	 5lr080h1lFHYYB6kQQT4/wqbUzUxTbgNM3tNybWU3+etPNPTk0YU4DXyzdJzi/KQ/3
	 FSkXcfcYPLMwTwBbVkMVsnV9ftInlgGFkjXkovoec8phxFcgk4yrbBmNbamfO5KvIb
	 Xguq+9cfsUjYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941AEC2A063
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748623357.10677.15913856253669791023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec52eaaca212e585a5f83300c68f9ca1caca1eff538d00d92a6898927d52bb3
Date: Sun, 04 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767486233
