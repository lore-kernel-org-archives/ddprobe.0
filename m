Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E96B3C0A0A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790541634; cv=none; b=VTUoNFcaqfw8jY3+m8sJgn9VwlFHaq07BD60V2TYMVcsM0G/YCgru7zKgfvZQiY4BBJVuTCOJqTpSI4SjoPX21VrqPXzuuvHkX7hYSjI1+GX0o4jBd2FhEwJESxUgLDbcWcB/toxmraZzTedFX2e0jitf4Wq5gho1WtucJtOm/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790541634; c=relaxed/simple;
	bh=tfko7dEoldKvFbEvhEN7hzj5eqqeXQCpcq06c+6pv+k=;
	h=To:Subject:From:Message-Id:Date; b=NRcpK2+jJku18FipR4CjxzzWOMmZCw440qsddkSL9bt+6NFDAxnuVLfXhCQAXPcXOoa2FjY1YnL+uK+UcnbXzfNXYGySMCK2Nuxs6O+z+rqgnddSh8UgnUNNLB7hf68iaZy7OfFgk05HjDHdpLS81K5AUFlok4xzU8+Q4NdQHag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTJc/GAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTJc/GAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3509C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790541633;
	bh=tfko7dEoldKvFbEvhEN7hzj5eqqeXQCpcq06c+6pv+k=;
	h=To:Subject:From:Date:From;
	b=gTJc/GAyJf3JHMcnprsNe+cCIYvNMnj7bpR9bC1wKZFT0T72WqRoEURq6/nLZWHvI
	 SALA9DNmIS6khECTF1zUJgGN4v1DnatpS7yScjG5g2xpCnSFjvrXDfDVo9Y0wdGEJb
	 OooeUHRJqOGQdb00R+o3GoZwzU/kdfIhDp04QrcC6sRQVKoEIHbZ+L9cYcl3eJAusf
	 DXEZ59ejsAidHgrQOsLsR4rfQykI1sd8rYgjSMKQY4AK13gLH9mrOK2pEXpGgNRX7M
	 9KAWtsxrLl/hpH8H2eiopUGWkowJ1wv8UHuhL+gNSu5MObUOsTic5gKJ1t8PRdsMv2
	 O9Qpaobfa98ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBEAC98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054163369.27750.3603023394167428434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ecfdd4061d6b0c882ef37c58d1eff20ce4f20f6c9410191cb720e318263d96
Date: Sun, 27 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790541633
