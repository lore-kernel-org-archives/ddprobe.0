Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426C02E628
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748671794; cv=none; b=Qb7mdYizHv5C0yOC4N6mZgc6v5KrsoWxuM1uaIaQDM9ZnG1hZMALpURKdvJCpQqRwOMFg2jNq6YBlKUyxGW+MZxbxVJc0AfwgTp3HNGd1hznedO80CfwW1yu7ENZ51nIuW79138c7fJJBy46ZkjgrlX12QCGCPb0e3dsSjtHmhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748671794; c=relaxed/simple;
	bh=0sv2JAe9CUdoVaUlyLPwoO6x1AJoTTp7oFs1WIsEJms=;
	h=To:Subject:From:Message-Id:Date; b=Bd6k0StGgYzfxJ4TgASl2Piu+OgbS//Sdr0i0IS7g9oN6hQUddVKlCv+hXnLCRHuYQYUPZOyr8dSrDExOenUX63GYM1+yCBqBlZ2i9tQmLXxR6GSwPY2KC2v7nkScWjWLULKTyMGE77lNLA1c/PgVG7grEMhYW2bTTnRHkEAjkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyvRx54q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyvRx54q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A996AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748671793;
	bh=0sv2JAe9CUdoVaUlyLPwoO6x1AJoTTp7oFs1WIsEJms=;
	h=To:Subject:From:Date:From;
	b=hyvRx54qw6Glup3HvF6FQskRLEwVFZb65XqU0oXBFgbJpmQ1AUrQVize/LsFxcrKM
	 TM76sZrb1GWHXg4nF7WBvc04zm1Y0dFkpZwlYapLoId8M7GlDibmwUoKxwH3UPrS00
	 hqtZBgFaIqqPm0VTcvb6a6+YxPoCDak4nPmNL6k56AnLNqek8GEcjZorpHDvVejq8R
	 r/UZsP9e4PaV8/SxMe4zpBGtGeBVr4ZMjUYjRig0HlioXVCAQEhdVIcIGlNxv4LRUo
	 LBXPFDB4rqqPr2R4ltVb9ucU3KFrm0mLO9djo+1CSwdS74m8g62hWlX2OYDwVrhwaf
	 nkp+WN0TAGCSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96855C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867179358.25542.9018083332311323089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40329acc293bd3374841a1a1679d6e55f8d394067df421401ef3d71de230e701
Date: Sat, 31 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748671793
