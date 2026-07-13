Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35904175A7D
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783906714; cv=none; b=r6Myvt9+MyDH6lDyvJ5Jcn/fIBUKJ3O9wYExMdxXs9w+C4mBlP3Dd4bGKx03FZwV+IUFchAEOjQtwCs2bi6h6cADIKq04+pkbqxU2wGe4Ix+6P9qQw/dBXfECEdMrvT2C6BvbFTxU6VS6YymuphV706ijYAqK3CxSx4ksI8Cphw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783906714; c=relaxed/simple;
	bh=F5754syp9ObNDljQ1pvHasUYgEOy372b2P9glV4oUec=;
	h=To:Subject:From:Message-Id:Date; b=Lpp0tJofaVyfzR7vVl+MeidmqB21zVry0RPe+UUQIP8LIyxxQqfKpoH/iBiFeoDhiuTJ68VImdIhjeaCy4MQjVk6GZ8RaBFYLuBm0VBJ2daFyby7eMveOUIfpGW1Xo20GqmKiBgi4CADpoypSEZ5Wb14yS2SFYKjIaCmG2RGbBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2eWzy2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2eWzy2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2E2C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783906713;
	bh=F5754syp9ObNDljQ1pvHasUYgEOy372b2P9glV4oUec=;
	h=To:Subject:From:Date:From;
	b=E2eWzy2h0ZW1/6UWunUzXnrb2w0BrPx6b0lSu5NoWqESBIvnac+b+8l5qNug4aIcN
	 KlikgyJ3qsldhiGxfk+dqsZr3nG5BFwYXzzRE6l80L6FlLgHYpbFTUfirkdd6i7D8e
	 eJpdfw8269N3QhcdWHTF2nbpTEtR4Lft55jkrlKvwdtJvbP+sQcYzRH/SG9cGd4RUw
	 0IDIC4RC+NqzjjmhrLgwYXMhFOxzF35z+VgsiPHdI9yhvdZdNAwc4nA9sQRQ2YAIpR
	 hno+Nc+I0YpFV5hC2lsWllIwvEigIcoClUdJd72u5xJoodlC0Qu70fURU5ecEezDn2
	 M/Jgp/s6KOeuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C83C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390671368.4561.5952809092567269446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea418414fddb274e4aeb5408f22421277e54ffa6fb82dcbb11f060b3464d856
Date: Mon, 13 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783906713
