Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFDF3E3C5B
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777655254; cv=none; b=cpxXAHnVKhxklTVkUto1y/IalgBPvDQlbivMOQQealgnpm2GwspNSg6AWxhyX+SgRbBRHdk7hoETI81IHsOWsy69nyIPbQDPlhDAXz/BEcctJHqxTEkfsg/AJYIRC69VX3+Ut9R3w/1LhNWrFyRcXQUpkR5TBBC3/VSfwrDr63k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777655254; c=relaxed/simple;
	bh=SO0bGM8HUED0wR3SRO5eu2OwGRMbQ8TaYVUOVP+YZHU=;
	h=To:Subject:From:Message-Id:Date; b=deWTTV9R1aq9PyKioNtMbDsrP0c/c1wSqyJr2bVwE4jUOX737DrMRvDOl/tI22YsXMANmqpqmxrw9BUhe/vINNETucRFoxyTM2f9EDYMG6G2qRPfEiEWs+2hjSnoWFie56ajps7GwRplgaiGlB4gjt+k4uF9RbCZT+jcIfFsSt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLPfPD3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLPfPD3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3062C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777655253;
	bh=SO0bGM8HUED0wR3SRO5eu2OwGRMbQ8TaYVUOVP+YZHU=;
	h=To:Subject:From:Date:From;
	b=JLPfPD3rnXQ0hwjS1ydGoFujzMP472/jqyAecS81Qoeq3px0DKlHm1K9MaIA2I06b
	 ZDl4s/k5n7/MBd8KWxB+Z/G6Vi/ZooTd1mgV+JuDGDx3n7eBNKGg/V/3vTkArZcdw7
	 q59xdgdTAlt1w7mS4WJzHHB86eWcYYqPW1mIH3kE4jgD/K3YEnJuzzzv6PfEMNS0WO
	 noEvxpQLENBBHvN8aZxoFoNDyU6hwILOLKDjADTHN4y4YQpOEFjcxJUDz627cqJIbj
	 y44TSQDGYCqELDHMjkizYknesSM+khKIs88ZlhfWrEVbRCT6yj2aZnTojNacfOqm+g
	 q82aCJQznmimg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F45CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765525368.5007.7349492009386888753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb31da921bf4be1723b00db1a1272218682905057fbac7632bab3c2d31553d92
Date: Fri, 01 May 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777655253
