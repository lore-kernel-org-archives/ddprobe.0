Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DBA22313
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717652843; cv=none; b=rZ4VVZeLdPKrFCCkZLNEfxRQwaXLtKEf+oHgbCFcoUldRxMTM9O4pkcsISq+DbvoA2YY2r0SHEffXOA7PJgv/zo7BKv/l0t6E3kPBjIx4lilGJ5xBiHXura7VCTa0EBunJ32ZLxF0gLDa27yz84VlWaX276lLski/tEQLgp2y1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717652843; c=relaxed/simple;
	bh=CNvP5RQGsrd2NgEcNMwx4LeK5I0fsKCwe4OFv+0GhyY=;
	h=To:Subject:From:Message-Id:Date; b=Wl5woz5JQbAfxCwR5gmt/9wlp5B3quH8HzjTtxiakAqaCgwil0rTqzaTlKDaKF8/qihRt6L89hWuw540gy/yRLbCdU415AujOlmvkETbHxAsJUpIxiQudcTjfNkpO5oZRHF+cU8fLyPrzf8zfLq/sKXQDYPC2KUHl/HAUKARFsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPO28UWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPO28UWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F7DC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717652842;
	bh=CNvP5RQGsrd2NgEcNMwx4LeK5I0fsKCwe4OFv+0GhyY=;
	h=To:Subject:From:Date:From;
	b=uPO28UWxiXb0E0WOGRZ38G2dlR9YfsqTasCgZyq9fN/00aA/2ELQVXECmqMl+1qdd
	 8TYmWaCtnIkzAZSX9wwvFq1tfaDJmFChMdvkE9yb2DUDLSzZrglx9cKi45h4/76Rw4
	 b/V6Tgz8Y7T7MQw7lgRYJdSDBv6hYHF6r3K3Z4atacQZQ9Ieuep3e39e2dCiS4P1Hn
	 XI4ISoi4smZ63/CPxJX/+5KutIxU4flpQTRoLDJcL5r3MTcudIHzSJkraVvvrwT4nF
	 zrW0slgLROyNdP46pn7Nlx+rA11aUSVKqYQese8SIgrSP9GJCwLwoTqJd6PvtEnPe6
	 XiKEpTxlqep1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC68C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171765284277.9647.12946984093913427339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17be5b1f8fa120a144a770875fd8499ed040a95d338f1bbc6c4931dd0bdd923c
Date: Thu, 06 Jun 2024 05:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717652842
