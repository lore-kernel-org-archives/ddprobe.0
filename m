Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1F7395AFA
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788868238; cv=none; b=QZs5jz0qGuLGZt+qSpBFuWe1Ra3cncv0Z94ZGN7yS2X7LSz65P+dkUp6o165VKOJTS7v3aLRdtAbV+REFJmmE5xJUDPzDRekg0dZfa+lkEhvsj0qlkSg9Jn9Mi9gNJxb2rWt18BlITugQPUCL64Q1U1DsIw3da0a4N1tXMkCnNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788868238; c=relaxed/simple;
	bh=u9jKQizLbzjHpPQ5jKAHpzyNaige3lRgqMEKRs3zDvE=;
	h=To:Subject:From:Message-Id:Date; b=lr5CPkQrrxPOXf+ErvKInbMfHkvmO8oWxWXIJcnP2BGn22k0wtAJHM23zGT4yRzU7Hib+unRhcdx4RoAG2VJsq3ZVu3Z8mfJLz19+vmp4Bm7aE8Tl85h800T41ilskMBafUi/UlR7eeVfxEq+8uOEN4gpvtHh28FtngBBtxdNmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n++qKl6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n++qKl6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8CFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788868233;
	bh=u9jKQizLbzjHpPQ5jKAHpzyNaige3lRgqMEKRs3zDvE=;
	h=To:Subject:From:Date:From;
	b=n++qKl6VARWGAt42EMznMcYeE7/uidcg22vKotPMVcEjJeizxNvhZRSqAxL+hujjC
	 +AGsf6evr8QCdJQVtPw7jNry5nbs4l+dY1zzXFCEZgw+RnLvfKnGVOqHv/QQXQc59B
	 FacpdiUVWMotsl+QA2AxNi+/d7bBlx6sWUFZdmE7N1jwmqGbp/s9QNInlbwCxKl1Ft
	 Q7o1+TN6wVUZa+jak9vSAA0LkzMnDESOg3r/J28//enAZs5jhi6npVXJmcIg6Cf/l1
	 svcAZyTmpagHJtHSoFHoadGswd6clKcjYzfrvgHOmQ/VS9iQuVJDFQ9SyfPHWqJ7vS
	 2xh/CUnEeeAMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B88B4C79FA1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886823374.4328.15661196232899017224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21d23168ad2afd152bf7cfd438d9ba586e8c5deced4ea340ee8653e5a69fc31
Date: Tue, 08 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788868233
