Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5906A23F27B
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765754574; cv=none; b=fjeGYKIlmH2tn/+mLbyl5i0LlDIthp64wT6tbU2YBlKOALYZ/YUsxbA3dsq0i/AvvrbS2ch2PeBbZnhRLhKSKRzEpawpCERAUrUKmn+GmGsUPKGZRW+iiO6/PbYl0v9XViCK7kUsUGv4HS10bTA3dfaDDzzUNyX+Dq0lcz9N0YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765754574; c=relaxed/simple;
	bh=XLB6X5I1SJV8B/UXcCyUZ88xnAuYFy5KeCcg2cKW3ao=;
	h=To:Subject:From:Message-Id:Date; b=q7jFH1mGK3JHE1ICooB3d0uDWiS9Pp/WNZzWsUQNeei7fRVo5FEln60S/UlCBXT2npiD0CituA1X52bzfWfPowA83yNmrPhZ2weykFZYwODf8DMit6QlNbDC5fqR7EpDfJqbA77tw2fghWeDUX/UrpKylzohbuo79xs6epG+gsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gg+zd0Em; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gg+zd0Em"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D120DC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765754573;
	bh=XLB6X5I1SJV8B/UXcCyUZ88xnAuYFy5KeCcg2cKW3ao=;
	h=To:Subject:From:Date:From;
	b=gg+zd0EmZIrYC4Ow+UmXAq08a+7+Zj6ipdvFjilaSicKysN6dzOblV/P1qxcUf3ks
	 d+HQlhU/I1GpV9QU/v7SAk2qAVkNnUg8xVAEzJidlAfsxL5Txkm2+TUsmuFH+lMgNi
	 OfRoX51QeB8YflF4BdiFYTAWDs0F8fFY+meu49PiaaM00FegDETOr+rhiqhK5P6qbJ
	 hRQNNRp3HEh2Jf/1zswSZi6aeMKiHnQbmHZIps/D6nq9wu0tedSchi2BQ9idvVQH8h
	 CmBu9QAUQiSOiJs+9LL5Ek6zuVUcl9C/idzkyg8F+q116DzNY+z1Lu48PSEfkvpw1C
	 Y4E6t+eESjZpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5E3D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575457374.3657.3548364613982574329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5abbfdf775a45471e36159bd0049f33947a54bc332f247c83435418c948d44b
Date: Sun, 14 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765754573
