Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA323134CF
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756019993; cv=none; b=A6Dl+mDHZrsuPpMHlJ92N9cNsXAlF2LY4glTq7hWKtISxuYvwnEWuh5eOiyis3SFiLJ6C3eRuqGpFZnaiJmNHI3Ob3Q49hHzb+YxrHdtx/Wq5sF6u7cL+jMxSiPbUzX0jsYaGKZqWwUgyKXMyKq41zuarbKWGCqSI4DtexNp/gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756019993; c=relaxed/simple;
	bh=2lBx/Y5j5lW8yFOEj7hlv1qM83d3mVIix/mFXCQdP8s=;
	h=To:Subject:From:Message-Id:Date; b=pVSWbs5wS6W6d09glpb6cjiLpczMCCN3pUItQTT7cdvHBw6ZyPp1N0XUf81uZijYx53sn1SoiejB8m9isBAiHABISvyiFGWnG+gpQo/E2SbYCgKp5avgs9WKMmw0JxtaDoKWfLpyhnzSPEHnmYHMpJ7M58s8VK+5zl1D234wTAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqabfI3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqabfI3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E642C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756019993;
	bh=2lBx/Y5j5lW8yFOEj7hlv1qM83d3mVIix/mFXCQdP8s=;
	h=To:Subject:From:Date:From;
	b=cqabfI3RiKdOpbfLKH/OrjMLydWOZ0o+rvUbYHNm3Y4LhH/kSDW/dMmZ1ts004URH
	 BnCJpsSSDE41VUWpe3OzORQbEmHbLQb/fKdW+EbRYlDBy7bZGqhKHMytstUtrSh1cZ
	 RacGa4joZEKnhwURRKuWG67pgdyD5Z9UBZhHX9HLVlkGKeYWZ26+yv1edOtWEZOnGz
	 aLeuga7ESkpIfl+5CLlJIiFOFBCCiTM1DUkxLq93lPURP2sGoc9iEPJNuEiTUDf3Mt
	 NZtTKtO6FhIdq/CGVfTNp5He+4wKxUoiKJDmFV1FAxEQcwZDxd7lB5UJJL+e3oN/k+
	 y89Zltf4Bkwvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FECACA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601999358.21783.13896292538415242954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec97a0d0fb9e6ad0a0e16b90501480b4813d94a58ed87928ffc195af9312edc9
Date: Sun, 24 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756019993
