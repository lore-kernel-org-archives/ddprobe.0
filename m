Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9381E0DD8
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779618154; cv=none; b=u5+45394zP5m3st9RAqGAmMPZrrNaSfiUB+sEh02e/Al3sNh1B4gT7rKuhGx8mH90VrePmMabii2a+IlJHIBReSZVCEKuvsLpuvULddwjSBZbkq7nXmtf2zNfrKv2vmTepu0iOqPoXEFcsZqi9rFVUUZb0Ojy+4+cAFBiyGx6oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779618154; c=relaxed/simple;
	bh=RaI3SfKGiGmWLmUi+WyRQCWWYw8fTod5UdtFKM/E9Vk=;
	h=To:Subject:From:Message-Id:Date; b=kbnvS2LM9k6LxPBSz5JTGxJm9ZGPgUddfSd1c6oNmjCsPL8JRQI1rg2F7ugyiGyZLKzTl7frnA8uGMqHTg7U/xZn2AsF8u2JZ35hyt1tlPwKsYWSPoPgM9GJoMqIXgNAFv9/I5gQ2gQc69DcH9c5qCSION222fts0sOOEh/No7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbCNm6TE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbCNm6TE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12C7C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779618153;
	bh=RaI3SfKGiGmWLmUi+WyRQCWWYw8fTod5UdtFKM/E9Vk=;
	h=To:Subject:From:Date:From;
	b=cbCNm6TEhJPlqXCOSgfqRaYb16R+OqTM4mUESkwjva7bFYgMxzALguGbmlbsCUxyM
	 NdAULH6BMn5p/dYWTvlK9lCHZ5rCqIFFQEz62cO1fKDtHK3J4YVtNAeRCihzq9dPRe
	 fv3V8mPtkYdX+OTw0vNbZ6WWn1Ik2za4Q6mAW1IPqFiBk2chYeEWy26MTus1Pcgjpa
	 cO0uRoPn2zldes9h8S5BE/WnAy9GSFYfUYR37f7sCx5XNSacUiZn2tKdJvY6StT1Ae
	 Bquo/HuWNtZWBTVG2tlawwYGf0p1xydE7zPAan+qs6B45LN6XwQih9K13Vibj3iLxD
	 AGnjuySdkL4Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB49CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961815368.9010.8153492388245964982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff8cedfaad34df09df460170c843fc2683a0824d09d3cbcff54efe53c07ad5d
Date: Sun, 24 May 2026 10:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779618153
