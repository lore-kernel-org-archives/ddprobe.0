Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224D722D792
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783891114; cv=none; b=g1AakjRfJa6joaFpxTcAtjVk7MsZ0tgDqNMzyJVLngbNhMY53t61W28BAeXP0smaPqM71snFGh/A6CoIXp9wOduFD3xCYe/Z5EUHdNOy2eSB8qq0AyOqesPSXTcHstrUowy6LUOiR3XCecgLrCK9Agevj09x5aB+rxEG8vX5QNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783891114; c=relaxed/simple;
	bh=5EY9rCU+ULFWS9Mu9wfgDFppL21NBgc0+Gl274CWQWc=;
	h=To:Subject:From:Message-Id:Date; b=XuKO4zTqsmnEOrY67Z7mkTbNPXZZOp82KLVCKJSobvcvHZjFsihWVCbAVf9RSQDL0yJ8urER/XXEq/tpnkk1CqP6p2vugBOJa2iQn5h6x+9lw9rSMOQucujB49CqanrQgBWFj9b6eslIACnBHMiy5la3hkeWSr6uzdKLny4Icww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gu8bt12r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gu8bt12r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5C8C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783891113;
	bh=5EY9rCU+ULFWS9Mu9wfgDFppL21NBgc0+Gl274CWQWc=;
	h=To:Subject:From:Date:From;
	b=Gu8bt12rBXdH5wfjNXAgh9Z0Ho9/+qfCpkAB5GpXExAkR8LjtSNbIKuOcKlm+c3OP
	 YOLflu9dgU5KVAMvOzn3GsF9W/P0cpSQUg2Ob1GqQ0lIMqd34zgQTLMKk5Eu1y6VRW
	 kccOIlcbnsXJ9kbcfE3XhsooSP/9AkN0G7zXfenzPszNd8CghL1YDUgKamcppymQCl
	 UNeP9Ftu9ZqxVJH2nz23y566cUVixWWS5CrDMbJrUfUbrNHi2WCeHrHdmoiK3m4HCL
	 0P/3hgCH0W3mYYxkpkU4kRCp64D1VyW0DCh3Oegb+FAtdbNd5VFrij3TKDRPblzhL6
	 Q3WZe7nZAURFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80BEC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389111368.13836.6021369722316524640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f8a0bdbf67a67b78f63815e4ef8b4263729b5fd167d005c4aa0fc8eeaf3329
Date: Sun, 12 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783891113
