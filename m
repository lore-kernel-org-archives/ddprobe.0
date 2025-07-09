Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A43F23BCF2
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752087594; cv=none; b=Hj0mfKpnmmPmftZBmfsrOgwN1d2OdXgyu9czaL2kBQaX2pyd/T46Q7DuFvDY6MnQAXrxRx1yAbSsKg9hZ5XIt/P4FArKv9x+ojHbtmN1pZAr2OagWDDwubdjQ1poe0RLJhxtJBeOaCXHS/XuIy07GDWinnHc+ijLRVtl/Baz3PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752087594; c=relaxed/simple;
	bh=Kv53d0DQIxqrH5prCTRBZwRVOfX/jFVoEalD7/jy9p4=;
	h=To:Subject:From:Message-Id:Date; b=QzmMHbdN6diO86mQrwutydL/N+Lb2OnMQn6MDYVuQuwAW72KkOd83TsmWcPUZcwY0PPUUGCY9h2utDZfw3R7yBu1UATA8s8CMjnei6IkXdjtiU9oQstG9RQ9JZcpcTefWKhc5WxcBygjuCmvYAH36WpM/Eby3w0PscLak9RogUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhdgNBAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhdgNBAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20DDC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752087593;
	bh=Kv53d0DQIxqrH5prCTRBZwRVOfX/jFVoEalD7/jy9p4=;
	h=To:Subject:From:Date:From;
	b=MhdgNBAT/a7yimL6rb+PAMJmgNF5iFxqATH9/9Rb2qcbUdeOabWpBKs2wA6bZxfuT
	 uMikig1wjNQTH8IMr5vCVCKa5sYlTuXO/Y8dvgQm6YkLVXsufuB1bjs+LS24ozFVUs
	 Ye6jEe5EfDL1q3FMYiCWSb+McDhwK2Co3vt8c2xPUxdbmoUjdTDEkxVPT6Dxe9uMSB
	 9UKqIGKfxNsrCQVXdWkVjoJ70yhy/qeJClSgNboznlhAE66JwaRimAzsi869md5ZyV
	 RaHbJvPqJ6IDVownALkQNaL/lUU6V+6wUF48LI6tuMV1dhe5GdrW+/sQd86MHu54kJ
	 lzgjyDnOC3hkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FECEC83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208759358.5886.4120178195591908556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef54511087a59a4da6cfa64bde78ccb8d1f415a02719dfe2915dd97649006789
Date: Wed, 09 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752087593
