Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F47217679
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749241794; cv=none; b=e22mxnIgF/c1zMWnTjCB5dwXIZklcQN4lukf/2nQtZRFSekb32NeNiONhjGLN2XMSLivif8EsaTAjYe2rdewRV2rRQ+bT0UjUBRMueY4+oBRcGKxqqVr6Lq3fxOpDjxnVDsf6qnbp4SYRe9fzE12XlvlHJ57x+tRScxMzi+zNgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749241794; c=relaxed/simple;
	bh=Oip8UtJTFboCYwCPjYYBVZFSOFAnYKXCQLUv6Yetz+k=;
	h=To:Subject:From:Message-Id:Date; b=qqVDcPO8yxCkw1qL6nhUA57tbB2+hyG7Zzr4gXSqeVY3+MGNASKBFR/IDgt/D/w6zQYxIVHz5aHbnA/abas8xW8DMBjCN3NCloMvPuLTiEYXXbFkvnUDwQbKvMtjMKSo3WTVqLIYMOpVC0NcckZxBr25R7WK0V0zHCdERgCtEnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zw2DvA+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zw2DvA+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BEBC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749241793;
	bh=Oip8UtJTFboCYwCPjYYBVZFSOFAnYKXCQLUv6Yetz+k=;
	h=To:Subject:From:Date:From;
	b=Zw2DvA+rSZj2drO6NxrWC/onSFP+PoI/sMXfb9OVneYp0gKFNcaVQ8Lw7B+1Nqtix
	 l3BLsgy52IHo2y1Ls2Eq0S89MKQphGYwKekgmDUuQarSGdRmWPMfPcnyLgV8MucDjM
	 5K3FDA57+m3UuuDgpKoPEuIjIxxe3dVmVNGRuDG9wUY74FgqiSrsqODVH9akk04tHn
	 +ODmuG7jbC5MTdUOXkiB7jCHqVc00vc3VqMwBQccdt+Hg481w/wDmMLzfuRDQbI3gP
	 ZumzCUZN292Vq81zj4lM+2BEDhh2ghaU3FaI3GQAf7NVaW54ih6st+0WaKibDM1ff5
	 U7tzTN/b0BwOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF05C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924179358.16672.15051229755063337167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a823bfa5e9fe80af9293582b1e6c3758dfd066ea8664974d454ef2c3ecf463
Date: Fri, 06 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749241793
