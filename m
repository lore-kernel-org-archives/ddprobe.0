Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142EB1D63E6
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752482994; cv=none; b=kzHjAS8AmhNJwyOrg5iIHztiwh7zLjdIt4r9Di83DtT6yoMwBSkl4uFIlOafYOG9g2KzTp+kaA+Agz6D9ZQmzLTi8yky7QlrHrJiQpZbHJXTrxi/GLC7SY6m257jN23xLgW5tXcwKciL99p/f9TDPzNTV/iHrcM+bZANNT5/fJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752482994; c=relaxed/simple;
	bh=Xtp3aG3Fe/IX2LYPnjisODQRBqtSau+rf/OqQfNXFMc=;
	h=To:Subject:From:Message-Id:Date; b=r7zwcrC5IbceIGemCvIR47HSPdSG02zk4EABK6FMNMZ4ByrThR6dMIzLGUfr7SEeJHb5fUksuKwMQruBKXnWl/u/+sXsVi4JQ6AKcziRCQUgt3FX4eBY/rLuuyz5+3hS5xD0v1C/3cL5g3nyJYd/FsTS4mXvAKw8ESQTavmOUWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7g16opb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7g16opb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA31C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752482993;
	bh=Xtp3aG3Fe/IX2LYPnjisODQRBqtSau+rf/OqQfNXFMc=;
	h=To:Subject:From:Date:From;
	b=j7g16opbT8PAGoSpraiglK+1AM9auNwNbCH8br0/L0OfwApT/MSYnEYbAOJq+576a
	 1mDncxzps3ZgZcBMe5Dq9MCnbAEs7+HZXMNbia4ywoSwM4b0qH50S7SAu9HHMDu/0V
	 ALtO9GLCrJ/jYMvDPLrcbbbnqRpABXmPHVLdpTNaLsqU3JukZ/eM+eejlpRWwOnBbR
	 8lfgzjOwcRPw/2vG9NggJqk8WLzqnw1Hq/ns1cg1a6zrTno6+cY+2rd9ZlmA8eNQHN
	 e7r7kuiB7UB+/4hs8mGcVnsDU9WIzRt3WvI3KQ+2K8qxl28pHD7YU1WwAnYQON9+8D
	 9N3Jt1zlyld2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37AC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248299357.27949.836526676845157318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d8b11d0ff4c23db4f65339b018a8f67bd42b26e973dd59e351fd6d9cec58ee
Date: Mon, 14 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752482993
