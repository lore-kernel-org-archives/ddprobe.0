Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216DA9457
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724382954; cv=none; b=R4YTaEHVqMH4ZUwevFsalbUi6KLQZKyA5S+W4wb0C0v7HoGnOcwbX8jdMDUEAduObIxIDO511OvKQGBgsVort6w06HbzfODfgmiSLclNxfkueXo0zzlacrf9zSvamOYiXI+xl5f1Aj+ZBgW+Ytsv2ldk9LuQ0SEwUyxPPLraO1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724382954; c=relaxed/simple;
	bh=eTxcRRw9GS5xi15scZ/G5xy+qg366f38QLpTx4sDz3w=;
	h=To:Subject:From:Message-Id:Date; b=qtG9MJzpsgopu/K7gM8v4/O2oucVvjwYNC6iz1FH023ggma21LH+UkOdbYUKjIcckrbG6ltPzhdjUIZIUDjdmb6QcF2HxNkhFUr6rNrTh/F3vnfyN7hjQpWjctCGd+Gs+VVmUILUas7YrEmMmCahH4Sg2eGvssV+vGek3ZF7oVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxSEnYf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxSEnYf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F5DC32782
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724382953;
	bh=eTxcRRw9GS5xi15scZ/G5xy+qg366f38QLpTx4sDz3w=;
	h=To:Subject:From:Date:From;
	b=JxSEnYf5jQl1CbnnH0eZtYF4MG78wtKJmf60jUaMt75ey17ofBalp9gVMMRK/0rPi
	 JptVhx751pz33eA0cnsh4uVSe0Q0TzLxVOkIHW0520g0aTb+tGcGB08SbaNCmE5Fwi
	 bSxmpWXttJqFO6RrpFcZh10NZA7HrHWs7G8v88JPawUaiOnZ+Y5TlcafAC1Wrbnlox
	 SAoOHOqjitNkitbxFs5/naMSg7cCRwpyGr/xp0kK65GRrP3eHLfXBUt2cSRix1g0Xr
	 RZyexhl8V7ET4lFHdBJFJa/6sf28JP0UGP4dLU2f7D0tRSHm6JWaIXUnfJF/KgDosj
	 50w45Fer4r1Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC7EC52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172438295361.19385.10417639084052637234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe96d9299f129e84108be195e98cd1d10c2925604e22c5fe06ac47960b8bcab5
Date: Fri, 23 Aug 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724382953
