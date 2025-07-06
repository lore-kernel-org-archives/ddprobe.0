Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311AF1C5485
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751788794; cv=none; b=Kc6SVPjEK4ntyUfbUcQCL5fcqc5SNNKJ8GuZjuOpL1TYOcHYeAKe+JhkruXpQc85tULN0o1EEPPgSK8rOEkWIyiazULGefRh/xQDR/ag1iddevtFA7wHbVx2c27+8Q6YC6wzCnb5xq37hHkFzgb4rqUwbIBHXpfeWwkYrw3EoN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751788794; c=relaxed/simple;
	bh=Wkysdu/Bh45jJWi3NTiTt3zbIeFd6szkhg7X+uMPr50=;
	h=To:Subject:From:Message-Id:Date; b=OWmGJ54SlQd06BWUcpONcV89Z28kmgKzrOWa2Kg4svymwoWN1fPDNwITRHkHv2UyzKQNuy1iYN2ZcUph0XmcP6jFZuaQseX3TObyg4fkUI3be1bQ459xSP8YEmOQcQO00peNd8AnjHGUwNVgSVsK2R6vbD4eBP4V2/rDcwbX87E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMgjCsmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMgjCsmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2619C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751788793;
	bh=Wkysdu/Bh45jJWi3NTiTt3zbIeFd6szkhg7X+uMPr50=;
	h=To:Subject:From:Date:From;
	b=jMgjCsmTsjPNfJc9RBMGtBC2b49SpEjaXaTGrfjXiW8WE6TTmte5EcJvVKj++P3XT
	 HU8IwnTYVL88qEQXOFiqKBuG9GNktvrFA5B426c58VCfIjSYroGQkr97rihnWp14G7
	 B5+X1k3mMQ1bek0s47f89vwiZQbSbESvCMxMXn7JvdgKFA+SeaCVlkHbx4SnLX8N1n
	 F5zbsB30eb6HSHRBsa2ATVs87tiFGnr+fu0vK2GNhloOcE56l/ZrXvqb8O8GSnnQL5
	 YAORSJ4GlESSemN5aQlHJ0+reWiRTRhEY/nBXe2gYGROjwc1CjSKVekrTT7coOAE9M
	 FlL3e9pDwJQlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924AEC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178879357.11420.12664878044509025886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5ff74c843564c29f28b3b752a6c694daad504c3ba05a47f59ccd9cad502580
Date: Sun, 06 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751788793
