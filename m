Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC7A4400
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714525943; cv=none; b=BKVqNRvF+zY3P6SSi/QdjKiFEySWdbU18YVR8ps7RhRgAdgVNpq++u9quWyHqO2NzbrbtzS1UNjJ0crTi2C5jVveL2AfgYttgUi+rw/B5F/JydVblqiE6I74/lgmChCfqMfL8jw/e3ba87rXHJL7kF4ALvSW4zJWBdMYo9W5+wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714525943; c=relaxed/simple;
	bh=szcg/f61leY2WLknnxhkDTihhEzXavCyNYY/j6+kCk4=;
	h=To:Subject:From:Message-Id:Date; b=K5HJYyXn4MuFLpNDLFjzcqzDK2ybm0C7hfH80PqXT35c3i5q9NKMbAzYsK/+YgOhkNh8rTkOqeQfM8Se+/3DWXEFWD/2+n5CsEAkgWGfr5WXbXOSF3MWTo5SAAm7GaDMbYVCwvzXDBwZtEudbYENSU0dl8DzS0MZqmtad/ZOnSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9lCROHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9lCROHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB176C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714525942;
	bh=szcg/f61leY2WLknnxhkDTihhEzXavCyNYY/j6+kCk4=;
	h=To:Subject:From:Date:From;
	b=X9lCROHbh3bkQPQ2U5fTMTFsPtVzyUjVtYJQgoWtrf0Mx/zv8J1Tcxp8Qtvw3p8Ph
	 e/0UVCA4zttmR1VKn0fQRy3pxNsSTyziMqnOjetoaBhb57I2X8lC3ek5Y7xi4ZbcX8
	 h0234To37AUyDe9u5wdh6Z4WpyhtEL1BdB2VyWp50snTZANTcHesjB638ZqDFrtLGw
	 /uTUHaCiLg9ukcv/KNZcmfsJbkOQ04XTWAhk4dh95wmGkF7Rp+d0JOpghtUx2fI9Aa
	 HMelWXn8i0G7znGlZpjL7LoeSosPDg4Chkh+Rq9ANX3QbRF7C2+JViK7lzIAmnG/vJ
	 GcYJpGf2cr2gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0133C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171452594276.2851.824707008223823277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5ef0d647ae8dd588140d2a8a3bad3dd6d3e8cd8cf0a0f4ba08f80ea03e7155b
Date: Wed, 01 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714525942
