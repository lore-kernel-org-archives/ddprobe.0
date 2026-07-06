Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B51303CAE
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783346314; cv=none; b=FcNvGwaHWuESQ67TN+4wBM0QDvMIuuoZYb6zg4mzaXbxnwQbNkIPnB0xe88xe4Ume9Ay1W48i3X2S5Ydo6XeRvPwTLOmrDrZGPNeVEgL6Fhiuz2QqWeMD0tP3sGammjlO8wDgWCTR+NkQRRlnxc/kjn+Ee873c7zI2RcLikN9ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783346314; c=relaxed/simple;
	bh=K+PiD46lyoyEghXXz0GCsN5KAhtdt9E0Simqg1j0QDw=;
	h=To:Subject:From:Message-Id:Date; b=bNuGlKUOTD0HDO3I+V3l/xwPCl3LtJ6CrjQ2RrA3ryY1S9iRa+qTlQHrZj4NMwC4SMYelqQ9p3iM0MfyOgGYI3+XoSP26F5mufE/2Zg/C2jWhVj0DgTwsUAt9clDGOa9wJiFL2W65OIT/ZYk9YHgd7DwZb3l9Sf3VSa0Mslnn8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4x6jtcR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4x6jtcR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2DAC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783346313;
	bh=K+PiD46lyoyEghXXz0GCsN5KAhtdt9E0Simqg1j0QDw=;
	h=To:Subject:From:Date:From;
	b=X4x6jtcRdGNDax3HfTK+Y1QpY4ohdIYi1L7SEB0Ht4TJM6o9eWvF4e+T20zDBph+s
	 VTBVDyWKvewNSBv4067Q0tDBp7/dqbTVSCa/v45m0flHo1rZ0unehymsliZSBVIZ6t
	 yRwjoS79KzjYbk6iAz0AdaMpfS0aGLlYH9UURuyfuYX2PtzYYsjqp2Rw1osUhyn+no
	 rTlAiNd125pqpPe5hIoXI4dgQ1dzSl60fKN4kVoiOzSdg2Gqogt7xKt1QlV2JN4HGw
	 i4n/RmVPVKRjGNsN2gymD4mO/yey0f0vhhwr54CReN7ggVT9ypO/A+Y1hkjCNxzUZU
	 GjnBqlp/saSfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97ACC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334631368.12009.7490621371256861964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d34c6ddfbdd17868be5b3553d07754a9156e37e98ba61864391fb37b50d7f2
Date: Mon, 06 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783346313
