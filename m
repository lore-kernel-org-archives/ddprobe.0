Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB0025FA05
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759997994; cv=none; b=S3h6Hq+cpCjtn6eBP/Kq9USgllYM3gvx/o593JsmCHlpPB8jS51Iw9TNd6LVEfXBxU1vzX2mvZLfpfv3lbKRR81JDKWRIdwaTMX5vzPqZ3BgurkaobTnHKXn34GJzVaoMGDWjWg1O9nLJDLRo7isnkeCgvqyovCjSMPFv5+Qq0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759997994; c=relaxed/simple;
	bh=j1eabVk3flRUKVoSayC/KG383qrHQlpPO153C4yvKpg=;
	h=To:Subject:From:Message-Id:Date; b=QhW9T0vlFZPwDiWfYnqiNvRBI9gSzyknDtUXgc5jKkgj79+mIXKyyEWx9IX3qfb6abFCpY9Zxlub6DorUICkSakdQ0uuakQMyAWjNTzbn+d4rWrrPIJ2QbPfIgFrTlhLUhYzhrpswveNOtaWrrNWaA5s+nXoNCqd3yN0l6dbMdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5pM3pHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5pM3pHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE69C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759997993;
	bh=j1eabVk3flRUKVoSayC/KG383qrHQlpPO153C4yvKpg=;
	h=To:Subject:From:Date:From;
	b=S5pM3pHYpILwZUzF0F8UKP8GRm98FRh3tIPFmt21tbAF8qBIOBpRsTAtvr19U0b8x
	 5aDrlI/lFKqbnP8ysP/J01eZ6hLj5ndlTJWg4XNTIogfniK41Hr4LDIsuUbaFNSXne
	 CfZLM6YDvznM2ugXv5dqfq1OXhDcvyTPnLnGyg0Dz8PsYOHdJCiq2hCWBojVfuDBOC
	 F/R5rB0qWGt9mYQoxn6+mCqrDy/fyCOB360cox2Wt7u1aNVL4vQKzEfDXKYDBBFxS+
	 k/btg3cvyCySt5aaPYVKX9h7PlFujAcVJ+1/BW+S9jZpRAdoEV8GpECdy9lvuhUyxt
	 laq6ui9oVrpCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C24CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999799360.25641.9069610352870114299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39692b176e2ce119f674ab327cd611c9f2c0a4efeed1bf9a126658783345606c
Date: Thu, 09 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759997993
