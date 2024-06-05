Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61072383
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717546583; cv=none; b=fD1PCL1D7KIweeJzVGL1McBv+LoceFZJJedxxqPvasyIlxufelfxfYH0VxcuO+acTHc3DwcedGM/WAY+fp84fwQHF9IpzUulk4k3LXPBnEPhOveWbbmE0dRCVwiYcOdeDYgHSzYXU0PNwcLwR56Jy4dW+RutLtdOZg4pQx7lxCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717546583; c=relaxed/simple;
	bh=OwwP+CpWGLd7C9TOUjyuB431VoPkw3fb+teobLzkAg0=;
	h=To:Subject:From:Message-Id:Date; b=GOtI4j1TNUUuKIg48jGjkgandlnipOkNEyfqnqLc5Scs85Ub5lR2Sags/GTxu90NPv47VHN7aOR3gwKbVLmYJf9TvpBnXBwOIYgQESb8YzQ5FTalTgxO3o042r+Xuh8YjsTCKRxKmjvtKG0ykR7P1vQ3h+S2aFrw+AlO80uuk0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iS+eoPVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iS+eoPVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8895C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717546582;
	bh=OwwP+CpWGLd7C9TOUjyuB431VoPkw3fb+teobLzkAg0=;
	h=To:Subject:From:Date:From;
	b=iS+eoPVBTxUA3TeCkrlO16VCs2x66hMRlyhjLQV7IE0yM5wFfZmTya1mDKwm/qqo+
	 /mUUYPCvms1fnhR34/LL4aOOD4CQfXGAosoxolIIIAyLxdmMdMraaNomlyoT+ZRUJQ
	 +2dz/4jMNSK+MyZIo4wSG2kYPSvhv8oCRovsLmhESbYqCJ/6BANegOkGC2vnyj1hGw
	 bVaOotKKFWID58pyxs1x2Wev1VTaUz/98jsvgRcNt0LbTyUnnIBorWBe4DdJ+f9zRH
	 ux87FHkyxMoJpwVV+5wvJ0RhV80OeNv0KMGkzpwGM5Fb8PsL1K1hZmNBfvUHFM3hbf
	 TDmlMFzbpfvug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD66C25B78
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 00:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754658282.3347.13073099413606383173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3cb82e41685e1bbbd368771248c8e2f098b362ed51b8297bb677b9b2085a4be
Date: Wed, 05 Jun 2024 00:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717546582
