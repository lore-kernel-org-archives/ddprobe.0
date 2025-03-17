Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A139200BB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742248194; cv=none; b=KBmGhjpKu2Ly0oCHwrweldO8f9uztMkUSUK7C9W9cHa4p2aRoYAk2U0u+AGpqcaf5b1kL40fuzb+RYvPCqzzLJ0LF1JjiWODhi6vcPaB3IFxiwQbDQRhrujGakAG87IBNkqxnoJfz5JfhSzGDsjlisUYNWte+9yNIyMew4G4n8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742248194; c=relaxed/simple;
	bh=Vb/u0FqOxj7okzGfAb8QvKaL2CQYYg8bmcyLnFCFJxk=;
	h=To:Subject:From:Message-Id:Date; b=PlnBpsDRwAnaiOml6RcWN2W2Aqq2doM5ZobCBhkEtwDJE4XcfdZTFXA88LkSu3sbHn7vjh61T3Bklirqiud0Ch4SIXaa5O73Ia1MIPXec+NpM3RYypPXG3pNRpih2v2yAhtn+ere+koJ2RJZk+vZWjyppetiAQ8mg/9vOzowFNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIWFYbmB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIWFYbmB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2551C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742248193;
	bh=Vb/u0FqOxj7okzGfAb8QvKaL2CQYYg8bmcyLnFCFJxk=;
	h=To:Subject:From:Date:From;
	b=pIWFYbmBU6zZ5dtSBFo4CqPy2xb/jSsIRFwiUFb/9Q+pxkt9VhgpJSd4w5jKPT8zZ
	 TCMEznlrfS28IwQro8AOBUx9hjMHyClgbgy4bKWi+7qPPJYCPd9mx5i3KyT3jUCQ8z
	 q+7RqrQQfAvVbUPRoDh9LRPN8M1roER+jA8NLRDSxyoLyMLSjm5AtEkYaPz9B+C9F+
	 A5cBXKj9x6Ji40+pk05j1qpyv2Kx7B5H6hTbck+3q1etDJqXyPPQg4ybv8K8KTYSFS
	 qKSLCADhEnWuImnhHyYjLXXOh09//NzluIZ3LO4qVlLnue1fwwRnRFgjWchKAPuLTC
	 /PBX9mqcXJ3og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EE3C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174224819365.27143.4665405050966412607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adfb15fd159f8410745413ddfeeff3a084e10a0abcd1e01bc58c06e9197a5f8a
Date: Mon, 17 Mar 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742248193
