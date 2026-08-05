Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543203E638C
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785918634; cv=none; b=AHx/Y8iqkO8so3MAiUBGvDqb/CtyTc+Pf8zN+o6G/3cDhRelVelPeVJryuswtSznxKozMM68/Oc+r8qSt4e9kUEFvg3UX0m5IRW411249JJ13VEVdGw1VJ4LZqI+Nv//l12Dkzdw7U3iGtaQtCXlrLpWrKFhFMd3SdVTOXtO+fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785918634; c=relaxed/simple;
	bh=fmIu+iDiYWAvtxdQVDrqEvamai7Fk7NePZgasMLkNZk=;
	h=To:Subject:From:Message-Id:Date; b=n1UfsaxXcDLYTvhEz8keZgSi9UR5Q9Sv3FS4oigqqhM9Z+FjfXWU7VY/grpnzKzCqgRCAPDhNqUJqJTNrvPOzkaAk4azFxjs4+1B/QZlcAeDFIkD3SPpvhnl0O14KrxGG6AXufEQXNHpewqOw2STn/dj2fPAwXpGL2FWJwWlYmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhsF54ZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhsF54ZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05FFC2BCF6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785918633;
	bh=fmIu+iDiYWAvtxdQVDrqEvamai7Fk7NePZgasMLkNZk=;
	h=To:Subject:From:Date:From;
	b=dhsF54ZNB/SB7Ya1v2rrt4dc2mcVAalNJY16wtGmPvchXk7xmW9AKTJYdphmTneXy
	 q6NniY/N93snG2r35GwSR9D3TkQOb+wCZwUWklP5dWHlIAYN1MzuUErasmVsgj1OQq
	 Zjag2Qti3wwkZUNfk1D+u0o4VdFb4ya8XvlhCYdVCn50V+ew92HjfhCP5RmfCcHpBg
	 C9qbWPDisiNw1/jMcUdmg6tZMWnB7ZSmgLLeV03J6hRng1g3LF0N9i6mylWbcD36KD
	 NZQB3jCmWTYBT3C8hM+O8AFcOcPMK/V1dk47gurqqXKmwNkyIEr1O7fb1+ZlBE4OQJ
	 vQPhgLpGe/pOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6798C55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591863373.17998.17373056325921261159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c7390cbac75ea11f2230d863e834a0d30b8e9218f36945f32b1c62f09eb1d7
Date: Wed, 05 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785918633
