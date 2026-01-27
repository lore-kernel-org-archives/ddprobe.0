Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B222C0285
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769490233; cv=none; b=kGLJ0v4K0et7AUse3N8c4x/w2LRwP5Y7czHriHDhrVX/6rt8bbVnZ3Z2g6YXouhQ/kA7qreoMmLjoElNrHCSFJ6sQnX1bND5Mb3g316d6FzzWcfD30UcARMzfUrbQ4etsLe3donMr2iXmV4IXh425Y1DZ4zkAMQaWOAM4PYNXuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769490233; c=relaxed/simple;
	bh=33ml6MBjUgvWtmq8aFpxxDbnP+GabDFDJvCHZmSkCgM=;
	h=To:Subject:From:Message-Id:Date; b=YMDuPeWU/xcy3wlNEgPYFt0pwMraTt6FU8mm3hXCDqm1QII8JnCOenJWNO6FqJscgj++YN2nIvXD8eMFShK363b1R23UPD0dePGoDO/DX14yyDMLZBtnjDm8L4IWYmmZU+1rMyc5biqgKE2WnlBoUo3/96+QtinetThTCffcmW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eI7FNgpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eI7FNgpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A72C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769490233;
	bh=33ml6MBjUgvWtmq8aFpxxDbnP+GabDFDJvCHZmSkCgM=;
	h=To:Subject:From:Date:From;
	b=eI7FNgpGt8uVIsufY4wctQxho3zp8uZF06l3qVgD57/wR3ayVJPSJ47DDMkh3cgXF
	 p2GlPMCgaLBDgPGmlib8Cmq4b1gs/L3n87hNe6hS+Hdm/eEFrxbA31rCtwkYVCfJ4V
	 k2HOpYhjHd/8k9ueKy/Mi6eAtOzWYFw7DtzI2vR30oRPcDxwXtHC66yP4lSDrTHBqY
	 Scx6HUiV8DGHdeFuh4rA3tgmkp7Xg5uo0afuS8xNxh7km+lfAzhu4ZMDwS+PmaPVl/
	 5bFsSbBkYuzTYYj2QqT7cMJXLVG8E8f4uPRB+cX76wqGc4W2ZsMgANt+kEOrbEx3aZ
	 rW7rNf/amko3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A54D25933
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949023358.20824.10865949948683403814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0852b0be040970d3a09af6c4f681746a22440f6eba09b68626974c07b24da8bb
Date: Tue, 27 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769490233
