Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2B621A71F
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730843754; cv=none; b=U8mrH3oaQjIkYWsUUk/gqFQv/qU2ck2gLfh992ZMuFFlCWnfGhvooIdA6ts1YAp1qoShCGZz6QmnBnHElSfuoSp+6IU6Z0S69Cd5FqXWwA2P/m46pQ+U8lsWn1P1hJDIyeDWtwLJwoOMxqAE4BwqezwV9RwOsljLiio1ajYxRG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730843754; c=relaxed/simple;
	bh=uUL0lGOoASpTr0P4rbcxf9C1Zs60Knu67H6d09B7BRY=;
	h=To:Subject:From:Message-Id:Date; b=rikFz+xNi0fzKX3Bu42V1oIicHwcK6mCWYlvFAtI5gCcZmr41Sq4jL6787JidDUUyH97kyIHYafPL1E2oOG9Wct6G4zb12VAlu6arRph6E3eAc2Q2dTrXwrtYVU5IuZl2mt3abKPdvuyyuc3cWQhXohG0mqEwPIQ7fIywZm8tkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSHSg05q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSHSg05q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE8AC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730843753;
	bh=uUL0lGOoASpTr0P4rbcxf9C1Zs60Knu67H6d09B7BRY=;
	h=To:Subject:From:Date:From;
	b=NSHSg05qYKWwbmHeCqxJfWMaAfISWR5p179h8jLVvtMjijnRZTl2okcOB2h7HuQNS
	 PJ/Khx34awA1gzCiiBrMXf6T/dxX0zackQperNelld2KyA8xFbNysMZBKvvPY2WQim
	 uKaqT/KpPDQo6eIli3h4F3Atg2IcqdIfgU1fHNYXVNA3MtDuklbqjssHEAgEVrEffN
	 O4WNgZYCx7N4ZTj3Rs6RfeI5/YxPZweE4+SlTDD0cyDUigoNyTM8xg9N2g52VUQhcq
	 6HWha8EfmPwiiHzmYWak2K8hjDmr/F+viPMWFa8qbkJw9vEepegH2bvaqAJ2yQmgDJ
	 EqrZmSkpHj1Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFC3D3E775
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173084375360.31577.9269098618684114494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142c161f1768853c507a619e5440ee206dcbcc55c0029c35421ba7963797d749
Date: Tue, 05 Nov 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730843753
