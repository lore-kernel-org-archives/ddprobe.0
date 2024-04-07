Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D201317F0
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712473096; cv=none; b=EIJ06CUHXOLYM72tktWKqviM9jy5RTc2KHUvXUStMuURBbCpxJNBnbg9CCv6A/3cbHB61Ny1zXXSKF1xDZbJrmjuuyGithcg8MukwCEhtolqDxG5k8O2DhRYtyBpx1UrfQgI2FgHI3eI2sDSyHX06GqWPjCFjHcLfT+Cox8uHA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712473096; c=relaxed/simple;
	bh=48AFq3cy8M+fdGgiyNceDkEcWVMyIQodPNlIOvVr2e4=;
	h=To:Subject:From:Message-Id:Date; b=aGK2Y0mXpuKebSgp2w6pEsbK3NMUHClzctLKTXzypyZ/d9tcOo0DGRCyIZC7+dih4VY/87n9GVmWfsumjL/dAFccoFCU37phx1Dq4cx26QY3Mn5lYmRYbnwSRMuW5YQl2VuI2li3liJNFu0KGpSP4JpX7cromk4JU8VGTOOMxzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJuFYXdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJuFYXdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A254C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712473096;
	bh=48AFq3cy8M+fdGgiyNceDkEcWVMyIQodPNlIOvVr2e4=;
	h=To:Subject:From:Date:From;
	b=PJuFYXdSCuf+/jhgARpBJZ3siS7yCG/cdSvWHQ31WjA85Br/HkZPOSIcW2VnULiYE
	 nXGO1fZzaZG9eDg2YV2DgBLiqsH4Xd57uS9oFOIHuiEeozA+NFgLPLYXopDE8heWg6
	 KjYsU1BFFz9kTsBq8bkzvATdY4+JM+Z7mDkun8jdGZyzjcrxttjzN6T3SsKIX9sIAP
	 +UTbc9/rMDiqDdsPRvbmfTOSkF/WFh6GEiWx9pQaTog9jH/hGXddUcqSaTabBEQ+mU
	 K4pkopGdMHSipBLgY2C8/7BjNwU0qFdZy2jksxYajGPBJcfSJITftiUbAzqBG2DyM1
	 v5vEqx6GccJeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64AD0CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171247309639.17236.5353664400820773136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09fd295c67bbf975b104484460c00af09b63fd8789eed87deccd68abe9938af5
Date: Sun, 07 Apr 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712473096
