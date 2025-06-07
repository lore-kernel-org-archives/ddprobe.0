Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1D71F1527
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749329394; cv=none; b=gkYlcam4roCCsNuOSqLLIIT9JaMp3jdIS4PJEZ4Qn2o5Q57j7j4p+pvY0ZfzNamIvoQ2FePzGM9XoL6UZEITIxfDa7Bap2DGEYIB1n9A+IzBqT8kQ9iNm+jReWm3Gj0vppaLHSxkHmeIF/fxzSspjw2Q+fEnpvF/3xp6hIsRiSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749329394; c=relaxed/simple;
	bh=EtTCZPRu/78ZbTUBg4t351gCql764DYn4D9szUB3DM8=;
	h=To:Subject:From:Message-Id:Date; b=KpgV8KDxQBIJkHOIW5FbRtAdj/zvzzONY1/Q5uYQG5Q4ztN3qAr2ofTfzv4UMALSM3zo667UcHtvvWFecGzoTioh9gQzT8yrAYdaz61AxSpqzCtwm/r/dLDbTr63kTgDrzDa2osHeS1bUq6bXoYI7YwSqyzf7zWxe7qLSLiJDlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIBJ55JS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIBJ55JS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AF8C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749329393;
	bh=EtTCZPRu/78ZbTUBg4t351gCql764DYn4D9szUB3DM8=;
	h=To:Subject:From:Date:From;
	b=DIBJ55JSKv3s9jcsh3xjKzDz1llLLJd3w/lPymUrCtvYY1KrGyYfEYi3i5/8udl9m
	 Ia/ZrX4kywVeTB08nRj+n3Ix1J8aiJpdGp7zrLLJUr1Keojb0QWm4exHy05msx1pVU
	 V7MwKwrWaU3JO0pBsQKNpjaM+AnM7xetUZu187wY8BHNbD6Eid73cMhkVmVtqksBe5
	 a5DsdXRx8nZP4MHDrnlub1LWAeQ6BYWKId8rBV5IRtlJ20ya3qJ/UnbshaUxIkhVCw
	 Jyimi01SRdd5AOBFrNOJx3K3Nqt4pqqfhYXybJqtcbxXT8N3vlYvXniFkLqoTYKoEX
	 GYT23XYAOhdNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96061C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932939357.11754.11332687717811602194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eba0cb8b763014f617cc96d071698475394eff3b4478472a96fa41156d66c87
Date: Sat, 07 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749329393
