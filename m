Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C18B3A7F54
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775056534; cv=none; b=EnG7aOAPT219Q2ZrUEYtVYq/Nnidm0v3wLpD46qVpFGAHuWdXSkL/G4IGQ5Qdg5O1gTgmN2BJlj0Mg//viSga4LJQiWKZW4f/Coj8mLctIFU4c9fDH8NEygL0mOKyGl8V+WZoDQCIooNyr+FfgUplwu7yIeTXyJ8rMBypXV2J3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775056534; c=relaxed/simple;
	bh=5+2AKhaVR8MNbE8HputyLKz3cX8tIiKaF6Vpmnt8sH8=;
	h=To:Subject:From:Message-Id:Date; b=fSl8GFNZMfsbua5EV2wZAT6Q0SGJpo7iKVUONBCduo8zstNKnqkFGtntZOJBTmMKVAhHRd8GNFs9yaAe2Bga96EI2d5/ebsDCA6/034ydor4WGQl42V9IjK0zyTrUWmraBAn1sgpnCnqN8QuWa9g3WoWH9cSPSAlEms/+VzZFTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N96FNLJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N96FNLJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10F7C19421
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775056533;
	bh=5+2AKhaVR8MNbE8HputyLKz3cX8tIiKaF6Vpmnt8sH8=;
	h=To:Subject:From:Date:From;
	b=N96FNLJik6tyJvlMl2dpei3n3PvTUkHtbD0fs3njiUp7z8/oDhj1X2ZF5EwFWDK7H
	 XHAAGUbXeJux+m3RL3Pbqu7jn7pn3aRtrW1TTXzy9IVSWAd3uFabb0q+yIcf0nAGKM
	 uY/yN+Mngv7gVA+GXtsGlnmMdBVgx1hFEZTBLtZP4DNjLmdeIxDOXHNEKFbJjOmFbP
	 pfehW0odFrQmAAUZv5xmkI/p8FUYlsJJ5thIZgVO5NCzcb1bz9K+1SDiP2sG+IE/2z
	 sObDNFyVG7FYcmcxRTpPMFwaAE08pQDXr4f+ulZn01bXK7YcdFYW48OzPM5tOczIp4
	 3JW2Si3BgkA5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB36110F6FBF
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505653369.6181.15281246993912720929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bcdee3aba834745c9a5b6383fe577132d72ff0c82dde670c24a75b9987b30f7
Date: Wed, 01 Apr 2026 15:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775056533
