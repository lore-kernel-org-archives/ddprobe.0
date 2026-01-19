Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43D83B28D
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768785834; cv=none; b=c18tmL0gD47Iy4k3MTI1eZDzvTLOXZB+v+aBTqAWfnnT6PrhVnjdjBVomWIRRdSy+WfAAgycXr7nfPnjVTbhLHq+vOntcnAQaee0Mx/bRe8URZu/KfbRRQWw1cSyp3yyufg2eanMKzuPGALK9dsoqnQ03HXq40A8r7rbV2RGTP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768785834; c=relaxed/simple;
	bh=AvrJ1auD6iTudFDmt9Dki1x+po/O0i+Ww1qzOLQwXmY=;
	h=To:Subject:From:Message-Id:Date; b=Og5mWpYCFQw+EaML0phtT3/UrhlNm8grP6Le9a9jOYY9JtzcWATqUtj6Ey193cVqZRv/79t0SGcoltbbL1qDCq7WQm+1AfLpt/6Y0cr33kJupUpLwni8AIC6uSaMOTrXNlrPv1g9zP85bIPWV/9q1wZSSDHZVxF+gctxkv/cQEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeY4B1c3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeY4B1c3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1862C2BC86
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768785833;
	bh=AvrJ1auD6iTudFDmt9Dki1x+po/O0i+Ww1qzOLQwXmY=;
	h=To:Subject:From:Date:From;
	b=NeY4B1c3iR5z1q1pRJo5FICVB6WPDwLEgmN4Pwh0gPxWLqOPCJaltCMoLC2rZBO2S
	 yTbQTc7JmSIMFsxBVqBfhUAKyFPKPVLpC3XtUGyBpc1YqLtaEDODxHz+YIuqPVcuBK
	 /2bvf529OTmB4HeiGnnO/WWJJwOqNGtVYyAZIAaplIvqcYTs2EWCzVcnzDXre6Jp/A
	 858ZTpG+y1IS1NiFyvrCyNuCvM3lWn0UJCpCQEHujMqt/Ty7YDdic2I1Dk4SGBiU6i
	 2yF8kFqUb3ACR/r+cKDcDlhjKqUfdvmDvMNIZz5zVkvHk9+s0U2G7DNxkDrqVc4+o4
	 qvibDG2+RiHYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9071BC9830C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878583358.21976.18256703591334240324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffac385fe17017db9d4ed4b563b0aa6f753b02436b3582ded3acd35ab25b8a15
Date: Mon, 19 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768785833
