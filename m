Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148FE81AC8
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726955754; cv=none; b=Gdwq2rfXNG/pGLRvU5ntLnTZ6tPr6yuakPLNprNf61VmN9PvZBJ1Ch8i42E9H1dRdpBfJ148p2XU/z2NqHbEQpkQz6TD+GcGIG+MCwZR0/DBD1sCCKqKP4WkldVepiVBhdUZyRd5zSqKsZOOmY0IX4BLNpWrLqn6KMTT4iyOu7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726955754; c=relaxed/simple;
	bh=68oMffcntJ5bvIkz6PjGyrcqptONlM2hE7mBxIo3jSc=;
	h=To:Subject:From:Message-Id:Date; b=Hh0nZ6pUcA+GnEZZfkeQ3tBkd/D5bI63RMOA76nOOiDM94gI74JEHyKNxqs1MyyWMbzBFZkZZk5ynVofWh92JaFeD22YojEsu195hYXcUArsZw5sAnJ0Yw8JWKOsI6ELRleMzIyDIA33Qy7Z6pVuKTb8Yu3j++U0ANa3Euwucck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePvoFxiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePvoFxiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D0DC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726955753;
	bh=68oMffcntJ5bvIkz6PjGyrcqptONlM2hE7mBxIo3jSc=;
	h=To:Subject:From:Date:From;
	b=ePvoFxiZKRzKN6s/br35mLMSBur+iae4ltcCUL+vD/OcapyO91y/BnvkMqwkb/2lZ
	 ABGfTxCJkzctULpbOMEB8Q4lCISuPyq9PC5EftS/FdYNF9xQXrZUVzfpvAY4ZtdZ0g
	 NRiCo9wGqsZ7X7BTSsVJ9S5ToAJpmcflSO1dWDiXZc/Pnpm5K/V1VUXeod+Uh+7hm4
	 43VeKucfM1aCVif6TQ4pwcvy8opywJI/miDcFESe6R9fEhTxusKlCPfINA+m24qq3v
	 Z3Rao9ptm7DmIhjfIrhJXB7IbnM0AKv2DxS+6w9rv587U5GClt/ZIYrXJIUww1bMJs
	 6YM6r/gpgw6Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CBECF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172695575357.19854.13891341452382469954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8bc05b76cfb01768c3810c126a4711bcdde1aa3989e27b653d7c5dbeec575a
Date: Sat, 21 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726955753
