Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA812DB7B7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773976494; cv=none; b=lxLZhDi2ljKJoMX7owUblb1fTHzcqpAEPWBnyXXuNfg9yLnQkEwEVz/0F/aOfv8PavSTAq3VluT0M1bPbS53fhymqejTIeFW3b79mSbm0GFLlhJRgCdl2ULNxcwQMGWDqOib5yY5bG/qsEZNgriI98ZJMns8S/KHotfNSwZwQ/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773976494; c=relaxed/simple;
	bh=rlJYlNPstz3NdFe0WRJTJKqii74PNctn0N5pTiTypSY=;
	h=To:Subject:From:Message-Id:Date; b=mzQ4zY/24thIgci4IGMoLIi/FqfEB1uuxB7CUDcf3TelX2foP6AxocrO6/ehIrcfjQ2zYgmbSg8ytANK42ttCAOowhR8Q0AdjtKZrcmq2Cwspi/vpIzBye8h+t8v6Yd9fHWVL+k/FYB39gUeCE9tWn4EMEhfROttGYYjhBl4Qok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9EZFvg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9EZFvg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF38C19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773976493;
	bh=rlJYlNPstz3NdFe0WRJTJKqii74PNctn0N5pTiTypSY=;
	h=To:Subject:From:Date:From;
	b=Z9EZFvg4wGceg5kRWS0JH3eAVHSELl/4boVXGetq4j39Z73yK8B6N7rZQ/JKCeHK1
	 6wOmosQIwSWnTV4D8VikNgpKOd4qhVpbWiOcpmBjZuA94eDlIQzu8GrOfPwvZCrnIl
	 NJRVBci0CNhFE4CB3QrtEcEuXv6YRFKee4qcqdiVxqEex7/Dy1GVgG0STP4A+tzwsH
	 4Xa38/+dhl70idGntStChS3Szfq6/K5xai2Wov1Cp08XcvFtXX00lkAqN/PdqXsFp4
	 jhOnC5wNAIs7OIDbsIf2cpCM7XFYKwLkz+kjX+6Wy+rYNOE3s43NZkrPmcOFPhxrQN
	 GTDsCnPX3bZ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A6109316E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397649357.18834.17925489853159301456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 485f7ad4348b060804805e847803e82f85f9d55fdf6c2eea675134f34aba761e
Date: Fri, 20 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773976493
