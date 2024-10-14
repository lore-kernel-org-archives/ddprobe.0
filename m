Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E8E1E4A6
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728949554; cv=none; b=kxh607DqoWVMbzdxnLwnMspmwBUbv+ZnoRUwWMlgWLGq8akgviUoFBKZpyzeZlxkBXgTXdM1cKqK2SmIq+Ybfl9t2XL93Dou6aE8k7rYUtQBpDUy/01+sXHK8J53lehgtVI8jbCkpebOs2PRcnx/LeQKLPHLdvRM4bOzrCA00qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728949554; c=relaxed/simple;
	bh=MSnU5y2FSNkhPpQ3UCOOw1Io3D0NVlbRhaLnVH3E22o=;
	h=To:Subject:From:Message-Id:Date; b=a+oePlmSblXqZnNWnmWCmOZB47s/o0sOtEcUKGqtsQaXUmwq8ZKBZQbidUMdHL1YPDLQ1KqJIioFZPrvYjk7yNYjZ99vxTk8Luoo99uel0hhdZ/NsRdKDdaKBouTGHqITmKjHyMU1faZaWSPNLBWep8scQGdw3ePmlS6SMbO9CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6KV9VT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6KV9VT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A197DC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728949553;
	bh=MSnU5y2FSNkhPpQ3UCOOw1Io3D0NVlbRhaLnVH3E22o=;
	h=To:Subject:From:Date:From;
	b=Z6KV9VT2/tsU5HSVZVy8GuUVa4TjYWmIcSZEqJjotRI4BjocY2jDeCLbfDHqitsM7
	 F+HZW3cdAkbVPaWxcQptSpOCHe9UDaAHlmJyTPoNWRtf3A5YuQipe2z2EvT6SJoe9L
	 QM4DWWHIYzB0r3Df0wUBQx7/u5Tid6DB5x7FoCzXZopDYNUoM0wxYZfD4HuWAeppD8
	 DjMwemVzeodie0lzBwKqaMoX2t2pT1zVyo8bZdSPxeAhbJAda9EXXsjHKsoNctuwnq
	 5X5NGBIuyqG8jXDQzq7bKVGDLnb1GI0bKVJVN94b+R0DajRntBbyd9ARKlfpK4ifPY
	 H97HgT0WX+CYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E4D18159
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172894955358.4866.7232039955118951171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2253245070c5cb147736c4ad764d899845748a33dd54e5e271235045a24fe3a
Date: Mon, 14 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728949553
