Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568D842BC38
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784063914; cv=none; b=FmpDIoGQJqMMTkq0rYVrgKAvFxCSrsGOgtpMyzrNqDfyHIjueuIzzIFjLZyZfEF07JRj2W9QujHqf4iXV9wQ3Kx6Gm95givc1uPC8/qC4EsymT1NmVT1QRhBmwVSzDuvoG81HITeYuzsC2OBtAX17QrLR0KWu/Lv8KugsC/h3fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784063914; c=relaxed/simple;
	bh=3zaQ4FEHEwE8tqB2aQBD69nwuWAg3/NNu5s1mSIYWTQ=;
	h=To:Subject:From:Message-Id:Date; b=ZXXwO+bmql82BCAfB8F9IXqKx2YwU4SUUkJkfylJZiFjjPJUNUC4/gb3TjWzB5hepJkH6BKKzujiC618/z+Ratd65ZkiRwdng5d+IeWmdNknASbz5c7/caXD/MwXCBcKehTOtkII7/+Gv+MegDrGKMNRbbGquuC9qSJ/iwuGBrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0C93U47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0C93U47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF36C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784063913;
	bh=3zaQ4FEHEwE8tqB2aQBD69nwuWAg3/NNu5s1mSIYWTQ=;
	h=To:Subject:From:Date:From;
	b=g0C93U47VgsTaXevaE1sIz21rNnL5pCzWvmOzQ/p9XTg1RDCX4oWTTcT7vPKNIW0o
	 W5qa8AlzqDva4rXAcMI68fwCpP+v30pbQ8w8B4MFAH7ewGHJjoV2rw3UIrNZAwkJam
	 lVsKraEqQmUFPqTxEwHuFLCsoAC26SeZulgrwzQ1cMpmOIkfwuNAZQQw5T9Dz2ZZvK
	 10yTMvOkk/Pk8WVRDw+3l9lKdSH1DkmnQwiJ+2c9Aj0DxBqzFFDfXnP00NmlUhp3vB
	 dPczfHVOlQ1mUHJADj4fhpspKt51mfIBL46Qm3VAy3BMA8OBan+B4ms3Pyh+ifdPKI
	 6mhlrObqAy8OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B391EC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406391369.3977.3180234108344103380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3a71cda28084c7e57b1b9bad4305fc8b71d0f5ee07d863d72cedb0554d29c0
Date: Tue, 14 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784063913
