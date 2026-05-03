Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2746238B7C9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777831054; cv=none; b=nkIVzpVcKc+/gqQZ1WMCaSJ4k+5SfpMhr92Bbd0p+XXNbDJwRatOw/cLoK+4bRq3d6vNBn1lgmALG9kWHlJWY63lkh/d1QjLu1IXWIlUzbd9biz2Z/TLxgXjNnZC+j/e4iESR+YnKup+juEulmDF2xqLDYTtFW+AKW6ShnaE9y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777831054; c=relaxed/simple;
	bh=fN8+TJJ+Ccc0rJgVDFkK0cpQCC+CFcyoQJVrcclBQKM=;
	h=To:Subject:From:Message-Id:Date; b=by+ungcazd5xcUkmHkh6Wf23ROWRQNaYx7uqzBf6qknWsODahPQwgUiH9K8O8SReDcq0k7MW7FYcJvyDSTD/RbqoACgp8J8hxGZE87gWXROyK1swjPtjBlTVyMY8GtUm70b3nfb6HBsvC/d96nbhKffEx5sWhYbJBFAMtk7A6dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSgyiHn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSgyiHn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0EDC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777831053;
	bh=fN8+TJJ+Ccc0rJgVDFkK0cpQCC+CFcyoQJVrcclBQKM=;
	h=To:Subject:From:Date:From;
	b=NSgyiHn8dmJ+2XZncKWKkGCcH/QloImcmbFizsJuPYfu+gAnRPgzlc5+8s/zkYO+p
	 mlnvmeDSdwUqCRo1Sh4W4WPQoFNVJMkPBnGUi62goZ1ugHoU8dANShJ+9WNuZ61R2b
	 Cuh1EpSrffut3ZjfnzLsrT2ZM/QnTbAUEbJo8QPfo8JSDpdLaxZB9J4oKKfaW78AdX
	 GPMLgY9cpmZLmpcs0ucKzmO/7EcG1hRrjeMPoPp+TFBCvD55yWqzYqx1lQfTk7jhVQ
	 0QD4JonbHJvcoOQOuixdwYrOVjSSsw82aPufF9EFWqmA+3LyiBmXHc6tyLKaIvliK4
	 7Q4Ylg2Rcam0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CD8CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783105370.4738.499165751681223859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41a65c244414e46a723a3c355fae2cd9d3ff819ccbe26623847032034f0274b5
Date: Sun, 03 May 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777831053
