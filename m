Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5454C194A4B
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 10:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718360303; cv=none; b=j+Fs6K63vkevwIvQpJPAx2g40MkEEQ4WHU0mEqN1eEqAAUfgGe3jWEAIZoUnzs10mh3o/EBNFBPQMM9GlEZWOdhgwtHRINDabTesEDw4YLb50T6X0jc7UETZeMqCOrRpsB6/jfQgaYrVgoMhjI2hAV5gQnceUx0VMSq1qDiyuks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718360303; c=relaxed/simple;
	bh=GNL9Baym8xmQmhDSPR+I52k5qAkVWHkVI2lKuiyBbA0=;
	h=To:Subject:From:Message-Id:Date; b=aodg7hFKOD7uQJ7AvY9daRpd0fH657LRULcGvLOtZLH9r9lHzYUBajYSbogB9bb9LLv4Fj+EsCBHKg6E/hcxf8JyUZEZciwDfGCEaGvsS07LX3v/Qdn1rh+pxcxAJMmauX6Kwf+A8YOkAV8b2YQSM2kCUyDgzrwXiPHH4cXjHq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfOcjlVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfOcjlVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BE5C4AF1C
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 10:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718360302;
	bh=GNL9Baym8xmQmhDSPR+I52k5qAkVWHkVI2lKuiyBbA0=;
	h=To:Subject:From:Date:From;
	b=GfOcjlVCCHezA76fLCH2K9c+CsN8UXIf4d9A/c8hWyi+ehJHe/XD2K038yruarcZc
	 hH75LdpohQkSDRUlhcWUkieSDpF0dLmeHguQ1++z1AnGzWpKdfh40aeB0CrvwFQkDw
	 mgplkIn6IvfdjGFOZ0BGxBeGyZ8o8r8IeCJx3WYtBKNX4X62yumWEwAiuWpISEdpsL
	 2A9dYb8nMwh+26R7LE7VS7Lp/JPodn3nUyFmKzDS9+K80NwzMHEY/2M9VDSgaF2rb+
	 iIboAkDOgR/eRKlRLAaFXIB3POH+eWhuXIRw5NE/3RKuVDIBz2buocXFj0+9YrDY1u
	 /u938sLbEEkYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3409C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 10:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836030278.22130.2955697403611314761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b960be212e8ecbfe45c23928c9dd8b7ec293ae01699e9f26ddeee50be191447
Date: Fri, 14 Jun 2024 10:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718360302
