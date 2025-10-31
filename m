Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201B8322DCB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761933594; cv=none; b=U5VbjgiF8jj9Z1km0zNusDb69GCv2yJu+ccLrEvirSHTW/5sg2uKsIWOZi6Z0WT11kboFLX1nUYO3pApYnr5UJETj5+tLLoeRq8RP8UTeBJ5Q4qbEI+XU+N4fjayrybH1CMU+2wVfRNMovIX4xqBaOBeLPYQgryTe3b7lO5ETIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761933594; c=relaxed/simple;
	bh=1W+tMaTF6G2OnVTpSYaGlxiqyQZ+ek8CyCbvuNZqYVY=;
	h=To:Subject:From:Message-Id:Date; b=sJEHFGZ3wGRZ0qmmfGtzy4h2TCYHWM8S/BRq/v9JwqeISxvUpohv22eJnVsqCPNhCtZmckoDmnu2GA/l2NX2pBLnJxIXsO+ExXinG7HYqe1HgQk8XdFgrZVqYIdqvle3VtnTgp5QP/NougIsMrFF95Gwi9AI5dh+zPWcpu/aO4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBIH2GYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBIH2GYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52BDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761933593;
	bh=1W+tMaTF6G2OnVTpSYaGlxiqyQZ+ek8CyCbvuNZqYVY=;
	h=To:Subject:From:Date:From;
	b=qBIH2GYkfFWCjrY3JikBTTSa1BIAH87A9YBH4XCD5kyABe/o2GCud2dx+qYMvwUpj
	 3ZzySN5BalskpA2Le/yyCgLDce84nPieqHH+AJegfZC1+pNzzWd6VgtbPGS4n1uQjI
	 R/8eB+Lly8F31Q/Ft5xC6cCH1Q/6M4+DMEEJH+6/qAEZCwe99dSasFNgG96cThGavy
	 iyhGaCj4eFQN8wcJSGPsSZKPlYYbr81wt5D5dQzo5I/fyhqe5S5HXZoW2EtEMU09dM
	 njqLsVWe7L/ssM6LMfWvhpoluXYTgqWYHpNSrD2PaD1wrR45KZ15a9qZFoBlUYPIsa
	 R2stEYXnYLMpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930E9CCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193359359.30808.13942206370921156336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7572a36ea835f755056e6a6e01063e8934b37288000ec2e4ab91d4be5d6611
Date: Fri, 31 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761933593
