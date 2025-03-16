Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490393D6F
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742159394; cv=none; b=lm5HAJKl1B+le7SyOWK/5wFWPnMcbmw2Qruve5ACF11IoieHqQ39CsDYOKZ4jqIhtexPHco05AwrntXX0qc9ZWTQfxR6AJUfNVGsIQuR+XVrGkXEuDDXtYXx5KWThf3uUEIXXzhOgt0XCs8hgAOkhq0kz6ofDA8p1t8459E+q2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742159394; c=relaxed/simple;
	bh=O0bfcTzWARrqfSh+gZ/UY3ROzqsysgnxrWeJi0NaqR8=;
	h=To:Subject:From:Message-Id:Date; b=livd8C/7pCVP3kaDCv13x0b8Aw6hOqYcRlR7YhdaZ+8cTXZ95au+bfLFBeSWPcUInINrfTVo1ra0sk75QKSozw2bnb+ghChI+qgtUawje06PuGdDjeUlai7Y1sq/bh45FWMUEwX8Es4uYj6fsERxRlTGmwgKlMo5F8Ex2ooVDxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7ShC1Sl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7ShC1Sl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD016C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742159393;
	bh=O0bfcTzWARrqfSh+gZ/UY3ROzqsysgnxrWeJi0NaqR8=;
	h=To:Subject:From:Date:From;
	b=m7ShC1SlWl+TN1MaoY8IvLxd6NdEqwL1I4OsR5PneMUrz427Dj8tMeZtI30nflmae
	 F43wJAqOaKv3q9ROafrTI6iscrH4+3vKIvqg6KV8MghneEqO3/tA9uU8FUcqesuYLA
	 UYEH3uL+30HsJ/V2AKRasgcmqfUVuMV3JqVFOiU9eIt7WVBeS/bcRpgDPH1oXnhMwy
	 c0/cqJyVRWD5sRdQI9YRLjrdG1Nx+FYOtSKa4il8fdleMDRipMeaHRh6akNaPHEBrg
	 s887XT/X1X9NLEF7hZEttdYZDYFB36lIAo8LJN9MsVHlOoRb4o+22nnpHl8wCBzsyw
	 6U9s7NRtHaNhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92165C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174215939358.10659.3413032583314931172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d686552a78518570903df8af76606d3dbd385f4e5cf52dff5f257c923265f05
Date: Sun, 16 Mar 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742159393
