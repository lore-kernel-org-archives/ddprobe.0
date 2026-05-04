Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69A037B02B
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777932454; cv=none; b=SdT01npHivAou/0MISTNy9Xuggdb36s6EnZSC82g165RrB9F8T1Kmx7fBHB4Kznk1nvVUyqjJL7991K6gVlUz6RTxbfL9yxwm+g4AwvWlLYoWBHBXgrMiAnEi47QA/dSQKZVomJFj12bq1qGo9e/j58hZskSkn35G3rwB7NFm2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777932454; c=relaxed/simple;
	bh=Y2LM+gaPTBHGI51odm06Nct8FjAleQoZv/9xbCueV3c=;
	h=To:Subject:From:Message-Id:Date; b=PskyFl90cTxLHWlJ5dinMpi1sdFtGgsqKPNAxOrek7gn500sLl6MEmznk2ZhV5TIjaZ3q6LMNIwBBiTWjWzRt608LNnW01cCnfXTxelAVsoTOP/5Ls0lJO4cl9kY+NQnZ/GxCWageoA90076KG2S20UGWVFxGOdWQbar9TLTNmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEgidUW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEgidUW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D11C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777932453;
	bh=Y2LM+gaPTBHGI51odm06Nct8FjAleQoZv/9xbCueV3c=;
	h=To:Subject:From:Date:From;
	b=sEgidUW21uAo+eYNq5Z34CUvQLQIsUmKpbbrTiPRx/dE8b/XsvRk311lam+X1fSM4
	 r+YEhtinjLLZBaDFbQJxDWxy7PVLPltIp4Za/2NTN5j3tFFyrkFtHizVWJ1AjNUl/K
	 nT2CXBqVnJbBfmcbSUj7P1LWBYAj0KU+uutffYd1CH1lbYWopCpU3htLWOUTxflGJ4
	 g0VNoc4hTuvaQg8H1TSgNs+yQILK+72gtn8NzjM69VCsNMPPZQ05wAjqyfi/JJzpoO
	 lEa1eQD00Qb8TMSOEw9ulEDjEdrR43kCzhJ2yiMiDBsYDL1YM3h+LEG5X5EZDi+63D
	 /CNLXB0MmQ/GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA0BCFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793245373.6749.10706327756951317869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe3bd953a4ec258c8fdc454f9a3cb6460904afb128174d6bb10c13824f01f08
Date: Mon, 04 May 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777932453
