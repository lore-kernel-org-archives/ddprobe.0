Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1208E149E00
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735067154; cv=none; b=jel/96K3affp8xGJ3JRDQ4tW+TMKX/BCQ165wcZzCfcWlaDhuLDT8exc6kwsjjJOLblPg4KuXTGcUEX1ts+oAeThwh7UujqC+/xf3J6Kwx0jlrnd9yqrZVYQuo5CdldGEnZkB7zaINBlTUkeXQhikN9+PfI+bsAS7LqEJcjv6Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735067154; c=relaxed/simple;
	bh=8ZmxYuDy4f15cVkkhWjignggPUh8jv/4FiO02iYVm1I=;
	h=To:Subject:From:Message-Id:Date; b=lqYUZaCfEzPRM1OtojjKenDe7nga3nBtpXNlTjdcqr09i8HmEsC1AVGdJCzkA82CahJ6mFeNsC3VcpBhpK/lc7KABSlNop+qNppJh2++op8qHy0O49QM/PVWGbmcZgk11t4NbKUBp0aq+O+uDt6kLCHPQM1mhrosPkAfaFTUFf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDDfhk+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDDfhk+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED6BC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735067153;
	bh=8ZmxYuDy4f15cVkkhWjignggPUh8jv/4FiO02iYVm1I=;
	h=To:Subject:From:Date:From;
	b=FDDfhk+8sNnoGIMaQvgMcC9o22JX8gB8JlsrTS1y1QGDJXV4fr/YbfQCpfV5Q7yVm
	 t4PEMbce9j5WMQrTzSx6ypl8opLtldINiF/WOZQCUJ7ln+OuuXhM6LOuph/q5tycdA
	 t6mtX7R2ENtJSFA2I/04ag6CRgVtRrWvHufnw5K+CtmTRXS3W634kGZq1ChTQCVXPw
	 /8X2+EqXvhE3crmdd7xqxRVskITF/0h9a6ba1YIsk8mxDgmQIVLvV0tl/XBXuUnmjx
	 faoYQBLWPG0+1hIqt+LFvDkOMN/z1BAskC/XP4XN2jNDjprK14WYu5y5OF8DDi9h/R
	 VusDJA5z1rhBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C84E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173506715361.17556.18376543517052271981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c3d1ab0051071187e0ba7dde1567686a397d7d984778cf43d9b488f6523426
Date: Tue, 24 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735067153
