Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FDCC23C8A0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788847834; cv=none; b=nMr6zkhtKEXXstc2OS7e85FGKFu+i0hT53DvpCMd3IlnCY4Dk5Eqb0rxbsEo057tLmrnAteOWXYX4ZBcVPYeFpPfZ2bMROtwqTFUYJ5w/lx/t5Yr4MU3xoR1FC916Cw3/0UalrHiPUFQazc4D/blHstxOG4+AX/fZX0EZQ24mPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788847834; c=relaxed/simple;
	bh=Ahdwnfd8OZB/NRS7TMwy6Xy0kyUnF+zvDESNDLSpj/Q=;
	h=To:Subject:From:Message-Id:Date; b=WN1h3UV6SWST/glCtu0ib8jWydvJJv9fsFtHjMWujtRtr2KMdbHVSM9NmC7fTdYfaLY4u0reQejJss+Sa44XIuTxKHTnRr5Z4RM+2/c9ZPtIjhPHUZy9LasgFyn7sDAf+LIVvIw2IuNRQBb7hL5Cm0D7T8V2YvFkZmS/xb1mAbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIBIgRXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIBIgRXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0EADC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788847833;
	bh=Ahdwnfd8OZB/NRS7TMwy6Xy0kyUnF+zvDESNDLSpj/Q=;
	h=To:Subject:From:Date:From;
	b=lIBIgRXq5tlRD/OSrSCr1UW0sdAXtWCiP14Iaj7WkME/iQl0uVHlIlGvKBSo2I/Pk
	 sz9TbVJkynOci4CNBKKZPbLqIBc057kOPflvynnf2KWh4pBbhjU9CNVfvDGQ5pnrz2
	 rahImyPfWktPWL2bQhZDZRV2rF8GdfWB9nZxn20vPML1QjRhJ5mP/u5eUDvMAFMvPM
	 vrUe3ZQt4zwqDH+VPG+uFv6ts9rBub06SgQMDmzOXeF4DeIVRz8kbKUn0YLitKcFub
	 jD5v17v9vx1c2NFAGinwm4Dw0DRUrGSkwsVMUXO9AJ2DqExsOEnlPxwHOI9Q/wza2X
	 7E419SGEd2Ttg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6D6C79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884783370.25275.6495121997513508022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18759bdf8799c0b5d91c37ce7ee5da407c6efddd56defef5fa8d056485b998f0
Date: Tue, 08 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788847833
