Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0261B3925
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758926994; cv=none; b=cM8+iNW5EUUszGd2st8bo7aJKsAAvJVRpHXKekGhw7xpnqYuqdBiy2s0p0tjUXoPBSIHXPBL/EcXTW/MopLiDKU2Wve53tGlbsyFlmoeLjQOYQoKSq0G8QEEWJOLb6+C/em9sTJP/DCA5nHG27mTIEOAcfFIgTNnk9VSCc55ej8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758926994; c=relaxed/simple;
	bh=ySDxxKsMN8iYyW3LHb/pIkURO1PB3eoezIb2sChwBJY=;
	h=To:Subject:From:Message-Id:Date; b=gQN7ZYIsMkeANcCxCbtLaSxrxF6svwZosgxZULd0e/9QOpBkhvZ0iS9gSApOuwy4FS3dhDruOMVem337ghK3Skvvj3zM+90JRncmp9r0c/WoOT+nr4qsZvAKo0lbm0ew/3uhmSuuDpch5RfxKESDmXESnkHC1qd5trRFI+uqdA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMOXZFJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMOXZFJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EEFC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758926993;
	bh=ySDxxKsMN8iYyW3LHb/pIkURO1PB3eoezIb2sChwBJY=;
	h=To:Subject:From:Date:From;
	b=lMOXZFJ1uGR+pkKqVtaTAMRErBfts49o0mXIGPj6wkxm1Gad0FKlaDwY7IGgh1C9U
	 DpDWwwpP/PMbpcO7ufocBgRB96l4+nnBouklYxHJyE/DEmbtZfoGxCF+CCMzvFvpmS
	 EHwoMsNgwJPlohwIre4M7tPGL4TvgDZ79sSO1oqAMagXMNZLkI6QdQ+d9kZafmREYa
	 FWS9DJHyTJOSPs3KOA1OuZtm5OXclhW3RtrmlsPz/QzWm3KFoe1fWGwchyLzYxZd5v
	 zn720rnGJS5aDmjeRphMYUrvl7dnD9iF60pMy+cLRbqB79fd8yb7gxw+0weL+VkZip
	 cRHGc5gyzrpRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E366CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892699361.31022.10785123435884937013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141a659f8d8f7e7867e8037e30997466977cd4601d8f4a9c613436a6b54ba33a
Date: Fri, 26 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758926993
