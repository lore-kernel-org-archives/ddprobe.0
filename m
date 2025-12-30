Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F5738DD3
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767090234; cv=none; b=DRzU3sy2UD8ZkZt+zSl6cgibHs2gHQ8ZP2jybOSreeti5HFmMR9ltsuEenMQG0CXc6ApK+Qf4uyfdbFe4e2xOYHVJrDwLKwuJWlZG08QmMOp+WTgY8vPZnKOOU+P4nUa9V24UOcw6Z3cku8NdpCpt228huAil4iK8Pr6vLoA36Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767090234; c=relaxed/simple;
	bh=ATllmjUnF2M8Xuv0Zl4/j564iQPtq6PdwKOWPNQy/10=;
	h=To:Subject:From:Message-Id:Date; b=EN2jQ3SMzlqiqgCYwLfN1lLu7ERcGaTmacoN+QziKiItrWIzTvl2GAhZJUf41eW1kxmNvBY8VspRrpiloSwMa1GG+zBM0kDfQHfRuBdUHUsCJwmL2b8jstxTEgELbzQnMuRqaoSnIXzKEKOby9t3cphU0Erdxs/+OehGLCfLXs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkR8yj24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkR8yj24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31AFC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767090233;
	bh=ATllmjUnF2M8Xuv0Zl4/j564iQPtq6PdwKOWPNQy/10=;
	h=To:Subject:From:Date:From;
	b=gkR8yj24EOv3HuPL2afDvV7t4YBEui4LHbuzwUIcXI89CGdNpunjOHOND1CjqzHxV
	 Q8yl6ZClyUor+bPl1y6Bw4+slzlCfAKRiW+MpSt8Z+ZmvdS0/2D3wXRJkfqLHCYc3H
	 40jc/ZO9hulzLsNwzaxQFGp9Qk9U6/gb56+rKOX7UYF/25rERO2SRccEcAkaugFvwd
	 82lYE4SjuuMRtHZRWedieOtjt82uoKcQFz6HjvuNVGjJodxd+SuZQNvCz+zoT2Pomw
	 /BJOqoizy4Oft3PvYTg0qf8znofCylCLh8cL/uoAmxTWRrvxzUDQVlnNjUn2zirnS+
	 Mf2ItgbqbrneQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914BBE95A6C
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709023358.17762.9269480460379663487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81494033093da14f9f4cf6c5ed285a53d7498ff2b4995b28af65776a6b6ddd49
Date: Tue, 30 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767090233
