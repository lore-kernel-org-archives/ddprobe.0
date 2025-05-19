Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B1315855E
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747616395; cv=none; b=NUvqey2cgTFbkFaHgcww39bGqt101ic22Qq+zKoJFZN72AX5qKGDFOc2kzq97XlnxT6OUlzjW2geNl0RwHRvsy5xt6Mm2tOk6laQeIKf3Xwj6zgKHW1Ui4piX6GsAVSNo0bOmBniGybLTrqvWSnxDQRw9W08BXhTI4JebamT4oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747616395; c=relaxed/simple;
	bh=wGVFM/w2cvy69+MVPOly821X0gn1JuDeTuZL8rqS7SI=;
	h=To:Subject:From:Message-Id:Date; b=gXl14jHLfgJd3sEEZ1S/qaf285pBIrkD+n42HRtZ2GUdAOlfORRXF2kI3cjHJf8FRIUCAD9LRD6VgXRwXb+A6hJnkEZC3rz6zCIPxelr9/AXwn+DSqqeYbt5fowcGIzhu6F08/fNAxyNzNgmtOacmxQnElmkrIYfjxZbdXEViRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnFDM8bP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnFDM8bP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7031C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747616393;
	bh=wGVFM/w2cvy69+MVPOly821X0gn1JuDeTuZL8rqS7SI=;
	h=To:Subject:From:Date:From;
	b=LnFDM8bPYmtH3aeGlsIYtRtjK313gO0Ckaq0pMDnCzhwezBTjPqSOd+4rq7yViW7e
	 OgfosNeBi2O6QgKUIuDunYjBfeblsiAbiXp6Dg6Vp66M4mqA/34yV1YHE1The640Dy
	 ixMvpZGCk1Ycgj+PzGNkD7Ng/TXX0GCo/gSrjLuFKrChOh8JTQmDJ4vtpvtG45EnxY
	 J3e+OcO7XkEWnL0XlTmslwGLMxD23f8TKZCtu8aATPm659RTY9rJUHBzqvHmMdQ+Cn
	 f4UOrCwlTdcGenPCO21T/ilT6iDjPhkez/qGDtOFKTrwnKbbPeCUvm4YKixlB7/77u
	 gk/bgyGP2RR8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9123DC3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761639357.27900.11350259305693929047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aef9f8e78c81c1e84cc84ac7a68731a7e0bbf047c9c0ce174b2a95d457b9c49
Date: Mon, 19 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747616393
