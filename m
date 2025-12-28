Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4674E225A38
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766947434; cv=none; b=K+DeY+rm7vnxriZoZMjbhd85v+gk1T+JMlGMEPrLhE0bihXIAJ4OBtk5v8hmzo3IYISCo9KuehRR6x/plVfIaDcsDjZjE+W6T3YDnj5lvWXwOgxYEgSTPHVzACyeIeOGtZqMC9cqKllTVzgWUGs9emnRvLVSY8PWhDZ+dZhxa7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766947434; c=relaxed/simple;
	bh=xSUATZDg2xOH+EYugKIfRTfm7nG28ZKGNQmjMIt86mE=;
	h=To:Subject:From:Message-Id:Date; b=cdwZQSeA8HBMUHHJ7LOhK1tKOwPgkUlssNtXd4wW2SCGRR4+k8edQZC7uPsAtl7qdZnMDF1L/b/uxZ0BzLZahGCAjJ+zaz5bTfXD1a/J3Y/euD3aLakj0X392UCHtdKgSn6/bVQj57oR2+7pBxQOHSAY7WY2zFftKlFlkul6bAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K09iAUVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K09iAUVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA939C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766947433;
	bh=xSUATZDg2xOH+EYugKIfRTfm7nG28ZKGNQmjMIt86mE=;
	h=To:Subject:From:Date:From;
	b=K09iAUVMlkfNTGhOPl3we7SnINYdJeR5jPQrVmXpJL1Lwf3A0fLO13ecmwP4TEjZy
	 qEndOkqU79dxH9fnbHT/D7ur1NDocvbwC/k+y+eE6XQbxYUDNERDtrTEYjaCJmLKjV
	 aaDHfWxY8MHRns8KN7gHwuJXo3kYl6Ow2NixFZdSjObWmGHeRC/SirluoN7o61AROK
	 M/OhsO+gd3wbXiJn7Mghg2+htCW9JK4oHNTVtqUnYw2Gr1nd9Qke/ddLtRuj2yZwvq
	 6+RPQlmCB8HR5MXuc4mQy0DyBUFg2WfkzQ4UwgmF52hfi8j3PImGToDgJa59IoqbCk
	 mjfC/l04ISEVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A424FE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694743360.27069.8523089287889354428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec873d5f69f6e5e2a2ec9c61997100800495a7947436563521c2a71106772064
Date: Sun, 28 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766947433
