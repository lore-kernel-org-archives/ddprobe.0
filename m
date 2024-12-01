Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBE82CA8
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733028954; cv=none; b=UPq7b6Qm5LxXSLiOC75JO6JiXrtfmEJEQWfG7YLDdUpCOryQO+M2pQFwOc4g0UQoGYAFa1cJGhda6iWzy5VuTE5TuojwcNKzE3Hl0bopH1b8QP90qNj0uXi/cxAfQdJYyQRmlwgBVTof9e6w1I0brjTBG6+WdlF7vFQSfdflgO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733028954; c=relaxed/simple;
	bh=iLemzXUFOa7haTMU5vqIW2INaeDbE1bvJ6xmo+eyMZw=;
	h=To:Subject:From:Message-Id:Date; b=DTiA2912d45lpP7JdOCuYGdxbGif8hnPq23vMlhrwWKYT4Zbm/Aa6c98OQN6m4CjypPKoqDpySM9VHJJDivGKbx+5hL0ou87AYKPe5lJnBzbfcLcAJK66vstg+kT8L6W+9hkkitnU3JRRup/RKbhKYXJCSa0wve11j5J/+0gLTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHzOgvZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHzOgvZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8199C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733028953;
	bh=iLemzXUFOa7haTMU5vqIW2INaeDbE1bvJ6xmo+eyMZw=;
	h=To:Subject:From:Date:From;
	b=EHzOgvZ9X+a7Z/Uvh96vEOqYimUx5n9+bBrBJ+owN/aa8uKHkBI+XHah6BAR4hoJu
	 9VxidyjgVvBSKeAJPUMUmy0QRPbEtziLs27RN1HPdEhwTxxr+HHYJdSXhJUJdTS2PG
	 IZ+RHlAx2FF6qboUm+tT6P5u2wiZSEprR3o/d/+ewRtr6hBZ/TGpIeJPsiy+N91PgY
	 L/aoPF11gnre98qKmDB8cg0DH162//Roy+D1zfydoWAv1xWlnGVAJZG5XBo7afAwzI
	 JUOjsmn6VqLGhUS6Me+J6B5bMAzY5KG+SGbRBtPjJ26OgtftGO0e8e5m0IAJzXBkSJ
	 MX/1cZBGeKnpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D3D735F0
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173302895358.25637.3740586018877405920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980eb4ca838122ee3e2e4204c26d1f4c8a4c1fa3c3d18cec9ff59f97158fee03
Date: Sun, 01 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733028953
