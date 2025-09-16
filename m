Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3320434DCFD
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758034794; cv=none; b=Mv3SvQMNieRYUZcwfSowOYoBLnJcDM04XVlnBAffcrB3lukTuanLSeUgQFWx7gpARixUrG4uz7NJfs7EnfW//ObClgjIVtAN4By9z8kDNhp5Mn2mO4VwVORNBumZk+2QYcdRiqdy6DYAAbXjB6frC0h6BHWrFyW1KyL9h266pTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758034794; c=relaxed/simple;
	bh=AxhrTGNUEUsgtFZW+DXOeJY/sIXb2AkVnHqM85DbJQE=;
	h=To:Subject:From:Message-Id:Date; b=u8za7uypAnTppDrGCbWK33HoqsriY4fspjYoC09s0Ixk/GZkzc97sYvG0jqj9uYUsqQZGmyR1JTpOmPTBdBdNQhMGOIdbsneGxExkRuiFdR70gg7NoxqcUhlQHSP4Y/GAVJkWr32raHh9mfDeeReDxrvRQzZRZFMTZ9nMzHfcdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANB6RDQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANB6RDQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB58C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758034793;
	bh=AxhrTGNUEUsgtFZW+DXOeJY/sIXb2AkVnHqM85DbJQE=;
	h=To:Subject:From:Date:From;
	b=ANB6RDQM5EMckegLuH5rlQD4V2pqW+lBTpslh4q+1liMNrZHZQ0sq8xsb+RE20mSy
	 J2M0rexszQ0YkMYK1XgfxWP3eGMJgBMwFF4KJgtYPXnaHyjZegGrq4Cpzr9KD4KXoq
	 cgcs1FHSL0AbwrAZJyuGZeBxeUHWn6IXDEhdbc0X3Oy1fx1BaULx7Q+4zxSccOHygh
	 Td48y0WndGhin58Vnxkas8NikZWnUMZDditlFNyQXbY9nT4Cmxr+EKVWxtPtquX2J4
	 ae2BBmLqSN0eYF0+cw4UmMfF+1T/FtOjNP/+Zx5A3WVlLijYfQ8MEJBvgUyNPGsQix
	 2pnLSFJck9Z4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A002DCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803479364.22425.10662867017947664965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d76fe79ff845a66b8895f35bcea0e541c0afa75b7d8ad01ad92a7dc8e64c93
Date: Tue, 16 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758034793
