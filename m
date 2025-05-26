Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3F75661
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748290794; cv=none; b=b/QrShrXLt9sMZG8RBvq6i7L2bcoUiqEbEIAIaN1tbV0QfjCTv4NC40v8mTZlkKgIGpGPeBwsgzHRLbbP5uAIv6nErdu9rnJ139UKGXOuLqPez73715C/6nAaF7RnKRG/SObBKld1yP838sSMO+lvlbjOyFT207RDlzdQOtNlcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748290794; c=relaxed/simple;
	bh=N2u4TUdldnEe08E1mZyq5pBM8qfKB91vzSFLnOwgM30=;
	h=To:Subject:From:Message-Id:Date; b=M2G+HKyG6+v6vMkaAxPI8C6vnieKX0dFNHTfNFi6/8EwVuBSceDkYdQ/76QeRZh+d9aW1210PSPS1G39C8U1zq6xyqjZf9ZLINjj8w3zsbsKCyui5nAi+ne0PEp0JI8h9uODAcdJ2x6EWk07wL9pvr/sz44S/keAACVvTJ4sIus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvqXIe1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvqXIe1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EE5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748290793;
	bh=N2u4TUdldnEe08E1mZyq5pBM8qfKB91vzSFLnOwgM30=;
	h=To:Subject:From:Date:From;
	b=pvqXIe1X0vUb55O/0LOROduyio1mvM4XjD/H8iEe3GVAsrX1Bp2arkYZwziOZvqKu
	 /JnTAp6fMporX4NTkcYcHMdX7sQlT0R4Yr3z8SDgKIbRWXR9f9+1Pg/SalnMnyvbDm
	 omaYxVENzU2lj+F8iIpozsd2Tv2gaVm438FYpoybLTAYag1gvCYTTCPsGE51Ju+VUe
	 Jq5F0oK42cCgl2QVE7vZ2r+i0iA8hYR60Gc5g3eKF4+vu95AbLY74a+aH5oD/H4gaT
	 EH7/gtbxPo2dQ7j2EEHk498wdkskZqTweXZseAyOnW6QbWqkj7l84IWcNHYbdW+si1
	 cqasQLsUVnmeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F4C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829079357.17973.1523645584760855909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2b85204e234bf4d7c597d2f3ca3424de64b35550f3175e1e6b79d5e200385b
Date: Mon, 26 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748290793
