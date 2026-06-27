Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306FA2F7F13
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782583714; cv=none; b=TDTdTahH0LC5IpysBu0sJAl1AzHwYAvU56F3IyV2nktf3oOAmUwKWW4+ucM18UDP7kZQCcd/pajsyn7VcQTzjN9o3vLG9mNFD82gG37TydeTQui6mD25BjyX9/ZuQ/VD2f2FP8jb/sYbkkbNsCkZGFIyUOtvBWlfN1Q83DrzNYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782583714; c=relaxed/simple;
	bh=GmPVahqDTZkXqMtWk5LsjMoF76jOdd95t9zXiBw78wo=;
	h=To:Subject:From:Message-Id:Date; b=stI23cXwMDP35W+VZznHj6qTLc4KJ1E22PKG3pEN9SueqDxsOXFGJ9GKIwLXBAevjAe+3ycmylnbDEiSg2avfTF9Pfc6i/45nzWwRaqGkgPg2Qmx7HfE2sAqF560Wuk3BW42rK0CHiykoDkbfUBrOjQAexEVPhEyJqTrRDms3X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5ybcwzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5ybcwzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A35C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782583713;
	bh=GmPVahqDTZkXqMtWk5LsjMoF76jOdd95t9zXiBw78wo=;
	h=To:Subject:From:Date:From;
	b=h5ybcwzZ74JTd34JbRdEpL98j0cwRZRsjheb6rauPsjEWpoK070ZXBRgTa0SfBNuT
	 yT0pGe2mmKmqoYy3TxJCzbpbGKo69phEolcSdyLThCLnwJyijxk7GR+ZgBKsE2TypI
	 ek/Nbip2ZUq6a1I2q3MmnAIdEQv8+Eo3q8vAEC5O7OIOrokOLPDXMXbqOkAo/7y9Sk
	 ejZVAM6L36CeC/IX9vBBFF1/40q/gSy8mhZvNtj9cxjqWuhoIqLJ7wiBbCKZ0QL/W3
	 qMUiK6mNmEiIvGI+VrA2bzCMB3xDPj2A56ESxgG35sjslcOatWULDmd//vAXKQdDiL
	 useiaR/RSiGqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD62C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258371369.649.13245534319459447819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329aacb6b49dfffca498da7f41d06be552b4db6591320ff392b45432c6992438
Date: Sat, 27 Jun 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782583713
