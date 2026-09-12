Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E25139FCE
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789177234; cv=none; b=p0ilnwCJbztPqfHqsFzV4QHKDDbIrLNXXri+UYEHfg0xLKrgeoqkjU7nzhZDkQBl6UG/8D0xOUJ+R1iJ8DSO3wEflsDHNGXYURJWvVhWT+Gj7Wh4fQpg0wHXCJmA9dNgBgN7VyDR91WlL0NbL1B3RvDYjMqrC55Tt8GFCyviTDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789177234; c=relaxed/simple;
	bh=d0OP/5vRGk2Xf8W96Bg9UcyDu+fITbjRCh0NMOZjL0g=;
	h=To:Subject:From:Message-Id:Date; b=X3yQsQUQLwO2aF1v7uDdxQKi11WneRZhROQJdoRNEllgcYAqUpA4oFFN24JPcaxBsL4rLvpjNR8mMb3iIjpAqd8AgLts76KOtfE9hWlXRlYstkPKf4zTXvrYcX8BCF/4TrTKx59vIEcCD0lAjRLtxFpkRb+uYbw5mUgL9SyhX8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYgJanQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYgJanQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D483AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789177233;
	bh=d0OP/5vRGk2Xf8W96Bg9UcyDu+fITbjRCh0NMOZjL0g=;
	h=To:Subject:From:Date:From;
	b=MYgJanQhFM459xptF2QhGPFCy63TkvhIA/QA2jRqjcNZZu4ZXHkKHlnafnOiWFg0x
	 4C42dw4YsVZKv+nZ5W6LkXPYtK0HlD/mjVn0fZA6lijDCRzDAAeQl/jBNBAdjKIV4H
	 nUjbVnxKmiOGiJzJCtcv17MO6as8CRdM7FUejpZVqYlbEc9wyfxIJp/AQPGXVd72KC
	 hzoNEGFKMXvamY+Fvl8CMz2p2Xbc1u68/GudeZOR8kNozL1jPRr3ZOGoOGzDgr585/
	 idArbbbTKN8p/+xrg0RswqtvuIfGKYRB/kKClo4srzfmxbIFe41yWSXdBV1iUWDWr3
	 haRi+2Pw9QHog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FB2C88E50
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917723368.17231.12882419269427847899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a839bdac2145daaa042e5ecb99c89333caf1c86b11a99a0b287978ab3c41791
Date: Sat, 12 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789177233
