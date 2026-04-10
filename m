Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B342227BB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775850454; cv=none; b=nxRcalIEjsOWlQEuMXSGuTA1vav2rpZ1UtrJ+ED4e7AYM9a5zYIt1TlhaMiVmHb+YbG2A8AzwbUr9QeEJabRkvrEzEo1ndSwZEP0BtdiLT0dOmmGZXiAJ3aZPq7luK6PDaZzM0Wpb4tU7HMuBaSb+vs0VNTBQzrO4R0OLHvwX7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775850454; c=relaxed/simple;
	bh=hruqV5PvgryNWzsceVNiIfNwL++KOMRZuptOTLQMEiA=;
	h=To:Subject:From:Message-Id:Date; b=jfw244HeNDPpASkf5Bpf003hBsP8gSUGjwKU+Mg/IdU6PE5KvUTpPpPbpCV+3Og2LQ7DXdpHJO2TgpiVPbFgBUKVOf1sT2TXgYjnXea7L19qHHBgJYSWhmQar4ZaCvFvg7XG9YzJiNZgo+t5/0eAEnB6OXc47+PLgy09VlaGYxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZq8b3y2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZq8b3y2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CCEC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775850453;
	bh=hruqV5PvgryNWzsceVNiIfNwL++KOMRZuptOTLQMEiA=;
	h=To:Subject:From:Date:From;
	b=TZq8b3y2Lg6MlKt0iPkiyIOD9NfFKKwBD4VeoLtJw/IiYzGs60hHNIiDIQ69JUMUM
	 1SPM5rWKM22aat0OBpMx6tkMK1fTD++h3xK72+wQdeQs5mkcbbWlcno+32dENukPy/
	 j98s4gZ4Rwu+8fFIimw2NBUPvq9INHj5edOtGkLAw2b1UqfKT59x4ooLUhLS+JzQcj
	 Q9v06P2H4P9KtY/S1OQzL/QuVHCebXEczkFEEzs0luUDma8Zzavcs2LPFm8Vcrag5x
	 CC4gbdJMHTpcekI5lq1ih6k+gGKeYTL5b3wkBSvQWoZx5n47SffgZCLpSRrAY0zc0X
	 EUCSgrAX8xWMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6AFF45A08
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585045368.16018.7677191230771022132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c15f1de0ddd34736ebc7b5a86b7cee10ed1b5f28ab7fa129920532f215a5fe2
Date: Fri, 10 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775850453
