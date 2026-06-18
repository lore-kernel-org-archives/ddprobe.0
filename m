Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4F32DCF67
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781762194; cv=none; b=bjgUMbHqn0PAqftp4rauZaTPiGe+2drpeQaXyM8tLHfasLwuQhpio4duzhko6FOlcFBuymy+3C+9u9AZEismRJVC3yvuxaQkr2xgEv9nbU35RPbUND7H9O5UmkZdcqUuy9eRyglkr3ooFg+Irn9/KBvMbrdaUWeEeyGr3Z/tB/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781762194; c=relaxed/simple;
	bh=27kTvZKmVzEvMh+GfWSH+icn2ZhF4b3ZpAZkS8ZTK0U=;
	h=To:Subject:From:Message-Id:Date; b=TTM4qGhWdY86fetJivQmiNVfCYRibbvYAtTqkfk+EJOQ0sMw3NCALJeOuPQY1kny/mV3rrf17YmxQq6nds3lWvXzsxsoTmD9zXeINbiPG82e9F8ghptT5OkD75W8mWt+5Iu6cIVLbnA80nl7PlueXfbiHfAj0TP4RRnSixJtsSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpOQZCfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpOQZCfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6439C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781762193;
	bh=27kTvZKmVzEvMh+GfWSH+icn2ZhF4b3ZpAZkS8ZTK0U=;
	h=To:Subject:From:Date:From;
	b=jpOQZCfYayOJAOK2+qIw9fbR/gENXz2+uDAGhKQ2n42WNgOVKFZu9hAlVBn2uRytJ
	 XUFGMFkVNPggvqIrVODg+PPY1ZP8riA5eRdDVQGbuGl85DvmdqRnPYoy2FzpXx7L9o
	 R/RC7f3pTrKr5fzE0RS7KJcH2V3ae2hj3BzkPXbdIggMLrLdSWsaPOyGS2wEqDcr7E
	 Pf/DzvIVmvNjN20v72AMESQp+L7URAux+19XwxzjVmGHux0p0umGtnRWx4SRSd0bF7
	 sjbXc3R4BBktsR/613wEkpxRBHaW9sk+xUcLo9yeRnd39cDjQOJwJsPeRmgsxKwmR9
	 luLNLdo17v+Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8191CD98DE
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176219371.17224.5317019980449781211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 137fd2e51617200cce57ca3b77073d102fc027fc9fe41368105fdae60e131965
Date: Thu, 18 Jun 2026 05:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781762193
