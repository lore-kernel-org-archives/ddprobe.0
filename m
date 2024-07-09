Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507F31B86FB
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720557383; cv=none; b=ncj8lTLcIuEQrjK2ggbxs5TnxWvsW+sTPHajwbSQTlaPXcFKW5GAAehWfE1UATzwMywR8QMlTc8yqwqnCf8TLSWJwZsYNp4mdpjeYvKCcdtruwbL7LLNnheIL0NNH1tDkNZqmpljtDp9kZpWkPtKlHJCiB3LdK/p/Cg1VDtvlF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720557383; c=relaxed/simple;
	bh=I4SpU5Iqv5LuFE1LtdS3psA/bv04DPkseFalQDMnfCk=;
	h=To:Subject:From:Message-Id:Date; b=rpyfXG8BVQf9T5vK9hfijMnhQJPVFR+2KiAxTR9p6FSgTk5dqFeckP3Eg2gBtnX40n+YZ1q2CrwSTWiNcTDcG4pQvgya2rtb3adXd2qHqyjts6Qyn772xhGqZ0Pfw+1xtKkPEEX8ftzyx53P5LYt9wPBSqgZL3Yf2bT/u8eUMp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNr4WD/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNr4WD/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29A0C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720557382;
	bh=I4SpU5Iqv5LuFE1LtdS3psA/bv04DPkseFalQDMnfCk=;
	h=To:Subject:From:Date:From;
	b=uNr4WD/Spd/W13WJMtJBQui6iHObuelO3Ka+mXRC1SAGNdMPZ3Mj+IfRu49LzVj/e
	 xpV5Y3f4YtnKT5eD4LdUw/6ZwdDUdF3eFwQjQl/owwDEsCFAnWUBmsTfYHUpElyUc9
	 M7twNtRfwCfKNttpMsZg+H8ghlm51aAV+q+62pMbJg1AQJ6hTO+dmLFR4KmpIyuK7y
	 2vY1xH2pcymF23SqDWPeKPLiYI1D9Mk9+hecj6mc5HaSXfNfWBebvA7bwNwq+lcp3g
	 x/53MD9ev2EJ34elfdTuXh5e4p9wtKr2pJ/6bZ7vcA24xCBgF+6tGq/ndBwXjmLgYi
	 9H1S5OSkKa0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB94C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 20:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172055738281.3198.8223024259140049708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33782604a52ffab3a1dd4f5c6bb1706b4bb46b7a0e8ba2585f8aa553f8dff5dc
Date: Tue, 09 Jul 2024 20:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720557382
