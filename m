Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A89138239D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782352054; cv=none; b=NL4P16wJGDS7A+7NpUG0iz6Bbx+b12CdhjRwTjdjwdcHg3udUMzPwWAwxaB7DAUwj4QashuPMI165St98/0DUFmQRa8aiX2pqnMdgmAkdjlKRSDjdnUeAcoqKCWZtdJ2z5tjugnrjF+slzydw6eOtXA/C4orfv7hGc5IlMIcJHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782352054; c=relaxed/simple;
	bh=dPFf9gQ/lqjJUrZnv7D7qWb8YEcWhgnP7v9+Ndijvpk=;
	h=To:Subject:From:Message-Id:Date; b=SfoqbFnpuU+6jzvUjhK9AfKxNZGp3P15RiNubPg1UZj+/WTs6n+RYI6vh2M+yflXSnZnERTnupDEjgOGmxYrsPpihdIhtrJOL6zuro+9TQ5iwvYNGyBZ4F1sLBRdJJlB1vWORhzZm2TGuwz2paz0kaKOIEOob8ecbCPCdB33cM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oo8a1ozr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oo8a1ozr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC69C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782352053;
	bh=dPFf9gQ/lqjJUrZnv7D7qWb8YEcWhgnP7v9+Ndijvpk=;
	h=To:Subject:From:Date:From;
	b=oo8a1ozr5ZHwyIkLwfuJVsSewNOrg9ixDrdySDBDJYT/x5OIHP1+7m83G5D7JXi8W
	 Uw5ly/zifAT6aRzway1y1z7xA1syjEoRqsljk0yr7JKsTkAbwtmNbX+rpRG+ZTgYxH
	 mMHY3ZpBo3giJ7TdfoQq88svXMSCR9XrLmEcCN3LpSNm7DV4CRmHOi2dCkEGUKhKbo
	 jnZ2A7F7XQNVjmsH6MObJJaHsCecWz+6ATNB6NbCxB51CNKJI5y7xE2+wYFqYFCRxf
	 EmUBAOdoitVLYodqxkcSxlBjqBdNggv15M+4S7wcE/O/RkeEyBETpZztAHbJxi0os/
	 h2SAOkE1fTIFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FB5CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235205371.19763.14835279266710515858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31844ab88986c41ba7a8277261a4dde393207c28c1dabb1ce2669e047f985ea
Date: Thu, 25 Jun 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782352053
