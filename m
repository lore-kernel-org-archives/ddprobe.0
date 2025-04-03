Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31177219E4
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743701394; cv=none; b=EwlsoCwH3Mh9Swhnsmy3DpcmR/CcKu/xDWVtOieAkE7QIjtCUPzDrb3oBE4cDjIWnr509gVKt8BYP9MmC4Y/i4rctA4euPEo3WbxU+RKGxjf5Y2qnPe9WBRA0YLwRqNyTb5ytsm4YPGj6lj2lzEmu/eWPfzpQBqduYpix/ns7BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743701394; c=relaxed/simple;
	bh=qd/Sp4b1aT3tzJMvw8nyU/BwzT6MYaTHanpVsx65qyw=;
	h=To:Subject:From:Message-Id:Date; b=RoLZ3+zdgFVIGZVcDgbfMYdhvE3/6qoEGzDiHF47khffz0GVLdt8FmCu1/2j/Nh2Wko0lvElIjcrNVT6xtq6oW9n9QXHNl6Ilc5U1Ab80Bn4+8hxLlOoDiO3DFIRuNRAuHkZ/G9WThOQbhcrNzARNJzYDwycZek4s5nZao0fCLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pg0Mm+RK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pg0Mm+RK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93B4C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743701393;
	bh=qd/Sp4b1aT3tzJMvw8nyU/BwzT6MYaTHanpVsx65qyw=;
	h=To:Subject:From:Date:From;
	b=pg0Mm+RKV5+E/XThM/J4M+id2ikOy3K5Y4BjwxqKTc98EEK95Ep4gkhAh1JrHvlft
	 6jiHwVLDANG7WiW6G67P9VTyiSb3Fm9uGYRRxGx+CBaHutftrFOyzjmQxqvsxRJkaw
	 GsoinZRHYSdZbx3dcYtkAWAfga31dXAqjOizQDSkUwBUIW4gvB58HETdp9o9jCkrgQ
	 LNETFqo48x5pc31OlYF37nmw4MRG+yfCZbb+l37ZdXNy/2eySALB9zyPNOA8TGo+yo
	 Y1K7bePPym4s/UDPtmX+mKHF4XPmznfE7eHyrs3s+ZAiisEqS3MpDYq5kA7pVubVOh
	 p99L+NXfMwZkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1AAC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174370139362.13788.14501814868963983290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81560a39658e5c0da1d2184b6b3833e2347230f7f1d5f80f882c2469dcc1d115
Date: Thu, 03 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743701393
