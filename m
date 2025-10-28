Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E3523A562
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761638394; cv=none; b=ZQdhUFtedZr5tujo0uIHW/jEmPTm/kne77T0UapNgBVptArTeNY4lxnvttqOcBFyF/fFjGlJHVlZAsCoIjQBcRMZyHe72CidD5mMAelykY3FlM59wnDjtEvpohwZ3jA7inQR0eoy3mGJkUStIowX6dj3orw5cvx8b6D4M07+4Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761638394; c=relaxed/simple;
	bh=TaTVhJGmPYjb3xTWzLBBldoeH94wRAs1vTLHy+DLWZI=;
	h=To:Subject:From:Message-Id:Date; b=Hpg3liEYRjUOi6E+N4XKHxVU8hOdPVO9Qiz8bKlI9tAdoyk0AcCOKzo987mZrT12QIMirGzbqM/LEB9MhYAv9ks5yRBZHwSq+UyEub+9OBxfcxIb7EVwe6Do3YKdKh3Ayrr+7/yWr1LPSlBO0+O78QHOWupBn9k6er/wRbBZGYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CG66iZJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CG66iZJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA60C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761638393;
	bh=TaTVhJGmPYjb3xTWzLBBldoeH94wRAs1vTLHy+DLWZI=;
	h=To:Subject:From:Date:From;
	b=CG66iZJxF6aAL/k0JhFB5ruQ+IgTlvaPYEA4KegFYGdb1DzOZvo0NUnX6Ob6rVPZv
	 SHdpnKgfQkAEBI6z2lTmFns6acRO4yS5tisQqLuM6UafInxhb65zlvCpXDai5LSkaB
	 5P2a33QEuO8zadVbB4YhtW0t0Dzm+8vtNBaR0HSV8MJX2QFe8gfGWSip9bWF4Yq5qS
	 mxj8q8Wg8BFhmEjjHvPEoD9bX12lG9/5cfs/IkoiUZbdMfkYpzgt0sC76CC0L1UCzR
	 7Z4Rk0jotuGtUluEUP+I3niBsLM06CIDAq9IUAE9Tfhk9MGWAo4rWwyOOm7JnqvsFU
	 NB9JssF6caRcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F1CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163839357.6034.3830747287379199096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583757a6ed621561ca8f88575368d29960d1f3eb3936701e3142c22e0479f32a
Date: Tue, 28 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761638393
