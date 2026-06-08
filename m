Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C41C19005E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780892674; cv=none; b=Z5ORt6MO+vqQwhEN4+3BaVLW7kicX1u6c7jgzIfhVS8+T0ZUgY0pYULje9tn9diGziDrRRhmuHRgj1RHtjcFP+jtfmavy4/tJg29lBH+sLZV6x4bsX5GdA8fy02SMlumc2nDo7WmYVkHK75wpFDguQsnM0cWA3Mq9CQJ3Ysg9hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780892674; c=relaxed/simple;
	bh=VjoldPrs3TBMYNUISyMiDsKQSnMF+QPAiymVlqAO9U8=;
	h=To:Subject:From:Message-Id:Date; b=s8KSPaDb4ifqEepeznDCoXEG1qXbT3OsaIa145fiAMVD3zdIamRWMcZJihwe9QcC0sq6D5FQ4jwiMn2vP3wEcXSI0DTzT1JYUXZfif6gr7+e2xUssllg6+uhZoLKRfMGefkoDXJxxrTh59P80RlBjlMFe11MgAl43cyN55gHIFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHmDDA5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHmDDA5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D322DC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780892673;
	bh=VjoldPrs3TBMYNUISyMiDsKQSnMF+QPAiymVlqAO9U8=;
	h=To:Subject:From:Date:From;
	b=QHmDDA5CgkW4lgtiViFRv7YhiotLZrDcKU15c0wf9/cY8ISp8dazjHEqyCh2SNSts
	 oXQIEYPCmlnGOCjsMvg+N8osSbb3cbhfhfgM/DDLmwx0/InZ6aj3rRdTP3FJn+sm7W
	 gBXeyh7sCWHGM+2Wu2vdiYh4D2f+h2gEwnydpMpW5v140l55lDpqxffE2q4rj2iYmu
	 2ER5sqUVV0lSmu6MnhHcoxEmlzTC8/acFM6yLABBwreLjRnJVsT8DQlqABbKDYEmiB
	 SPHB239cS1fCTCx6E68y4fjqEgFp8GPcmiomtTlDsrNlqglV1WUKcEmWQcYQOP0udc
	 Gh9uGWgUGYIwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7185CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089267374.11757.3221967864623777264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abec90de6ab0f7249f5bcdb6e51c2e9dcd8f38fbca483944918a072d0b2b326a
Date: Mon, 08 Jun 2026 04:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780892673
