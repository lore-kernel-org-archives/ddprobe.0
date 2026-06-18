Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2239114ABE
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781826994; cv=none; b=NfdP+M4U9FDPkQJEkVh9AtUwGtlYbMO9ZH8aHbbd7Jp6bNHUPz9hD7sIJGrIyJml/n8ZNoNneUPnfbMu8DLCjTNFWH4+EhY5NpSXzSG3trcl9d8PIb/W06myOxJX0up5co+tXkrbnORHTdyNjYIIRxF0mmdmZ5CS6bAtKvnwxrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781826994; c=relaxed/simple;
	bh=iHcK5MilQ/WlyZ5iG7AyshCcoSL+QnvjEliI8aCMHKo=;
	h=To:Subject:From:Message-Id:Date; b=LrTCQkEBIXcSvQ9uM6x9T+nURNEbf8WeQwIHlsLaTepJSmwXggVLx8euHYCV2h8WplX5URstLaoEfU+d+QhYbXKxCWjNywCd9V81jVCICpLkUwWtoG0YNoxu+F7cgGQPVuLXsQ2v9xQgZyqITGlsgDBbg6H26a480cc0wDujg0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GypKW9Kl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GypKW9Kl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4410C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781826993;
	bh=iHcK5MilQ/WlyZ5iG7AyshCcoSL+QnvjEliI8aCMHKo=;
	h=To:Subject:From:Date:From;
	b=GypKW9KlPiGAxPOSPkIdX0tXofZc/KguBllTg3hhIY+HkNNDGtUblEnfbgpqj5YkF
	 vzil6oDG2/6zNi5YOY9Eeev0KDx7PBa/6G/e8aDnVnFSxhw5s3Lc0PJz5iJ3iTxS03
	 rDQU+pPksx18OdpK6SfxNOeNtlQY7I30v699wBc2HnbvYnlSyBklXhkcWU2CxOyphH
	 aXz9jv1nqFsyPXXWhN8I/ewJf1hcvQ5pHd88qdHMWOMmHsfhzDneyajC2VG11IywNS
	 FAK9BnST4zguvPKZ6tk0r+0f08IZf8Bl61qda7c/V3m/XutEagPi5TIok81AHAsNS5
	 3DsqfluXXGm7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5E9CD98F9
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 23:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182699369.1550.12478918684642396889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973d287c00c318406cf5da43609bba003bfc502f0420cf7ba5ba1d26774f2f9d
Date: Thu, 18 Jun 2026 23:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781826993
