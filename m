Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377791CE6F8
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725648954; cv=none; b=cE+MjDA+3ZJ/nv0PPQK3so4f299kTYZyPcwXlcLilP31xdF/fBI4IW1fK4y9Ll7oh/N8PMI12mXbISEdCKRPuzaHu+XNZjnZquIv6aCg+Y4rm1spzKSnqxMCwLsDRrPUwop+sdoNFS+WKjvVE3FwgCqABwic04R3Hhb/LHW6GnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725648954; c=relaxed/simple;
	bh=+9aWHFDOD+ORcZ58/i2E03TnSkxnKwH0H1zlbc8ImxE=;
	h=To:Subject:From:Message-Id:Date; b=IESclTOJzcZwirz2SuPuNJVpI1Dt0EQjM2q9E3OSRSmuw6i1dOMXCIWCB2QIP1MLscbN8cUKLrNIYZtfMh/Nvk/LLmevnE8lPpVsRd3zLdLNUnoKRFbpSd34HQfBEBB7d3ukHJYWrFUIiRG80agVMGiZ5fu/q+pthF+q2gdkT88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXrqSPVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXrqSPVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0367C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725648953;
	bh=+9aWHFDOD+ORcZ58/i2E03TnSkxnKwH0H1zlbc8ImxE=;
	h=To:Subject:From:Date:From;
	b=LXrqSPVqEQKRXRaeu9lPgmCmPkNLaa+nNpzArYklmFeh9jqJJ8eLA8oBx/kzGiHBc
	 y01pnASWK0u4iNiAeUXVn+nAHmomOeNckjcu94kXoHQppa/ulY/Uiw+eJMq8P0eEe6
	 XP687lvv0wrk8Cgr+NosjOXmN2pv91679LR/mcwQR78rQd3K8+SzIQWCwWfwX5jZQq
	 W1x4idJcKtSySnoRnIxjUWOT7GtvFEaWKoYX6+RX1ug9lqBavQvD2aiKsvrJ1hDymd
	 Qy0QJnqbez5eiyNnqD02X0rLm4dRq4Yx+LjjtjgSJBv22Bs8EykmJDr4hiBTmBmE2P
	 j2TcMXvink8QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23BBE6FE41
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172564895365.8283.11818810280713640376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12d945c70259a2ddbc8c8a6473b9ddc0c64aaa5df27c8abcd989a8f7cfb6e5a
Date: Fri, 06 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725648953
