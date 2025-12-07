Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D447D098
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765066974; cv=none; b=S5fmXH9a6eN2PNlPZrK++8LzhFVPvLPhNDQPUlKVY8zflbJALLwn+cGeeOmEA9jlId/VRtWziXFkUmNnvo+3nGUrUOaO5KQtnxPC1xcPwODMf9tC+NZ7Aet5iyuYkzhHbr8y1GXonN8y2bo9fCoxQRR1ZYZ2iH4NkGId1ra7ZeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765066974; c=relaxed/simple;
	bh=l3mXn0Ntp4WiymnkW0apGz1Ym7AT3AJEPd3Rt6qpOo0=;
	h=To:Subject:From:Message-Id:Date; b=qdBbtchDB0RNGVEjAMeOlESCQEPvKtnuoZjtwhayX/qsl7cy5OxVgY1oV3q+Rr7Y81M9GwFP5DjND0E8SibgtBYFiVKuyYo27wG7ibTWowtpl2tLkmeH5lVEAXj+ao/lLYuVhJ7pCT7StdvZIx/TI+vmUYt/+b90Mhg1EiJQdXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RN9KQt03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RN9KQt03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF7FC4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765066973;
	bh=l3mXn0Ntp4WiymnkW0apGz1Ym7AT3AJEPd3Rt6qpOo0=;
	h=To:Subject:From:Date:From;
	b=RN9KQt03PGG9paxcSPy3ywytIMLQtuiFAzdSYTYQ5yWcaB1xie5BgQLcS2V9QITAJ
	 RjsyN+Ejsd4qzwZW/JE1FM85bZr3XdLGMIfoKaX+dq/uP8GkeozJ2H3ILycrfoZHxz
	 8Cf0lCwG4EoUtacoZbOqA73+8nuvEShejClp1EaUtNY7YhUIddaxNMQsjEnK/+Imcv
	 7hC114Yei8jVDELZmvWu+tPwU+jgEW2PIWFPPavE57XSlikLh7PeTbW5px/osUmn60
	 sJIghqVc6+Rs0tNYX20tyAVXGX576UG3R5mHqUdFzCIbtNvTIbXdZCzfXcQIz/mbPb
	 NxOhYmo+yK4WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931C4D3B7E5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506697358.17024.5455236195368155826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145f6559a95763ac174311941a50cbfab26c1230089f66d30bf3265a2076dbea
Date: Sun, 07 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765066973
