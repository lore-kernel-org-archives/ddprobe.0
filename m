Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7807263B
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759387195; cv=none; b=JqPit4FKKMFlCjgj1LJX+jW2O5XowUMDG0lECo6k8FY4oJzWOY04FM8wPXVQwCiJIq8DEcrAe5M1dtDniIa1l7JNC2Qg7o9nWIxBfLA2xesuFZt22Ni/MIeWOE0ShzytRrZCZlZM9ErthdxrromDOPBngNuXraHqFGos52Ap4zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759387195; c=relaxed/simple;
	bh=RRR4rCSfo0dLDqmM3MJ7hE0M19mLHvspvU5/SHRs/EY=;
	h=To:Subject:From:Message-Id:Date; b=Rjqio1vrHjyBqGi+zIuwDYY+kTUQGgSgQreaLx0oxRukJmqP3WVqvGBhYYkgxJpPK45ON/VwXRwfJxxNu9/nXt756l73AKUeCP9M1dKo+0TfLeS8e3a91zoCDmoOr7n44uldeq9sW/yutKgi6TF8trqvhSps8yyTM8gPPihAXNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9zRz6jB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9zRz6jB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF6FC4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759387193;
	bh=RRR4rCSfo0dLDqmM3MJ7hE0M19mLHvspvU5/SHRs/EY=;
	h=To:Subject:From:Date:From;
	b=R9zRz6jBabW70THxkUcSiU66UZLDlqDnusRhMX63toCt+wNd5bFTlACzTi0gQf/PE
	 6M3k+qixuzC6gkNmcQ+cySb7/vv/yGmsJmSJJubFuFjyQC0bwD3bqI1jMKPEev+30/
	 qhWDOY/tq/ovvGHAgMhItcS1nkb+HoNJWPYqjHyCcMRyBUQbF3KKqmBMELMU7prSht
	 FxKny7nPUeqHGpf/HByoPP1DYAtsfI2Ni2cz6a7v/csD2Nh57ODN4jO0dJu4Dp1FRO
	 TdjW7lqYvYO7p9vSDXDeSEAIP0MC0yT7LE1K9JjXtRS2edoXYZEdCRQMO0zwHYyUb7
	 DPnarR5DhY0Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90466CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938719358.18360.234392965052479418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1509fdf0e9569124ff83ff19e29c4e7d61e4c74718defc914bc1e811c7a0c8
Date: Thu, 02 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759387193
