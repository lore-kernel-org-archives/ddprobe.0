Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A26F377574
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777536454; cv=none; b=QLy9f7VOQdlBoG+oCM5gU2mGiZm+wwDAB1keU3/SD++lTa6sWSvblrZa9pEGtGCMunuedUV5a1y7gsmw6egk6DDa1dbFBD8BzmFZDyi44d1/xbc0Twy9VGgm5QsLN0XxubKPZcPAjHmfW0NzLX2k2GSDdUqQNpYQ/upbQ7hOp2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777536454; c=relaxed/simple;
	bh=npZX0T3RNU+mwgaOmhAtLxoqiDP4ZgjJqu/L92lo+IE=;
	h=To:Subject:From:Message-Id:Date; b=S+a/BOEqYCCDEt73xBWdxsIvuNl6eGF4QkQ6MH9v/vPcX8fUonu2DEXNqNrlDeIm7t8naL0utBL9Prd0OCutHjN2J23MiPWqX0AxWr+FkbDao5u+X5nRl4AcRcLh6MxdS7lBcTIgLTRLQZ3pUz259vuAMoogQO5cezXbc+MhzvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2zWT2b6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2zWT2b6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7370C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777536453;
	bh=npZX0T3RNU+mwgaOmhAtLxoqiDP4ZgjJqu/L92lo+IE=;
	h=To:Subject:From:Date:From;
	b=L2zWT2b6UOxUurVTjQR9RrHZyLsI0KMEcW8MGC00xUubYJgv3ngrDweEVmJAtC+a8
	 Mlv3X0UlpkWE1a39d41bTL5w3OWw5eoMkOUjdvE+mc/lZBA6Ko2c9eE53PxaBC2ON0
	 w6JxZvm89S6JSDHC0uvdrVNF7hrmMDQUMriGh/z3jWFiqYBUKBjrh5n2sUT6UGAYRc
	 GBRlEnSiBRDCJW6yhakS6cCmQRMRdB9Zee2tBneRCLrt0dHp9RUUmTU0nszirdi1It
	 wyvO4fKxBFxxFX8kXPp46UdDxUp9bsjDwEzjjPS/qGdF5QBsOL8CWT67R8FvPQLhG+
	 TuCVn5Nz1nEXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EBACD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753645368.24741.2351126983070710207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0d3fa267b4672ca16ade3c1b7a8a73d659465a94039d8469f79b7cd5002a98
Date: Thu, 30 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777536453
