Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB2C2690EC
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776583054; cv=none; b=Mtku1aZp5ujPRswWlnkE8Em7z3FzJJWgYRJ7z3WQBRQ9KfPdcw4jyjtOnHNsGsZXcj6b0eUXD+dGMl1FIPiezlFtyW3JQI8mvIqmmAanDOYxL++F04Jd7Rs9a7wuH8v0AK7CUpeBpkSNTvr9+Z2py8APvaQAQJk1D/BvpZICDfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776583054; c=relaxed/simple;
	bh=tNZBxgF5evvMxufOuXK938VaEDEU+CfclgPPGszzHHY=;
	h=To:Subject:From:Message-Id:Date; b=cFB6nBS1CbFOzP2VRmts2yKSN7pctjFpxV33wvlfZ6LXjUjcSb6zqUcx77EoY+r0WNbGAfXED9OCY0aMGuzu3bu47leydjQ2VSwoWRsMus+R+RAgtO6jOP/DvYIovDvxGfo2km/iqlvqJ6cmj0rQ9ACAOigmZycozJSicmonWMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+clwVop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+clwVop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7F0C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776583053;
	bh=tNZBxgF5evvMxufOuXK938VaEDEU+CfclgPPGszzHHY=;
	h=To:Subject:From:Date:From;
	b=d+clwVopVrrZBa74nPYjVt1nBnW0ijL6aN3n3Fd5S/k/JsK04O9FOouGnIB3Z0Tfa
	 jAtL+74IGvXm5U1hXyufb8rnxj45lVMNImK0E+2qE0Rm9vdPGLe3PmJtZsGQAQMkiu
	 6vtgJzBK0A5pleiPmiYD4HfEeBzeGQfdAHkFQYNAVdbqjWV6C5BhcmoYmySBGQ4wzw
	 pR+/hFHoq5HY8yRcvQEuGr9W6G+vMJ54+jynjkl7PloIny7QMXGoe1SZzTg6SKG8gZ
	 wl77G6dDs94pafZl4/GW8Y1Eu1wf+EER0a89puI7tC9aLvWDxa1VZ65bszbei+w7gI
	 0L+4DJWBJ3FvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAA1EA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658305368.22847.16028765105383070513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b278f2f92872992b378ffa98c5175cc1b2907320287fc2496f3edd072911a3f9
Date: Sun, 19 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776583053
