Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4704C1C5496
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743846595; cv=none; b=OB0BBwbP4K2tjIoWW8Od/36vgCYVj1M/432+LzxoO5/GK0nEmELKkQ96NtTNEE16Ujrr8aU1PJclwIIvdeCeViw8b3eZP0ti7jHOfoo8KlDaonARlMNM0wZuOJQYWlNWgKLN+st0EXGIHniteniZRcNhuXIDDEwE+wCemb2FcX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743846595; c=relaxed/simple;
	bh=rx3I9Y42wp+wYOn7fsKlTA3RpZpaKi7JxoKMMGXASro=;
	h=To:Subject:From:Message-Id:Date; b=c7Odz8qPXbmLcJo+NYe5wNxR/KcZ3cYL1OhGGnBjOEYRLoMprjdo/9Dx4NtlLfCqGz2ooxSO481gXwcPWwyyLI+MX8QtfIpT3Yv6qtfQqpo3smqOIJyc8LmhLuaafA0i/FoSBIOf6eSj+gBsFhcvV13lUH2a9gHazivAAf6dWyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzriyR5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzriyR5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1ADC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743846594;
	bh=rx3I9Y42wp+wYOn7fsKlTA3RpZpaKi7JxoKMMGXASro=;
	h=To:Subject:From:Date:From;
	b=nzriyR5V/kGGboaXBeuutU6PaBopkHTBcQs3aXdFYZ7wK+caC8XrPFgAsaSYiF6FO
	 TTmcKwn2LNHliceMamOHOohvfLX60myJbdvCaieUjOJy+wLG3lSKBvWkwAsMCSyZDz
	 JkkfrLzP4CGFUw62lqSxJ0ghPUHvyLK1vR91qgPS9eiGenfF5cxIp4RYv0XtWSK1y9
	 ldMMiCKLElKFjvJlHaGa+SSPCserr5ST3Ipc96QtPqfeR1Eg1gOcSrfUq9y1gbX6qm
	 kKtAs18WxiwypPL0CeJzVI2p8a+3qXfoFKp8GPYW00HgHIsmfwAEpS7NuTNs9sLoeq
	 yqSOmOx6XOWbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98789C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384659360.5945.15292580645406121751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e3453d62f215c32d8fbc2b09d78f82509f6e909be19bc14590d93f02d6e868
Date: Sat, 05 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743846593
