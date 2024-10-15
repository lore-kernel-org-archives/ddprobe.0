Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3C9172BCE
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728975354; cv=none; b=bI/gbuckl4kFMVtVPtS/hsTX4BJfFgGoNTiN+aLH7OPo7p65iaLYcDeGR77aGz6R5zCs8tF/AK/2ExbzT8kOfu+iRQZ1jbEf/qjDvSLHo9e9Y3nAnirkVfQwtWU2pGtlrIDb5/bQ9Gadn3+MaWJJfjncbWCmyF2JwWleBfiOBRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728975354; c=relaxed/simple;
	bh=vbNHXAuoSVAHIkUlcJzF1ZO/e9CQ52oV9eD3Zs1lIoY=;
	h=To:Subject:From:Message-Id:Date; b=D/Hnwdo1urop+XHdd2J8FJsZ/1k1ZbVOC+JSGrEmXDiqrsdUD4YucsQTXkkKPPqqSPrRhGeHzNYLoxoVcG7qW1sgHmlYFwA+u7iN/TMSc80r2apN4B6UzNkdsS0H+paVVSH8hOsosa3z361CFxidZV32REcxQbepQrHvqxzsvH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roObRBsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roObRBsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09D9C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728975353;
	bh=vbNHXAuoSVAHIkUlcJzF1ZO/e9CQ52oV9eD3Zs1lIoY=;
	h=To:Subject:From:Date:From;
	b=roObRBscjsCdPQ6dh2AKAHELROKNKkTxrbGpKBr6s1H8seBinR7TlaFWHdxXh9fmq
	 tzSJjuMXjqg/RGlLbSfQfNTixpTSl2B1MLqt6l7KsbJW/jlKBKdlVe5Gs86wmaBXQE
	 B2G+Z6JO4dbcgU6tRQX0RCuzTjOBoDDxhaxwNJVC4SqeaEKBsZpgdIq7s6KQN62cEn
	 apfpVXJHkJpn2l6bBnfS2wG1Ij8Cx8zcp4dV66FQwojm4zxJ5P2u7cVc4qMVS1r8uH
	 nIwoQzKBIFVmoXcPYS9cJULdJNom6Uc9FusNi17qdYpa4yMVGvwZY9QqMNr2WsUtYC
	 X9F4gXBIgHbuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A8BCFC271
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172897535359.26689.6595554808132877826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dacd8e0f59596722a17c3660c71e398095f51e3ce56656815bc7fb33b2f7da3d
Date: Tue, 15 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728975353
