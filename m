Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141CB31F99C
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774391694; cv=none; b=qgy9AoRK4BzFndJ64VVzygNsVex3ywEKDKCF19W8iv6yIJadbLBObey4/hVJbE9kE6Q7461EI7NRL34wziFJ+uuoPwE6w8rJh97Kkl0P/r4JBAjVmKmmXaNIzmmatmpseYG4ytjhCNwZPsENCTdgpZV12HRv/Sedo6/nXrZuM10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774391694; c=relaxed/simple;
	bh=1zBs5NZbaxaz4HiBsMbV0cS6puQOJxySyAelGbcvCSU=;
	h=To:Subject:From:Message-Id:Date; b=CP8sRMyKdrxu0QhsizryleNbA2jIcLxNtVOV+SRPYlfsN6io/2+hbfmuouZBUci7ksM7dw7KiruJxm4zdVpMk9lqCTXVbfBc/uKRm04gUmQunPo54LHMNRyXXxOYFqraoSLoqEPovPvKrGpZZ07fnsrsKlY4bNEaYMw+uLn4ADM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSfp3V12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSfp3V12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CAFC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774391693;
	bh=1zBs5NZbaxaz4HiBsMbV0cS6puQOJxySyAelGbcvCSU=;
	h=To:Subject:From:Date:From;
	b=jSfp3V12LzmhI45jbS5P7LaCc/kgkDbucNYZiWdl2iW4lv224gLMWbWoa1NGxmSYX
	 8BpV7nuKcQWRICECvwWFiE/spX2FxVNzJxmJR2PSDX8HA+paNe7228DdnLajq5++v6
	 RzA6B8MdXTCIszMpesiSXufZvEZMoXQrJkPpkjP7mAZHbIGcmCU0KUB2wqsDAWM+Tk
	 46vBXtOPhsp2R5dbNCR9MWXJJfkXiAHN+zwMatatg/8yb7jYnbi4jApMFdOpqnC0oS
	 A4v0vwmxUuplWiZr6cvqN4mE4chjzVS70GwF3tr+1bN3GmVNjj+YteIR3awKY/H6cj
	 McEaJ60rQZEXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921A8D58CC9
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439169358.15966.9167778253823757205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454f20db74f0897ca82af7dc3d4fafc1777ecea664c2ccc16a67c8488d13d989
Date: Tue, 24 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774391693
