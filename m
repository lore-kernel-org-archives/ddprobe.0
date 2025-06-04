Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE3C2046B3
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749063595; cv=none; b=lu49hkSo6CHmJ3Jbd35rpqvcNtACpqXNGuhnS0jNJlc7ffzaqxASrCMvY44v4A7NTkU2qixYF3L9MgIkx1MRaX6X13ShGUuWJuiOUYAYcNxQ2yNE46x32JXjY/BL+IY/6Yld7GcSGmsIAHTtkvmrpkEuIJ2M9ITffH6AWN/Z4Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749063595; c=relaxed/simple;
	bh=HL4hceKPSeByVFd6q2PffLbXFgcNi/Jqm0CxKs00cek=;
	h=To:Subject:From:Message-Id:Date; b=qFpZzDVVs8+FFRzTcobNqj1p2z15U2Rgaajyr2dJY/Oh0pn8iDA0k0NiOI941Mb+5M91lRFklUGNlmiij3X812OZPW30A50dJH5/jI3jBMcSkFxVjzYxHF8bOSoUHRD+rjSVxQlmd47Hnhay2e+dIaZglDCsxdFBwTGJh52kiHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUVowN32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUVowN32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E9C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749063593;
	bh=HL4hceKPSeByVFd6q2PffLbXFgcNi/Jqm0CxKs00cek=;
	h=To:Subject:From:Date:From;
	b=SUVowN32Nu0IAIxM60LD+s/XxKSJ/rNbiuShzQwfF5gOLV7lxVnYRIZxREc5yqUAF
	 Mt5q68D/RtMozDKZMfGBQyn9OIE7iX8Za2aldybCKkqDxg3C/n0cMdhYWL7X/VO7KU
	 4FpTenWBvIoqlWhCrDwmxm2mBQEAzNF4yua3aPebhitDbvNx7pGsrmO4ukzvWq5fEU
	 bZlP/5XwsqcMA2CtH3Nfmc4DIeqPYBSzTFh2Qcu2/lFGYfaycQEr69N5GNSVEH6hHK
	 pauZdSxz24pSgq3fdO2P/vZKkGR0HxhjkLch6VgpzDbSwrhhGucpQUA2stFsRekP4C
	 nAFljTcqNA+PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902BDC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906359358.2194.899326105442629387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c842109a880a86894a5627864f04400277ebf77a3dafb6ca79914778344f263a
Date: Wed, 04 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749063593
