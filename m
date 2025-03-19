Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5498319006F
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742408994; cv=none; b=Dk4AgDwFf7OVLDz1giNb/TgRQ+M9/PzrHSzhH4+wuvDPleL6MsXYh/NdwJ/4g/XEsK5FHAck9pGk+Tc0+gBTvnzciy+RFciG5nWo552koG6sNcJdflRAcjcsobvDfdnmAZBlQzin7lEUUSTWrRV/TYj9dHvr3Bbq+w4+Pn2sSwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742408994; c=relaxed/simple;
	bh=Hj62Q3uMClWDMAdr+1UDS0SC3D3+6ELL5ARUaMwsDVw=;
	h=To:Subject:From:Message-Id:Date; b=rlXBpHeGdsMWXXnfjbgmwUIgHie3bUWoB5YMoS0cmMNEZHFmsZukDgUyIsqU0TGLeAXOZ11C11sTgwjr8v5P9prSEw9yzfMJVuWbSir0c4DF2y3erjRrDm3nJvbVZPudmsFZDEyQddyrChk7GVIX2LZkNNOxHXuVg2knrUuz6Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtQ56Du+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtQ56Du+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE699C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742408993;
	bh=Hj62Q3uMClWDMAdr+1UDS0SC3D3+6ELL5ARUaMwsDVw=;
	h=To:Subject:From:Date:From;
	b=HtQ56Du+sS2lE/akG2EpAZONtbLKgLWQ9324zf62S64dh+78Vp10sRa8cxDAdXFtr
	 Yk07QHzFchoAbOw0UyhbtKnRZ8+GVWXaiQGlNjDK0gZsH/NkEDauH/PKkVG13ziMhF
	 KMijHzSOnbn5ZBMawRvCBPozTAh8nFmZVuVupnprwpSO1ZAG8A7K6bO6rOgkQgXjzE
	 1FEmyWBRUKXLeQlaQVncBHzXnu03ZAdX+ZV+51TUwPSx4/hzlDnD+JlipJayr+JCf3
	 68jZkppmUuTnhUMJ+1QJruMnS4Zq0nlN7wVwDvF1q01I23jQq3QVZbf9SbbEjV7kL7
	 0l13mYyDVb0vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB36C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174240899368.21681.7456030200427431903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326c198bb568dbf243421e18880fda3c9f977d694691e5956cad96ad65e3d31b
Date: Wed, 19 Mar 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742408993
