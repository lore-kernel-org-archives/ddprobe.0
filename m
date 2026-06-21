Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4983940D592
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782056194; cv=none; b=RmCyWgBISOjtF1BIh0g2jaK/csvSCByM6N8I9Hw28eW2cMvgqUTb7MzvolVbSburL4bxssZo9FTK0bAcpOzS82Tmsb/qz8+277E3P8AyyLIX2sW9Tn+PP6YvKS5BqfD9yrq07U9O35UuTm7+NrjCxIdEQ3PtfPlZyyQpc7zyd3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782056194; c=relaxed/simple;
	bh=oAyLqpcBroyWkNlh1muiWgfb/zfv+mdu1cZ8nszTndg=;
	h=To:Subject:From:Message-Id:Date; b=TfCV2VR1Bo7apHSi25uezEktDdLZt3PpmBpXW4BfnkntdKNZrBLjBvkGMsQnXLpmN3A+1KBe+wbwCPjuWYS/rbqTI2vhtdP/aJyJUf8/VoqB41ZWAi9YEuHvwmYlt0Lzj2NkZFQW/fEt2i/bHeJJoR/aEnSCPPwwVRyWNEFMQME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmgNDbA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmgNDbA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1492C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782056193;
	bh=oAyLqpcBroyWkNlh1muiWgfb/zfv+mdu1cZ8nszTndg=;
	h=To:Subject:From:Date:From;
	b=HmgNDbA1czWTSdwKZSXFzReSOblgB3hFw4IdsU7F7DIo3i+NrGjaHTwlI4aQPz6+Q
	 hlLMcNBey9cbx/W4VVl6CNV3DhZ/YwzNwpnVGAmz4J4+abZk9RkOhu1nWEjeXaWUVj
	 /zlf0Elp57f7VhtYQUNWIOUEgakan5RTi4umWqKHTMWy8b9jsStHIt/LNdomvx4rxr
	 +z87dD+TbK2G8NyHaPoTU9Lm14j3a9Klm/Jte5dGvxzXo+vA0oacgeGxcCl8BIyGtD
	 /kfjvGFE5cdiAv/hNaceKndC4q8e6FRFKKYm3CE8asU9kpU1430xRhVmGYWYxtTRhM
	 vv+pOc/aCoUZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B657ECD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205619371.28998.10406157374378266493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74892b5f59e38c1f1095ecd4739f9096353de6a109873fc82b4176ca55af4f0
Date: Sun, 21 Jun 2026 15:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782056193
