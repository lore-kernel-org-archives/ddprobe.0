Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB30267F53
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753198194; cv=none; b=AE2lVu8dQE9XEm5vVb36mj/aepxM/XBwDDzfkc/1/GSdz/SKrpbpkbymvNhsQjrjPa0ANrhdTAbqyUVRRMgAbIUGwfS5nBb4vPlAO7K+V3YRK3wY5adhxquZpDxSBnGGJqkgYY0Jm63HlZ5IKZmga2vczNFfWYMurq6Y7DUcBhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753198194; c=relaxed/simple;
	bh=HUit0TtQMm08wWe9IMqL/k1JA1AE2mwB5e73dS3lYAA=;
	h=To:Subject:From:Message-Id:Date; b=kLJynhlKcZ/xZ+8umUXZpkF6zWs0MVPjcKqCatcx/arkmzESQcJvGwUOtbz7UGk4zw1GuztYi09XugWXZF2TOLqtxX0ze8d3M8MS9fpSe1Fg1AIl+RI+eYsHx5nHkLonMvA8Resxw9kJpCYlpBT+jLPUcD6LgTUGq+oNFaRWhl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVkjhivr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVkjhivr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E3AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753198193;
	bh=HUit0TtQMm08wWe9IMqL/k1JA1AE2mwB5e73dS3lYAA=;
	h=To:Subject:From:Date:From;
	b=lVkjhivrqSTTmZ2a8SAwxOaxFWxFMMSaP6GXu75PnK1OwgN9BLsj6awe98DguJ8aT
	 VoDmBxCF9cIC5tZyLHdbGsZ8GGzt1lbGqG63zNn4oBjljE7JFRxhlg03E1ID/8ALaX
	 hmQ+kt9vWtuFpIQHCxAsvmGw0yeRMlSm/x/cclSM3MEwMWndFX4VEGKi15vKUAhmEx
	 lcf9wyLFSF6lHzvmWnGEHYGu808xnq7zWArAwnbzjj2fPwG4jUQMeeXIHS7s+k6rmE
	 6rAVmuc3BCF4cbUR88X87hNkV9U/HihS5toKQUNsgUY+yF7qZo42lBwvQncF1B1YbI
	 ug4YdCbMBeW8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163DC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319819358.24864.3900594886938435593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7521fc5c019f9f7442c92fe1b2a6776b0bce73433e254f31a9a7ff169131007
Date: Tue, 22 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753198193
