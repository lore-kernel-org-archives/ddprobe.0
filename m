Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4680E3563CD
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780554874; cv=none; b=BXCnl23bGE5MFhc+CFx4kE5vEnIUqiRckVZLDlXAfk215AX/DxIm7hv9iQlqkYDHFFpCESGdhhYT9KUQL3H87I54cijivubWoLpWivSTM4xfeHAkoY9QP0BsGf1G9CyZ8VBh8lpX8wzE4i79w/36iSj33XGEQ8BVDK9QaZqs9Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780554874; c=relaxed/simple;
	bh=o5+APeXFXjFUgdmQ1VuLFq4CozoRj9UEAFYVTxPLDHg=;
	h=To:Subject:From:Message-Id:Date; b=i3Mx9OMtUYoP7eW0A7UPGv/zmWB+hvM5knh8Ls7SsRp+mq3J3V/YN2UjzHHaHo9uon5dsgx7PYFiMohmSNkb07wQVbqqD9aqlKAchMX+UvghxxjBfwPy8c2Z4Koy8agJlPrRPgdDUjxlf+m4QUinb9Em6woZZnOV3OSIaMrfjdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7T4Ot/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7T4Ot/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63EFC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780554873;
	bh=o5+APeXFXjFUgdmQ1VuLFq4CozoRj9UEAFYVTxPLDHg=;
	h=To:Subject:From:Date:From;
	b=n7T4Ot/UnG10HzJhRTlbiz1qIcP9viTFhl60qxmH7eJek10bhbeC0840dFLo2AlyK
	 2FLUWAVzdiHbKyHI2j90RO8P99Ufl2fXv+ej6os+MZH19tzyV/zrqJZDkfF8YuJEAC
	 DMcrOO8U1Wc6PRoeUF9nBHbkPUFbuR7dVmqvJaV7gKA7zd68Zy5vg6DaDDMfMKg5JI
	 VscCmu17y0siBSIQaL8ot0AFsada0lF5bLRz34L7cwvCJJdwrA4i8A0nggHZZ6e723
	 aWwpSnv3YKv+42c3M3HAhxkIDJCZUgg1kPxsJ0o395sDc0I//a74ps083QuCs2pXqs
	 BipM9K3jeyYoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC733CD6E68
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055487369.25862.16903336207812338602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11da693d72ee71515967fab4ca2ee601a221f62cd22191389cdc3796d82270d2
Date: Thu, 04 Jun 2026 06:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780554873
