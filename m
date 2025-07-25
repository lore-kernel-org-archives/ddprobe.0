Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD9422577C
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753478994; cv=none; b=uoGcHiGcLDFSWAd8+yenk4MDP32RxTTxOR4r7G+ZM/4YgCRZ4coH1qKbpL7rE2Tl2qof2EtTgq6kBIwiKqgUJpvk3Q7GGEyUNyTp9NYzNTE6USCR/P0+e4vj3E2YuLvJFefiZf4ipiZO1Ulv7TPJVDZSrMuTsKvcLzjoGD7hm9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753478994; c=relaxed/simple;
	bh=4DaydYMzIt3/xLJuv9BGpmVdLIX/A72osamrBEqVa+A=;
	h=To:Subject:From:Message-Id:Date; b=DpyoMlZR86syNq4w/A1QuXYovKk1t6nfEyHAwUPtjtpUnxaZTakb+gwWC6qKMTDNihUd86VOztchOFu5ONALl/gxIOWVhRiGutHs/ImfMeoYj9aFT789CLQNc1IIYaI/LmpKj+Rz9Ea1dOEL6rzk/cvCItiewX//W1xJIk2zlUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMEiHbeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMEiHbeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82BCC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753478993;
	bh=4DaydYMzIt3/xLJuv9BGpmVdLIX/A72osamrBEqVa+A=;
	h=To:Subject:From:Date:From;
	b=NMEiHbeB93q0NVqY+YkviXHJiiJTRAG3zlmKE1M7SvZGQ32VoMabtQclj0TBdIStg
	 OynNkqn14nenRd4RY4L0ICTDX0dpr+nn4UGQW2ZCHX5glypmr1Zj1dkGnNWPEyZ2Mt
	 vyPLcIxK2fKnhaPZos1LMesOmmKdhwcVGgwLz1lWDHUkwB+oyiM58EB4b7UW1E+EEz
	 ukO/UrxDAcjo4tNmkj+1twRWauY3F3dT1iEFgTZHJa8b7aumClcZhBjgBeF1+XIzrB
	 xSbGA2nsmwx/G7acXPvD/U056aY9MsMb6UMiexiOa7WVkgrXvsWKyIn6JRO0OkJ9d5
	 ZdyZ2qo+x45fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95178C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175347899357.19907.8247279262600176594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15c61cf567d5ed2646c2e648564ffa13e9bcf8ab319b2c4daf8b8db099b716d
Date: Fri, 25 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753478993
