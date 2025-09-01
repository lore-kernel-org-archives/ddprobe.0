Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC7219C54B
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756744196; cv=none; b=CfgkiFMTsj8ZCcjtF+uKBSfdQIRxMeIBFYPuXVJHU82BJA+iV6MPfqzhJ58Q8CJUR9NDfzbH63Aph1T3EtynS1l9gCSaniw6zwtzVVLifzHm4QI+eD9L7ixsc14E5wmmtCyFFLZJZIZLRQIpIW6F1binrSHF2vkzPKnuVa4DkGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756744196; c=relaxed/simple;
	bh=Jgf7NpeDShFmBJCMipofL1finoWROiQxxm3X5lDTqEM=;
	h=To:Subject:From:Message-Id:Date; b=gPRofhSL1VGE40kDcauh3chqTqaq3GtDsF2JuT4JlHiEN9Katj9X3D+sDrGRsO4ACvY1p89tVzfFJHeEZaN/gVakrPZw+8Tt6/bOKOswZeWnKs8HGG+oNgU81MFSPli7mOnHEFrtNsW3BHZNMtTtmunWVDVdkb8Y3TtBRGu8k0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m120Wxeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m120Wxeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC3AC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756744193;
	bh=Jgf7NpeDShFmBJCMipofL1finoWROiQxxm3X5lDTqEM=;
	h=To:Subject:From:Date:From;
	b=m120Wxeh1qHM4vdB1uWUC1J0XQeQYpBxy7r8YaYk+epJpVahhwFBRbGJtFol5VtKu
	 tIrVB2zZKnzEXy3F6xIBytQPb0CrVF8LGw2swAlbj/FCqdB8OBLp1G//goxWi4b1nu
	 +gJBlBpTz9XVVnZca3N21f0eV+MGecXZpXkOnwdXR+MH50Mt4oLM7vGvdHXZnBklYi
	 VpyWp72mHAp0bE4fGjoIiZ0WlLaJmfd8I8q/3WVLLOdm/Px2qVftUZ2O8KtSH28iVA
	 nF1TWz+9x+JLU4KRnC8Hwv7siPcff+gQKay2XVca9zJwLfhYa30//BGa1fvhRodTj1
	 zhPgXGguQ6eLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99124CA0FFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674419361.17976.10732222472240281145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b18957345cbfad5c74ead167c3f04acb6ea8dd0b9f09bbecb832114ca6b292
Date: Mon, 01 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756744193
