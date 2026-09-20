Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F948547045
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789908636; cv=none; b=YplhmtxCBNszHW2MYjEAJ8wFne3eccp5WZr1A2xaCTWLhk6907nWFGTKrm17fpQtIjTELUxMnoTvaOnGPu3J07psujpTaiIPN2WFXWZOU6etCXcS9vtj02l6/n0mWCjAS+y+K2g+H1sLhrimjy7d5sQcHY4zlLuLZQgOwF90ltw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789908636; c=relaxed/simple;
	bh=irg0UPFe1IsMJEsObORyOFnRk8Si6RP5v5bc1NDHfio=;
	h=To:Subject:From:Message-Id:Date; b=L44AGLPRYzOrr/4BZrod4j04NxJQpPHHoGPYSsk4skjIXYPLds/2q893vmi2Pgb5M0iw6jzOAUiXqihXotpMVrQAae5qvOiUXyCEfRf91vpWLoY0GtV/TheP9pBx3ONGcB1c0LH5XjJ3QqFrPIlAFFe9yLJ7qdlb+/2GRWHB44g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cn4GFtu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cn4GFtu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90BFC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789908633;
	bh=irg0UPFe1IsMJEsObORyOFnRk8Si6RP5v5bc1NDHfio=;
	h=To:Subject:From:Date:From;
	b=Cn4GFtu0D7MOG8l7YQ2L2Ya8zKaR1Qrjk95xy6bSiEuW9sGfihYZ319jx6x8vVK88
	 2pE8tOn1F6ps/WH13tFvJoWfH+H+QQ/0VwR83pRznlU0typ68sVKBhw/dS5lcgzIAY
	 ObDo/Nf5V4ienMJZkz0MvmwIkFO9dwoyrccvwvqS8IYBVJ0Y5CN7Agneb6GCNJ+Fqh
	 1aU+2Avx1pfzsrVEA9HmJE+SIzfZZ2hqyRcc7Yq2+Q31abOcbDwvsrCJeMlB3h+Q47
	 ba4HNhSqMID3FN3C/B3WgnxUuuIpcSqdCOYHinc5dJd0sTJ/4p9eyemaLZ2BETUyvo
	 VD6lwaLxIgA3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9091C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990863368.6780.7211095631188760638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2911bba0420362d2287df98bb5936eeb0327aee34f98c7308a6cc623ec7361
Date: Sun, 20 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789908633
