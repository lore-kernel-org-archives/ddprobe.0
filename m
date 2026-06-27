Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6981E3C2D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782523114; cv=none; b=Y8Fi1LABcoy8ldn396ugjqxFbAcmrCBx6SgrOpBAnAh0G0t0uppNh+pVYfDsauIPDp/USc2z+YSMCAmabWCnWjfljRc0HLqAoWsjyV70C6gffL9Q2wNGqWQl/ijxOaiTQ9NfudQdSraM36fQM1XZDHW1zQbmZiQsFt2lusZI7tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782523114; c=relaxed/simple;
	bh=7pV8nokC4AJ2vq2j/pYiekdi7+QeJhy8Dzruwbp2VbY=;
	h=To:Subject:From:Message-Id:Date; b=ReOOJB4ApTCOUMiq8hD972orWmwI6nTEbscW0kJKCyUHCS+DQWh5Fho6IDgreEuR7lG8jM7iGB1czH8NQytlXfUXjv6aWGqlzYHyFxMWEs4fAw9Sv52K9y8YGL8YxMV5YgKp+Tbs4/aJ2O01OaaXzP4BGqo1zRKrtOoPJt6m2rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8fgvPhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8fgvPhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4452C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782523113;
	bh=7pV8nokC4AJ2vq2j/pYiekdi7+QeJhy8Dzruwbp2VbY=;
	h=To:Subject:From:Date:From;
	b=Z8fgvPhKFUp6cMUX6C0VMu9oKyfowsvUSX7OVKU3s4wHizbhwCI5dlJHJITYZ/YMO
	 +T+uyGbfPyAhcLRDz7Xx3ppF9GqxxkIRc7HSfywAFXvBF7p+GbN4qwy8esf/UpaTM1
	 D9CncrS8qB4Vb3cLSxBGkPhJVGPv13y407M2ueBf4ZHRcscvDT6UybIl/eo2hIh9TD
	 i9YiJRHfAyd4evX/wWsfZxlsLtBijfrsvpvNA+f0HMb2qQk+ofzPkyz7NqJ8PlDqPP
	 JM1dqwUKJZjWTAKdNadqcq8mw68hQRL4Q+f89F2BMJVZvtO2bORwTNJZ2yufXHZAa9
	 9nO936qsEPEOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB318C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252311374.16062.15354690385923812501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0dcb579a6893c556cad2bb362a51f70e1e0bad825fcc3766405b678b68eb0e
Date: Sat, 27 Jun 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782523113
