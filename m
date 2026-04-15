Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419F139182D
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776235654; cv=none; b=hjQ/5vO8Fb4DK2fB/OUgPeTXhH9IPXTSlDf9bCNdAPgQFRdtU7cj2M9uaXsFhUmXl931ZavK+/PvDttKE6PqllafbKDBMpwcZnFkxNNBK5FTsmSoUPo8h9K4FfiL3/OSW7KoYJf56qDjfv7Wx71tVHw10pye3GODivkN9bBH9Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776235654; c=relaxed/simple;
	bh=svOzNBWm3WtgXof4Y/Ym+hhDtViQyElJLPzwzoqE4/A=;
	h=To:Subject:From:Message-Id:Date; b=aO4OfRoqxhLoGwKEeGBsY8Kf/XzmUxlKIMVGj9fBVXaFqxLMLflv0z0kwDO23kOqECCsnhBzLSY3w7ejgTH0oWgTU8y59Ht1f4sX54hXLCAu07lNSwL7miBX2b5RuxkMvqVpnGpBCBVRuQjbOBeyl3qNjmI0hN1T3vl6FH56LCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHV8kLFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHV8kLFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EB6C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776235653;
	bh=svOzNBWm3WtgXof4Y/Ym+hhDtViQyElJLPzwzoqE4/A=;
	h=To:Subject:From:Date:From;
	b=iHV8kLFRSwFxgOxxh8eSQbpe4a5tV3rhiNnEaY08MI0CICSe+nMEauzdsYV2jA6az
	 rhyRwwbfyksNvuMwCWozX7HEmtGdpIXP5osUjJmznA1zsu1JJXC7zpKY35Fz+e+SaF
	 wU7Gf1uR8Fe74b91Fl6yMZIS+1ZIITHuwcpeENKjwSjjjNu8HpV0pplR70iIlFecH8
	 Gcb9jqwa7MZudM1NTr8CXvziFh/PwSYnZYOnujWZdfUXdNu9yfoR3/k/khPHIP/Jcz
	 +9XM1HNTmBn4ikocHpS1hoR4hBdD+ag20ErpcZoxaQKLSfcUqQCA6SwK2Yk/5TSOR7
	 K2XO+CyjjT2qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B51FA0C39
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623565368.3370.771464325838389090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d9fcc208bbd41033a54642e48f5a604d5a037ac3a892b47bdfb09f128b08cf
Date: Wed, 15 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776235653
