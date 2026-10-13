Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F141AA1F4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791853234; cv=none; b=B73fZeh1wCdq7byd8LVxydxwrOP+sBE6DRBVvRm3Z5VW/AfdrnV/lJ6ovih2ANjjrONj5kfd0im7OagiUO4iTmOgEeHjRs0zOpl/ABMxsC+ZJEWKh3Ycf0QaOH6VLfl5yEkZ5jxFOxTCfhXIJewNCnxJPQPd48jzNoLUY+HpPjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791853234; c=relaxed/simple;
	bh=ZTdn+GYr50t1ChXOQTTGl+YM0B93eQkWY6dbtIp1RO4=;
	h=To:Subject:From:Message-Id:Date; b=CCnlwJeUl9ktKJQolqOjzFiTDmrJXSbI1VX4WWTVGSILqFDXuM/yUgii30fGlwbDE9KrdXUMMr5DFXjx5XtOZf+TpP4JHWYHypBrOTggrRh1ka4Z7kxVQ73hb2OqHVlTeIdjEJC2ss4XfORgOmQRnzd+FmikqsDZbYE3glH9oOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYeDmvgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYeDmvgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F4BC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791853233;
	bh=ZTdn+GYr50t1ChXOQTTGl+YM0B93eQkWY6dbtIp1RO4=;
	h=To:Subject:From:Date:From;
	b=BYeDmvgp0mrM6ni3ih6AVYCSugcHYA0ee5l36k8RexYBu65Hbd/nWF6HKRRIh8o3T
	 oBb+/s1txGEqQiD4I+P6im0K4ekmmUwykAbKfTkCKuQmvqG9npaPZwN92RjQ+VAGVn
	 GjFnUE8Xsznt4keiGtT+oArQN+UrrhCdgVxnA0sWN2wD5NP+YiB4IfXgkU2vHRjrce
	 xxuhnYsQ5miGkGxCO5hA6cAxNNbLwZjYqHuURqbMTWvGqoEne2Es3L5DSmGnP72R+0
	 WIfBJVsSBtDqGI0MMpQYDxZYzLkauq9mFEMH1anVe5iBfo2K81Qh1065yMbCGD+tCQ
	 D3e2Nn6CxUcFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7A2CA9EC5
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185323368.27444.10724834348330770283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2351b07be602d9a8e2a064f3ff0d645a8e979f52226ae8afd6897dd3629d4bd2
Date: Tue, 13 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791853233
