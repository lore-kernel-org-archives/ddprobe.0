Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222F31DE2BD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736171754; cv=none; b=C3OkH+vTDZ4goY6YkDiG4XR2UdUJXkdb6eugagM7BR8akZE+VO4R8Kf3FuKW0ip8+FQhG1OPLDYxFMn54GeZFwKNIZbLEcbXuef/Zs+XUr73fi6x0YThYXGl0ON85Jg41dNtXTbn3LNnpNaDffR0dS3T4CA3jKsIDFDzi/FpljQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736171754; c=relaxed/simple;
	bh=m0LWpFpqz5l5k7VorbpIeyfKB3rWUdH6M0cljkIOoXk=;
	h=To:Subject:From:Message-Id:Date; b=AG6jiSW96axRyZfPnpVppAkTdLFLvauGw8gSxGT91wmMPRoqicby2M8oEx8Tvx/oVrty9t2/ZSdDN7FUIp7UFWR+xX44CiyEPCR9Kq394Vomc4Lx8Gp9RREZqp+WOPrTxh6/Nqge8DVFf0QVh/YkwkKLDG4hgc8KEidxtPkoNuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZ+E9g3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZ+E9g3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A216FC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736171753;
	bh=m0LWpFpqz5l5k7VorbpIeyfKB3rWUdH6M0cljkIOoXk=;
	h=To:Subject:From:Date:From;
	b=KZ+E9g3J0WKQD1aZSvf83ZxOsqf0rFVCnrOIHksv6sl5iWAMU2ZcmrGFH93Zbbynu
	 tLQ/xrlMyRE/wHJEfxFwKe/KrUY5W1QeZCyETv7H8E/Q+J22xNUrrJUA64CuOE2usU
	 kdEaYO6t0pXre9+H5ylFpkHqMYLxEivGR1IeGwA6GEWdfIJRz/A/idAUrfiyEznVtf
	 9FtPtrdGOjwrTkcl11yzN6wtGswkSRZVh691RXDrcdHmr1tppg0nowWft3y7ZQvlLB
	 Kb8r0IFP3mwZSSnYPgc17cMim1Cac/rfPo8T2ZeVRPsvTKYLNiwU9TD170oTRmBCzt
	 w9K4BryNeKnoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91974E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173617175358.11993.1946103387630222444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592081aece8bc91c5740eade8ca87daead3ee01c1ea42b1d880d61f6d9a364d7
Date: Mon, 06 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736171753
