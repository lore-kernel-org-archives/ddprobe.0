Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535E22D838E
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787315434; cv=none; b=iM6f4vMKUPNV63ECjVXLuFT18Plqcb4B0H61GeqiVHCgmWegpGiMAlfRA2s9G+kK9v5/75ngrDxrvikrReECmONiUO685V6ozNOakiBhQv3Nn1Ati6lONIgv/LMObiqK3mSW3zlkEnHKK5IVwpEp1ieRPvNQDo/uGCgxSX5YG6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787315434; c=relaxed/simple;
	bh=tTJv0D+WUKaOjtIVA+tyeiXrVJw+nWlJcfp+XUcAB28=;
	h=To:Subject:From:Message-Id:Date; b=D8T5/U5ENv2/+CgMMFva6JU1osFpiK14XvRt5km87lV5SrWlJVeany6kA2XGXgNSWe+hLSi+vDymSebW+yuEaKgYafxyDcGN/txLAEvhNtWh/CfKDNwOk5zyAXbLKYIi4+HzQgfb+h+fe5gmHU75BYPgzjy8lo/l+TP8fwQoDH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/sxk1Mc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/sxk1Mc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFC2C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787315433;
	bh=tTJv0D+WUKaOjtIVA+tyeiXrVJw+nWlJcfp+XUcAB28=;
	h=To:Subject:From:Date:From;
	b=C/sxk1Mcb8IzJ5G8mtcQHRAXaGytRiCDHYV8DoiXteexK4/KanAzH3Jg2r3ZWteAc
	 +myxPUvg1hdu7tXjAv0c2s7epgAGgfZ5elWb+k2Ak2vxuP6n3rz1iSYGqNagw3KSNL
	 /EdqOmZZbQ3iGRBb0KFe7vmLD96sKZzNJTxzEJWljqtvkwSywOFPV1j0RH1D4ukQbf
	 kUuaggi/MgNwRcCdoQmWgUlyH4IuNmpBjT8FBXjiE4dZ/MFeH3TkFCAcmOiIQTeUXY
	 sK67OIVUpFMawI2Q/ugFjfm0t2jGXF2fhw2YH4tctfgFbpvkqdujR1GPM1RMsP92kV
	 b93+Kv+SWbs5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6341C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731543373.21846.2070826989814158897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a036449148f3c35137932c70110d49ca551767c8848235eb9f0f7fded02012
Date: Fri, 21 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787315433
