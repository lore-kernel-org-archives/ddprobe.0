Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CCA1EF37B
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741542534; cv=none; b=UfXqBeNzaWjSoX/Li7iOK6r03Ar9QAi9jFro9OpyA4d9xKeKxr/Ffxo99GndwwQHR+B24IeBv05s5Br5FAaTDxJU4S+Aq/MZLbnHL0+lrFdo+37XhLGt400DqXrUJhD7w5GOrvaL0A6u2JOjGpcMC8hf0RsRDQVIg+aAfrPFh0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741542534; c=relaxed/simple;
	bh=GB96Z780Et2ypQrNlNHIlSUu3qYEqs9iZEGbT1LIrfk=;
	h=To:Subject:From:Message-Id:Date; b=KwFimmygu5WHNDyRacXU2IyCsdLmWDLJwTk6qGGn++KEXY+tlRp7gVJlkahcqyKCgj4nwbNVpwbBT6+FHaE0o7PYxi3R5YGkZOafTjQEO4Daj3lFvSXj1KnHKVtsW2V9N15pQBcXj4900A07MbQr2V9vuhvuBYfwsD80hxLCm8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvIBS43h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvIBS43h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFDEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741542533;
	bh=GB96Z780Et2ypQrNlNHIlSUu3qYEqs9iZEGbT1LIrfk=;
	h=To:Subject:From:Date:From;
	b=YvIBS43h1yU0C+A2PRKMzP9VCzGUVYTkmyu7gG42PXMk5aWRRZBc2I6drcBgZ+IfL
	 L/qm21oy9fmv3VYdmFhu12fLabdqq3D+ulpQl4cnzJwNy1NAT5tVpjsUAiRI37dXzQ
	 ErxS+2uBK3Uyu4bCvhl19z7dzvV/riLZdn2PR/hlWgG1GnQvS//k9tQubTZeSrF9q7
	 qMEuND8c8e2P9xKUHIDWaic+HD4ez/1FDuvmYV9PbmRPiEP8MxNln/Nen4OOuqsWe2
	 P/RdtnsKir2932OM0SFLyAAQAxQr35oMWHQ5BIW1lZ11woRfZ0KI/go5dONp0qSfwc
	 oHmD3MHlfu5lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C08C28B30
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174154253361.4759.4645048517578986035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589c976027371204baa692ee6aa67e87075612dea837af5ca09b367700743531
Date: Sun, 09 Mar 2025 17:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741542533
