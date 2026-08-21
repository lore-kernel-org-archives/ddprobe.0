Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310443B635F
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787316634; cv=none; b=eNjrzpQectP6k75ssNRuOpc519VGIZwBkqantDV3c2s/jbeymfEvt7Y/EqcS1gzlicUlGhPs3BonYioL8wm6vSvCYVZzS/QfR3/J+dHKaQnrOClHrzn1CcoNAo6J8yNv/aNACm2woT7aGRMh6qe3zwkzxZDe3/DdXecWQWatvE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787316634; c=relaxed/simple;
	bh=+KUlajtE2wlCJzFotDEuvi4VRBi4h7WxGuGkrHKsSaQ=;
	h=To:Subject:From:Message-Id:Date; b=cPja2v1UIXyovh4dRBuuxMrXVaSiUaHRFEiqSvO+qhywkCWoQpnNmST0dssE02p/LAd39Tw46V06ZWC1xMBFKLNMEb2H5TiM9L5k04h4EgZ2Yquwt9c4+IL8K/llim7hrZhjwG/4n6XF2Yk7+CnWGpoImF4MHNDIhrjEgzOjyXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPpZM1Zg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPpZM1Zg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E0EC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787316633;
	bh=+KUlajtE2wlCJzFotDEuvi4VRBi4h7WxGuGkrHKsSaQ=;
	h=To:Subject:From:Date:From;
	b=aPpZM1ZgYAHLAoqQPwAcSxiIm4QpYwJRISjsoM2YkEYLDyvkvx8girEWyG7M1iklT
	 Wbm7nqdMOkjfVr94h89NE/xzxRZJGZY/54wBqwZ6yXBH4uhXmQPtnzDVXEx+fSgfCU
	 EoxjXf9ydWh8ydMbc2i3pGAdkKP8q24QXnHUVSU63X1DVEXeyXba9RXdBCZd4egSY1
	 vcgyrlKzhb6ygiDncZtvzKCAI1+USlnqg5XWGSRNA4Nac88vLdTT/fBhth9HTgOMZ8
	 ZEKUNQj5H5ZVK8oYxVms5M+tXIPChaNBvBHopwATn9q5GkoruAY5VYzVBMhkjpyESq
	 Qo4cehWVDMAgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB29C5DF89
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731663370.10476.16520037249962145016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa08a7a33fe2b670b39343fa4a55a81dd39da6ef4d16167fb646910a20a869df
Date: Fri, 21 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787316633
