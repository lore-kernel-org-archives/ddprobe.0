Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2F6622
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713533423; cv=none; b=LM0tXm2DMRivOgZuDECGV1g7b2jI2APV5Jfo8DsOJKBaAhLpbj55MM6X+/1fG33FDtffQtvch9166Frp34fFPcSgeWQK8XdojCHkElkjaon+r3bGgs+dqVlel/P1O7VPd8Kg1n2cAcKFPSGkGUERmSkUTH5Bmuv2g/BK8IempOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713533423; c=relaxed/simple;
	bh=V2QDvYuDAeI1JXGsk3q7jkY2hbfTQ9Zjx27HCEdgJLs=;
	h=To:Subject:From:Message-Id:Date; b=kTQhp4kBJgjb2CHLRLAx+sCneskW0TWyfRjHyngHWqOKjPsE19Wj1vDEdt4ltU2NHJWl51bNCl3oxAaQieEh7KJxePii9rBPRkC9xEMrjd/LUbIQGxcpUsHzfhFIDvvOZgPDZTL4dIdGL3O58jrQdaNS9phuS1rtZYz7Xkpmquo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hr/4Hv5b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hr/4Hv5b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01C5C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713533422;
	bh=V2QDvYuDAeI1JXGsk3q7jkY2hbfTQ9Zjx27HCEdgJLs=;
	h=To:Subject:From:Date:From;
	b=Hr/4Hv5b5gmmBB51UEOlRxM50UBWvMmnwq6ABm+ef2pGmNoY+0I0nQbFdxAiCVDIy
	 ArxUILoECYujHSH40RvMK9m0/7Jdq/rJb8oBjRsuMPAJYV/JW++fzDHMn8nrYQTErf
	 itF+wTfENwRgh+zz6OUWbYKCd23EzqV0Pe0NjIBbh1DBYkEWkM4Q1jyOfxanhrhcg7
	 5ZIw2f2CsLlKnNgDHwWMLhu72auHRJkw5Q4ffqSoU8p3VSA9gKNbVM/TSsKg1WMkfE
	 kMNN3GySGyg/7bAfpqUjZMmzSm9+dgQWx26ZKxKfUEXdgdN+NJAguR9xVnxw9fGYE0
	 yq/4//ppfqkvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF67AC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 13:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171353342277.29542.4669790010697597353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d097fa1e6423d84b83d7b468c8b73ce47dcd75f379d38ad10704321bdb00c073
Date: Fri, 19 Apr 2024 13:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713533422
