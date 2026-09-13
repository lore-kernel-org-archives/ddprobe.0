Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579BA19F121
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789277434; cv=none; b=WKrSFYdodpr8iYLfk/eC4cbuCrXgx1fRmFqAUs6+jSFL7jIQfvXXSybPyCu5Cx9MJoencZeklfyeJEtx/CO4PsP7LEsn3MSHy5gO5sqqHQKY/TeJ4nCF277CHl26dxYDAa5z2CZ4COmTsrcq2q+jkagRQzjxz7ImZlyGBov0Bfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789277434; c=relaxed/simple;
	bh=Wu8KHagdys8a78MQskmZ2hRZziqOGYElfN0S6f8TAlA=;
	h=To:Subject:From:Message-Id:Date; b=RDapLTefVy6PvzEi8ZOd6laQAe33MgW05FbdKRSnsGGrsWhILcq6t/pcRc44f38yqOq6oh89Z6IfAgtW/HAW4AxqfdDkIpxXzmikRhCI4auFaRYh9hS+RA/X2mqxltcKupArBIwtcfVmJenH7stAQfT+99nB6YRSIdqKbt/DOSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dikqY29w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dikqY29w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E8FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789277433;
	bh=Wu8KHagdys8a78MQskmZ2hRZziqOGYElfN0S6f8TAlA=;
	h=To:Subject:From:Date:From;
	b=dikqY29wvYDPxqYoSWhL4VrTafN3Ge3NePDup3DfMi5Ga1yaz0NiJeL20aMnpHsAi
	 ctUVkvLF9d/tk9KKO3V/A8gnWgSTqQ+jeBWIumtzB9pcwEhfPVWFC2z6ay/0epzJB5
	 KzhhAkE5kog+xAVIbdHWiZosANOur0TcSm+nPRoanCWBMMfMizmBkwRpivZAxCHEj7
	 mkpj77+N1S2Bp2SMZeh7iUkHe1mZyQ+LCemqx0CgVBKL7gH3An2vx+nxJKrujDzlyb
	 h/7am3m5jFNT82NiJqVdvDuA+hF0WMpIahDKVZZLrKP/vmh+oKwPnFC5H7tRpvUjzf
	 MIi64sbjhP5pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD183C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927743368.14547.18054594991351445094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e01760b3dccc68b89d7e8e690214d229321833b020662b82a286a4384ce3c916
Date: Sun, 13 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789277433
