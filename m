Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CADD1CCB4F
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730408154; cv=none; b=kla8U15obqh9bCCTjUrVR5mLT/ymu2/7zxSuYmK+7mdiMAZ6QD0sO7kjBcx4SHupDFZBItcnxhYxsxAQptDFGN+pvFCLSckqCm3f/Cz2+7lsq8Yx6xQJtzMCm/RJu7mfuLxaEUpjOGyEg4qYiqHAaf5W+jO0SYxy+91GZsbNQ34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730408154; c=relaxed/simple;
	bh=yT+QsvMhAvuM1iDa72NN9XnPBvU3SpUOTmcPzWXqbKI=;
	h=To:Subject:From:Message-Id:Date; b=ibO3hQw7QV+cCir+3X5m7YSKtT95LgApeWfEA7knMKpa7eSNpfnYujQj/jCqc8VofV54DNPPDHElUfxZTA/JmuCwVLXpbYVZtWHEnnnhd2Op/alrYkTtst0ZJy421M/WfjTC3yDuD69VfxumJ5DQ3FkiRH0L7coPzlbFKf64GFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbDueto+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbDueto+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D3AC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730408153;
	bh=yT+QsvMhAvuM1iDa72NN9XnPBvU3SpUOTmcPzWXqbKI=;
	h=To:Subject:From:Date:From;
	b=NbDueto+DNWoCLJ6jldV0vd3O8/J8G13QmXV4mGos95WzMyYgS+8goKVDG1Jrhm2t
	 Vxs3GnN2ECCAsPc0QKiWnivfjKsGC61wX3InBmftkFbJ/oIdwu2y7PrJMnw/iMTP2q
	 h73w3GNRy0ZvyzhBeytSADV8/D+lB9ytCm546s9pMgde65/Nk+FqAKZ3O/ux/5zq5X
	 TvBgKV4VJUC+m0b/78Y+27e+Djm97QSdzV6acsMRKNe6NhaUbTCoayRvtJgwVDDY/z
	 r+oRP/wu2QvluicHzDxKH7Az4zx7eXjEVLgySv2txdMLG7INUFuH3jXotVFDChblSo
	 QMT1qxCcWJ+5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A459E67480
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173040815360.31786.10450029279515146385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c86af8afb0a41a5acd117b3332f667996fc24390964748fbde1a462296f04e
Date: Thu, 31 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730408153
