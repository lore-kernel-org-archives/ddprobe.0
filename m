Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265B62F99B8
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777504054; cv=none; b=Tm84kWC7KRLWQM1C+d2q9wrxc5Pb2IXfxsnyMzy1YWPR/sp9Hx5uCvVuDlFtWO18GnJHmzIVQccFB5t9Nl1G3ZbfKj7obwH/YmVr273SJ70AUp5CLmkDg0JMBfVcnmwkKYbWQSD7RkMagvh0DDj1jb5NuGH2qc5kz4Wvm8loRWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777504054; c=relaxed/simple;
	bh=jbg4e2dZ8yiKzMLzEqzQdDHBCe5JQVKJuCoxBD0ZC2s=;
	h=To:Subject:From:Message-Id:Date; b=lSn/xYqpUP58FDsZIptOWGQ3GsWXjtE/OoucDiJ3+p+/5Jl7XJKyIL4vIfVlz7YNIl/j7G1uJUMitAE8o9FkOY4s3SPeGPAJV2Itwv9+K61IrQe6TH13ulSAETa5iZIIrouSJ7mDe2C9xCFkxMp2VW/ID/AMvxQ2w6zVq8gaqvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNr2G/d3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNr2G/d3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3B8C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777504053;
	bh=jbg4e2dZ8yiKzMLzEqzQdDHBCe5JQVKJuCoxBD0ZC2s=;
	h=To:Subject:From:Date:From;
	b=sNr2G/d3zBZB3DZiULDXVdqeTu3QbT6L1lfZF3C8x/Shgxs1v6Sw/AY90cA/YrFQN
	 8mHgzjZkMDu9/Iq6iT14W1XUZFGj4X+ZsnhEODkmNLjBBIyLaPilLpUocKHmep1UJP
	 4vxf0Bgi8CJTSKVh/ERma5XHG+vZ75NPKNTmA4Nc+/f3DY8QnVoWgMIMgqe40bWqBG
	 hJNusUiNrUBiPzdzaAmLxUYtB68HOnIJgnWReV9XdUKJ3BPfoKC9V7xaGggZKPMkKj
	 TC1ymoJyJfxkQyznLJ/2Jhrw45UgVmCKda5SKbTDWGmEARnJsTdFqBawrcZW/muASd
	 u3EUgmZwmBgQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92ACFF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750405368.15691.5171213773019281106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c66ab139754d0ace4314ce0dca11f0914bd6b413e6b2fae4716bc8313d982fa
Date: Wed, 29 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777504053
