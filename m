Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F1C6F06B
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753219194; cv=none; b=lSrNshtIILTIWseMRXH2YY7wZoX6HDKXGXg5hTKVczIJzREL/q5zBLTv93iJaoHH9EROzkB9ggrn5GSfyXccgk/1mebPGr+lrhTwRNTISWEXwxlZKMXsCf2hH9kdIwZ+XQbmSL/1a4wH7tg8nNHJKf0rTeVtLZMaUje4xSYQels=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753219194; c=relaxed/simple;
	bh=SP8y81qDD2Hif6inOdkrWuFq3LIwOwsgVly6+ZxbGIc=;
	h=To:Subject:From:Message-Id:Date; b=NMHMk2WVH+WXWoejND+iG3bhx2it+tpu767Dl4x+UjIkCHzkazsmeEFaG/TS2rJA7r8BpVEKpZUXXDjderPOFMwu9zXxbhL2VnMbOPrpxMuKCk+Quqgp/ggYkqj4MsigEr7vsNObXN/l6n9qpGfCyi7B/kxLbg94ytwEGeQmBl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PI6hhQMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PI6hhQMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DF4C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753219193;
	bh=SP8y81qDD2Hif6inOdkrWuFq3LIwOwsgVly6+ZxbGIc=;
	h=To:Subject:From:Date:From;
	b=PI6hhQMGZlwKah0Mjd2b2KuP40x+IR4WvzsBabE4vl/7DjmDc1G0tA2kSXKHWow9H
	 XzgB26Mksz+ODbPJGOBerIBeaYEgyuiKsXspEK8cT1buHRn7Xgmp822ZAGeqZOWFDo
	 4dwgzCQioUF5WdawDjJVeLc/opo72LyLV00m/PUMoQueItlQjiLlDMoWwo8KNcp6M6
	 gnJ6V8KNCPmHXa7fZmYEWJ5buaA6h7NnLoZbmp4fVRCMLD/on+8yy/RWPGO37GFp7s
	 kEjieTKCZ7U6n+ZsXNswufCPW+fHo92GMNbB9XfawlDVWYKgpRee1fZwzu4Ornwtfb
	 5gHxpZdD3YVQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEDCC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321919364.30133.12923198435459589094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88982d5e1a89273f5d30100798132013d511b14c24f540f535e636f5093d4b6
Date: Tue, 22 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753219193
