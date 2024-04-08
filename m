Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB89952F7E
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712572097; cv=none; b=oPGoAlATvku7+gWytCTjQSnikz7REIkIaSxKoem9+yVanr3VAGAnM1BN3KmBMs1flJb+5p4Kdkuedy6oVw7tdns6qe7i2l7kBXrz1Il+NUJUx7UKp7x1rmxFjQzxxs+BFgI8hl2r/YbuYLVjZPJSkRU8StRCp6EotvSUbVwdVgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712572097; c=relaxed/simple;
	bh=RhaKFf/akv7V9oVBfuIgNbnaiUpRWEZt/hS3GVLX7bY=;
	h=To:Subject:From:Message-Id:Date; b=CAKRC/M4W40GBif/kZCFDadtQiv3hHqGHiJ/MxYUhoQETC0b5RjwLy9FBjEsB3Km9JsPP4lx58n8fgfyOBCaRvtqVtjdTDYQTu0vtdw9MZIynI7us03JcRIspADb5CDppqJ6YGxOGH/ckLlrMpzNzNKEKTq+epICeZuBt9OSrds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiauzOt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiauzOt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89A07C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712572096;
	bh=RhaKFf/akv7V9oVBfuIgNbnaiUpRWEZt/hS3GVLX7bY=;
	h=To:Subject:From:Date:From;
	b=HiauzOt8PiW15NJVVzmaIVFXT8Iu8T8C61Hb5MSLXJS8Kvy9el/a6hhGVwx1HhpOq
	 M/KnEpzmpsR+i6rLpaSKSgu5fZIH6Zb5Mmv3fTQASuzvX5X0H1RV173zpx0+bAS1OB
	 4DLOlbPgHFhs/dVL6gPUpJWS8N0IqfI+pEi7oy1UQ6BnmSOs03xX1821vcPl0VKzIX
	 9JJnNeKqG830+fIVBQepcU/iHgob7pCAvgszAugb/d/i7gSzNiSyHLdCx5OuvKvfsU
	 QViCmfVa+dpkTdrGAx4Hy5US5AWY+1KuK/K3WBcVroDjhbFs2Z46yixxqupWrpNMmC
	 zIA+FwPme4NVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79680C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171257209645.25506.16097058206178412357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3deb497276ad74179d9b746c72bd21ac71f7425f58289bd88e803be17e295e
Date: Mon, 08 Apr 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712572096
