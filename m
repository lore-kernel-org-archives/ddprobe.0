Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6ED70814
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748884795; cv=none; b=TvQkkuGw1KoEz7Sl0YHDrPqvvj12unjrZxf6RzSBFT2FNQWBLab6maU07pKFYzY+sORzWntRI5pUrIF45DOsCoaJejgcDpr2ezrYnfrvy8FswfjaFcNKXh4NZCDflGiE0iOKUC+1HTFrzhVAwIWMY8j4zlrIdwbsQ+yJyfGP+8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748884795; c=relaxed/simple;
	bh=apHBVTUYpGMVFBlVJ1nOOGO1/bQKWaB097WQQpWz4iE=;
	h=To:Subject:From:Message-Id:Date; b=gvbtDrCDPN4/sXyCvIaEiq/Q4DxBRVD/wGrXFdFPQyoTErGxr+H42R8yecSjshzkBdLze8lKRnQP1ryL/W/XZIueggapmUnxc/RNI0SthwKTcGwkdJ7OqnSK86AvnqcJvkOI5r7/ipsxLDSwnKoBXg8fu+R/Skish2q4TFlS38w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ld23C4wo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ld23C4wo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A850AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748884793;
	bh=apHBVTUYpGMVFBlVJ1nOOGO1/bQKWaB097WQQpWz4iE=;
	h=To:Subject:From:Date:From;
	b=Ld23C4woeJfXvyKJJBzLgJBrCKxFKcJkM4kaxwjJSq3F5HDz2OV6sHRPgyaPNhus7
	 VxYcsDjroLhJWy0idWVwxFbU1/U5DMBXJOO0avFiZUJsG98NuM8rL74Zygk5v2hkd3
	 qbU/ARGRkzS4T1YgZamMp3uEW1hfnHEyvNxy6YChHdbrT/AtT6ClSHpIgtmexTbkhj
	 3E3MlABD/n0tpJDkO05xJJeUMpSahIqeUHbnEiYh2ng6LwbroLQG0gotFL+QfgbwEi
	 IO6/82KQcA4Df9cVVSFwMxK8bVerlP6YH3oWWVetejbCiu6ELWmOujE0c/4EWvZwBd
	 wbBtvcbKUdoZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE0C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888479359.3504.8275909545629930302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33dcaa206de9f794059903e2431043794c91591b7ea51df13dc903867561b1f9
Date: Mon, 02 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748884793
