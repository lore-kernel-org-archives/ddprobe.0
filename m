Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A02B47206F
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790935234; cv=none; b=aFEkR05wFndlwAVEVbG626pMtMn24T8KeYxHLPhE+6/R9fZPcrlQYyQO65VDvJzwzHX3KoWe1aEB8bG9Iu8qBZcuzAnLxcxrurAUZchnPYsSXxluvl995MBJJCGRPu/ZDSxLMB0B8Z+iE+cZLCyJP3mYRhKk9QPWFleQ8RYD3HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790935234; c=relaxed/simple;
	bh=GWFxxkXxMok+x7I827/JS9zHeQ2QhGRMcNubKaBL5J4=;
	h=To:Subject:From:Message-Id:Date; b=HuFZ2RPCa3kjtmxqk7vdOJ0WFf5TIAcvaqUMwVedpCpzU0XM/SCK+9drd/yOxN8ImlsgNDJnYHpddKLy+NFiTgXazFFx0+9H+y9HFKx7kNyIiyRVo5W1Xk8fysgpMgElm3olLG0o9nNqd9DT9H/2o/4ZvJNDs2CYNMY9iBt7yAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8N/zdAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8N/zdAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5A7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790935233;
	bh=GWFxxkXxMok+x7I827/JS9zHeQ2QhGRMcNubKaBL5J4=;
	h=To:Subject:From:Date:From;
	b=o8N/zdAUbZba+LIfwftCqfKAL0m96NrO16t81s36NnBhymsXCoJDvQrMQMYsriqpc
	 +K/2awHkOV/bAUd9g2GQgn7kfBX1JN086HIp7oDmGjQ2pBFvpaKPsPUxMmHm8NeQ2C
	 auEOM7SSt4a0Zlldi10r5HkRz6sYQdMLbW+ey4K6JL4U5XzN5yJC72cq9tX09EzFAJ
	 XBevLQq3L6JfyNW3pG4tkmXTYfCnc5Eoztsbpaat+aUe/VgCMu1xngM659kLVip1nj
	 wJ0CGP9LyY2UtQVY9wXWN4X7slMdr5EiAXyBI6Mel9LJwZqydP+qkFucBA4f0s5D0z
	 8j9VqWon4hVng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB50CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093523369.8308.13285946379975399610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8e719492d7742b5609a6ab8c97a3133107bd761f1901f73e450bd3cd9b3256
Date: Fri, 02 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790935233
