Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481393EAC84
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792356634; cv=none; b=sYIlYZGr/lClzH+mNN7xW1u4CBdeja0pW7rP6u4zkjZHZK6VjTxrBtq7/NnFm6VRfEn4j2tOwiJeOx/4BBiYfDpDqvE+Upm1KcafqrLIqo2cFd7FVrdq/AF8gD/fiHERorl2VQxxi7TbOzWm+4bROp0kGKAmZxuhmGGoAOre68Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792356634; c=relaxed/simple;
	bh=L6Ojek+FhIgca1U4A4Fyk14JSQvrUauK8o78JKDbZ5Y=;
	h=To:Subject:From:Message-Id:Date; b=fM5to04mxAgNAjE3ta1eKYdk5cTwaAclfPQXb4RynRNZm/d/v0PFiVy6VdlOSwJfn4I68mNxy7k+1HGdgUdMR9RA91P68IInogRLGN6sfsmBeRJ+5CocCRfOBO7m7xQERr0jnsWlTZGOrxhstfiFiN1/WFiKXqocs1lTdMbp1vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRomdwXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRomdwXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC580C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792356633;
	bh=L6Ojek+FhIgca1U4A4Fyk14JSQvrUauK8o78JKDbZ5Y=;
	h=To:Subject:From:Date:From;
	b=VRomdwXDjc94mWliialMGpMdzKNKa+ryzFNq2+EumhUiU7VkoMJl2YqYGq8IljDiK
	 5NrjAAsqTDoTPkuaHpBPkJmX86CqYIp8bwB2h1CVCofpafPkJUGlaerGdcai594Ios
	 6u4PBFJkNxDTyQlnLfdk/Xl74GeGsaa/Id1aTgYuAdi/4nj6Yj1+FSrbmq/xuEPDsK
	 ITUd1eY9rkUWcK/oWY2lzjOj2YaDotAT+K5IeqBugtpFhxIZKM6gkJ4f/78OWoxzd1
	 ra4MBS2Gj8ljWrzYREQX6CYgmL7JCx3Ig3NAgiHpDrMeprNrhBMyMRgHTGtAQghPtK
	 +TF6JvtT8bgVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1EECCF2CA
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235663368.28131.12682020102603149590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42729876fad3875d01596f6b024ffaa39a3638cc9a2dd33fa7d227743cc8f22c
Date: Sun, 18 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792356633
