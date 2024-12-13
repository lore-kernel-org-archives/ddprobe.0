Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225C53207
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734122754; cv=none; b=gWN4raGhywISUHe0rMYqS293l4S+ekGkh7yyoN1uedSvdr9rfV5CCo09Uv0AGARzkTclmb3pPFfGb9t484mngg+U4U5KSpntkoHS/RKnPxTRnY3IkS61UTy6yOYi+dO9kb7Trsl5RxPBa7CVkpdKIkGunxU3po47LCi9D503Yd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734122754; c=relaxed/simple;
	bh=0daPMBN2mwOfnSnYnXLkN1sRcnfUawGvvCnlpYr3X3o=;
	h=To:Subject:From:Message-Id:Date; b=fHbl2A0ZXOsaIQ/HyV/aYawCTICLzHuVk7GkhAWkf3dxtaf7uq7Ejwd/ykYwnhChAm90Vo3qlkxFHZ7HHUsS7MxNW5YAa1mipnpFZ5UIn6TN4x4Z5E6ff2aLOiAV9g5X0FXm8Hpy51QHM5rdplpjl0H7ZsDdcDphgiFSKQIi+a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+NgmIcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+NgmIcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FCEC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734122753;
	bh=0daPMBN2mwOfnSnYnXLkN1sRcnfUawGvvCnlpYr3X3o=;
	h=To:Subject:From:Date:From;
	b=P+NgmIcgZ+8nzYZkeDkO4NlCzEeITGhvOaTDPTq7zvMgY+X74YADqcUQQIjOdncM4
	 ff3BS+pyHMXCfbMzR0nM08usoHR5tHP/UehLEbxNcU+cXrNMMN6WN+4Yax9qysFRcx
	 33VNcsXzreAuGit1jDlpCDJqbaRQ+hvSFaIuD11FiuPvzgJh1VzO3X/n9DUHdozwPe
	 zeH5ulfILBLLMPPsLh6+phH19gTQcdcnzaqJEgxXIrH02tta8ok4Wxq9FQUaV4W6bn
	 NfNyxXZ9ItnTViWQ3fLt2fWBF92BzAGtsWo1CaRsydCMkXqOA+YWCsUO/HfYkZ86Bb
	 BmbojQBtFHRug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32ADE7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173412275363.19829.10203562972017372447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7815063f39e32278e4a2596a02c3df1c164aa57492d2c428b307e5eb5577866
Date: Fri, 13 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734122753
