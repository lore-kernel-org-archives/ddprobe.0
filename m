Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351312A1B2
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770091434; cv=none; b=jyoP17P81v4Al9823xCHiLgbWjb7SKqh1BD5yGp8wgad+PtAWrPy3Pmwq8I5v4o9psalL8liVVP3ci2cWqZmEm6w145jU0v5MuZQ6gBrLL0JAdc7aepU8KkrnNm4yCbgjHAzm237oeyyidKzLHu5E/YhOrKKduu7i5L8Atr7wy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770091434; c=relaxed/simple;
	bh=nerTp3voYgUhmNfqsWHROJvUBgAFZ2rh4wfSpmu+a8A=;
	h=To:Subject:From:Message-Id:Date; b=g+hmDoQFityVHagTx3guAIoiUD/Zziftmn2jVMyv5BXkNU5WNoAMtG/8nG0QXcKRQmWjUC2Dl70SovogiLV0E7RXRRdC1nV/0S2Y3NAgmo4MCOziiD/FQCIDysckwJchnDdWYsni5vZPWWFpIxEl4HNsuRFpZpmPK8aArCadU98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuHAsuGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuHAsuGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D8DC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770091433;
	bh=nerTp3voYgUhmNfqsWHROJvUBgAFZ2rh4wfSpmu+a8A=;
	h=To:Subject:From:Date:From;
	b=AuHAsuGTKRCrsuhEjXOxSCSouBNjIhoo3/ESw49an20CvSl5zl/Ob60q/3PPCrLkd
	 bl2Xpm9KzTdsoHlAShfcbzmcQiA1PMH8xZnk+q5vnWRozrNPRYSDY0LVeAwUKnF+dg
	 9xNXj50MniFlZ9YhTX+mzoUznEEMn/p+TOHoi2fEMgrXYDowjR0eD+3Mpq5DeN+Zvm
	 uPf9gd7uygGlsZs5YF0OEeOna95fzsIeiCt3GPhmh4Y3rwOKcrFbWLmZsKFCGFUowC
	 SPJ3TR/PA9stG1mDrg6szXjWl+Drr6oiqr+UL3ZxP1EaaviMnez936Flbw+GpjU9sJ
	 tJHVQ7V0WEhXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1E1E8304B
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009143361.19718.3788350821862953074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba058ee5eaf816c9a0df3fd97b356ce50fc01af85919c70eb37f5ff2ac4ffcc
Date: Tue, 03 Feb 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770091433
