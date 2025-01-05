Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BDF145B2E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736117754; cv=none; b=Jpq22JtdpENyo8Lf9sjhpoliS+sXhKvqfYBPb3WTBsAZnRbLfUDpch5VF2P0lODbsuFlEC2X6myS71W5AwdCVGCpQCW2U1xgVnlIXIsSDhgk2chxnTqQOg8xGeZxpECMGSvf5BnC7xpKAf4mpUjtSBQj/KnD3wzlZXMq1DsRO1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736117754; c=relaxed/simple;
	bh=1qdO1EPB78DRIDy6qO7mYWm4rNlPVeJ+EoCSOOthEW8=;
	h=To:Subject:From:Message-Id:Date; b=L8SgQ2Dvr2DHtiBwqN/3MmEcUc8pULVBxZAT6APghp9seGwfft+yBjLvMvAEGLIu+09y5E3gBUmackNFwqUowIRr0OmMZVmeR9eTKHQRbaCK26qwLoa7Xbf5443B45TKjAwzywQNaD3Z3BQeWZ5tLHus0HTAJeEgCy5o9ry6aZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DU/E06T3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DU/E06T3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE04BC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736117753;
	bh=1qdO1EPB78DRIDy6qO7mYWm4rNlPVeJ+EoCSOOthEW8=;
	h=To:Subject:From:Date:From;
	b=DU/E06T3zje+vNjYDChw2iSOUmfardNuaFWozRLZXQiWPx8oc08F2heJ47vViJ2T0
	 LCXQh54YqSoxnSk0lrfWdlQaU4xbM/lvNlbVUV2bfBSHE++0JzR5qZk9jpxEv7wZul
	 swnIYjI/cRegu3FZUbdXlhhmFUBb5PMlk8qBMkFQ0AaM8/e4MivWPb1xqz2jI/xpRg
	 vFraVFJjoMEjXa2xK6M86A5/GhnMTwRbA5dA0Jc2IuNTdZ+V5Ma/W/KwLRkaf3yEQN
	 2gTsWjM8SllSBCf/HbPJMQgLz0Zni9PHKBF/d/tbtupXZEUI4aUwggnGK0nP9sgGbS
	 IgCBe+biHsKZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E84E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611775359.26287.8820282540188258602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab4351ecdb1ff7c4161c2ad5d37bed0f5c3e586a3bf15bdac0c5cf28ebf81eb
Date: Sun, 05 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736117753
