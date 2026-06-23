Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAD740D596
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782205594; cv=none; b=dcePKxLWIU8wOii7kYjvdNYocBVWgEOPvMUEqTQ6TsWa624qEf+VHVEIq3emvIwcO8gAoxe2sL3XnRb6G1pXj/iMmaALwS1B4ERvd2wUScByP0zuZ3wQHXeB+GlyYSOcO4zrIfgW7OSqgqk995+Y76n23RttqoTFiiFFAAvPbkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782205594; c=relaxed/simple;
	bh=eFUHm5T7YZxD7yHfDlBlszJhllYyfi/P1BgXCJnmgtk=;
	h=To:Subject:From:Message-Id:Date; b=M5WDn5SC96Y2xfFjb1LVDMwTEivJNmJgMYYgxqGDnR1klNQ8KQgArKLmkXuTgN53d3/5jNvAIi7Iw/+ysCIahGY1bxMM/iroVPih0oQBPKrldu/nOgsmIIvhEe++x2QQhmac6+Xsc9NgFkY+C9Du7ylH56yQEL8B2U68YNzFwFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDonUeux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDonUeux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29FBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782205593;
	bh=eFUHm5T7YZxD7yHfDlBlszJhllYyfi/P1BgXCJnmgtk=;
	h=To:Subject:From:Date:From;
	b=lDonUeux9qH7GAF0Md75pnVf/uJNCutF3nL50pWOfRKRzBLAu925rx2fiarUiCwAf
	 4WoNRr1IAbv4xvRJQKEH7NgAyqv2odjZvUUnW1OS6qK18lnOElXKokFC5zLee3P+2+
	 os301TGjZE5NTMB+YieEH3ARUJ9PVnLBfXEwUlZMwrgiwiaDh39nRnPkn70+RywEj+
	 jMmJabbtFWHwSmmTCkF9iylBHx7Pi0nI6mnVc8MDaEcZJdraaOdqcAF95H+s/lw3IY
	 sYjj6bTQvE0uFo3QLZTKGwouj0o8l8u9JOhqhk8K5KMpTrb5yhfwB5H1O+yLWHVDiw
	 ZCbONuiI+4liw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4265CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220559372.19801.3810019585554538936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93a82a374eba931128cf3120098cb60c76dab5c53f69c8d57d995f2e255b33a
Date: Tue, 23 Jun 2026 09:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782205593
