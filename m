Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF2D2DCF72
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774411494; cv=none; b=Iy0j1RXflqENGzVM5yebeulGG+CUeFZ1Eu3pRD/nj7wvUYK8/sr1tJX5SGiSrANOFhR9oOiTWpAQLhJgVScYfNnIJSgwCB50jvqZ64EawqwrC5umfj5q3SJ1u0eEuvFytsB4Nw1W9uRvptrhsB2v23Hhm4BupQKrArMbGFQ0e0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774411494; c=relaxed/simple;
	bh=brcshgO528AdZWw/KcSPAFQwyLfTvQBlbNdfqxXkgr8=;
	h=To:Subject:From:Message-Id:Date; b=B7tefBZ2uDohYl4C9Hiek6vQqfM2HERkrOc73QG5uHXC6y9SJn828uz/l2WegUNU+pFPrxq7vjNXQneQd2+x6nape9ejtbNggTji4Yvgu1BqvLamaQs5jhb8FHdjjPKiGdmjLk8CcXqHzi293YZW4cdeKcrP5IZzdjLdp7p5Mj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYV5Erna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYV5Erna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D13C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774411493;
	bh=brcshgO528AdZWw/KcSPAFQwyLfTvQBlbNdfqxXkgr8=;
	h=To:Subject:From:Date:From;
	b=AYV5Ernac7U61sVWItYfrknSHDvf329OUJZ2YcBTjmorQdLuHLC4S6kkqt15xAEP+
	 u5Z8qjpQaw6S5wuD5/S2nSZ78V3RrFxbz7rUXYhiFOnxa5l9PEVrDSyuLjLJjv+dNU
	 SUkT4gzdkrwUPTtAOH+3A+nAeiCMEFbsapf9ACv8jx16pUviLtiY+suGVNjxI1v/dn
	 UkxGstgvUF/yyLhNsadm7pgZSRcFxVgzXthovyXIF+6KZC6nOWoYcsURJ+k9SDJxLF
	 /SAPDldtJmGz+j7kubPYmMiYKCvJbKib0evjFW+8ed/K6QlujIyW7cM0RUypQdF7Zi
	 jS5foj9vRuT7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95394FEA806
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441149358.19516.3807434386772458197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83662090f16a7f2b7ed3dd0e44331da38e4c0feed070db8d9678182850e86a8
Date: Wed, 25 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774411493
