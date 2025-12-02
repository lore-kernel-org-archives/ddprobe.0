Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C3227FB1E
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764673374; cv=none; b=gJReYIufJ8yBxFXWj2iJmBvV3Tzqj3favBrMjamGus93xS/f/8ijVd+AxtL+/HrlgjeILyL47A3lAQKZ+3q6kQKNzvNZ144r8TvMRjaq0ldxHvNW77BhH9Xe7lnr7WVPEXtRUsj11bHY2gfRctORAx+mJoGdvhtE71nnrURq9x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764673374; c=relaxed/simple;
	bh=pu+y+v7EJXbdW1qVAziJOxsGGfU1pC9uhyXnbsq9eFM=;
	h=To:Subject:From:Message-Id:Date; b=ufesjPov9JGjM1zwH7urIUc9iw+l7ZvjRNtXQC5Oes4sh7U0r6bkyahcfMjDzwyzXPzih/Pu+z1jBEPnOLKSccYebqav/yHL77CfoPeQmhefKq1342Ssv0cswAcMfMcvm+2MfMXrb3fq3t//WM/4GynpUttaNqFSeGKbIpuOh5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8uOQXUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8uOQXUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61B0C116D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764673373;
	bh=pu+y+v7EJXbdW1qVAziJOxsGGfU1pC9uhyXnbsq9eFM=;
	h=To:Subject:From:Date:From;
	b=p8uOQXUPqsuXozL2PjXJMqeK8MftY15VdivjHK0WKQaGV4EXf4YbLSWlWNxkyTFmC
	 eB3ESbTI/9FsCQBXLRZ6p0SlOeDIjpq0eSYKpLmViM1nzdsKXvIW9iQc0YIgbPSjUV
	 dyOjvSXOPSt++CD1/tNTEDpeBM8i/3A0VhYK590yXYp+6bc7dUKfHNFcBsKHnyYCqd
	 ljEyVBsHelrXF1xqoZwG+oIFu6gWqFj59n0iGMYtJcax1fuTyMnBJtoiGbHMx5NJPV
	 MXQiVt0K8+Vh5KGg+KJTbCfaXkENgoZJay6r9D2cKuLdG/eR4akOevWzWQXfeSQg5E
	 YOqum1fs6R3Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C45CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467337359.20127.10115855207315650074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75eea1b2fe98a42c449da96eab0efb63dbc8807ed774c4727c20369a979e6df4
Date: Tue, 02 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764673373
