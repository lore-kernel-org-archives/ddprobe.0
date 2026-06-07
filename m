Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC602874E6
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780818874; cv=none; b=bA9R5Y1Mu9OVGEbhaQbIu6CTffoRi8zLaCJiekfufeYWqILjrFNPm+jRzU91E6T3YqhtrBZSwoG+ok7r0SQO19Dq890vAMlphEjy5h1F+VNtAtrzrbADcRRyXbCy7fbxF9irZpSY0Vdz5urpL3xm0Cai1gAbUeVNfC0VFPTQDcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780818874; c=relaxed/simple;
	bh=C8VsEOOTQ6CIKEFPe6yo+pd4Oiznyhus7q6fXH1m7H4=;
	h=To:Subject:From:Message-Id:Date; b=pJbA8TdT2BnnMK1GUjmP4nbfsBiUgrXlRccxDuQsp/b+e9ueme9GUUl3lqAmh/67q2+ms9ukKSgqF76nf9RTlboDL5ahHeTL1X1KWMLjyBYf5XcRFyGix2wS5+HiEzWDTsk6uMNFvjFlp3umdioVNGroylZ3czab0DRJT6qVgKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYWQYLtR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYWQYLtR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C440FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780818873;
	bh=C8VsEOOTQ6CIKEFPe6yo+pd4Oiznyhus7q6fXH1m7H4=;
	h=To:Subject:From:Date:From;
	b=aYWQYLtRcvc8/D8CTQ/riMH30bDhe6XzJ2cHFSHPFsbsbLXuvxa/RpcTe2lr20aGv
	 DkLxNZL9MyOgYuyoipdBH3dzRbty/Ph1OxFPIommC/Gs0lOxxKB0356Xh4UlXEa56o
	 LUu2d84HhqctmYKc1TmrKZt4401CyXFSaeAR8obwsSrmhfVIp1g3hEavTMbj9NN/iM
	 BKbrHqx1XMpxbaFQRBHShVz/4SgQPhu0Xupzvk4SPqzTl58LvjrGLM/vFkpXZ2zBsl
	 0axFlod4XBVMAXdPwl2YQLrT9vw6r6igQFIunSZgjqL4eOSvX0g27yo0AcFL5asMBI
	 LKFwlxiT64Yvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58E0CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081887370.4769.14100461154620415814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0dc28b23f5df99933f0dc2c7954608ae164e70797d0ed411930596f5793b0b2
Date: Sun, 07 Jun 2026 07:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780818873
