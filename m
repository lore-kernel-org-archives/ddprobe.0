Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5F91624E9
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761013793; cv=none; b=lK3qaRdSnQSd7wd4+nYstqGzE9Dt8/jCYQNVbhpVN9gtjGCex8cuBwPYPfCiJWOFstwYGKUmuTiED8f7KNQ4qyiqVy6lm2j4JWxyvHXOhfMojCcwalldmxi7xREC4Gk+M1YPa5Vs6YYCpo/psn1s5c0RmyMiN2HFzeIvFLbNeBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761013793; c=relaxed/simple;
	bh=PPx6UoqgKooucdNtcLsxPoS3I7jzREPco6iZilbxE+0=;
	h=To:Subject:From:Message-Id:Date; b=H0KVNPph4/su/OqFEVowvs4DeyjVIwWU2+xgZnoHsVfyr/S76U+hHtl9lA8gZDPSZa24hgyFqWBuR9fcJ9/pBGQA0aNfeIfvIOSnyJ1LRLMncbHMrTsjN/BYINifovnE3Qrd2jK6uEmBDLjrCwPxAIGqgOVK6SuNSGeUttgYHJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9RQZvKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9RQZvKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3F3C116C6
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761013793;
	bh=PPx6UoqgKooucdNtcLsxPoS3I7jzREPco6iZilbxE+0=;
	h=To:Subject:From:Date:From;
	b=A9RQZvKXiPhsMwI0Iw7f1LtJd+cSpiisAb84MsIQYZzeFGac2AlAH0sQxr5SF6iL3
	 1GNuq2uzXvIAFmTsRggkW6B4wsAARmFiyf/mQXvLbYAhZsHJiOVTIthM8x/6Wz2gpU
	 qt/nFLXvQPZ7OoRedoKuBWAr5QYv0oSlSd7A6H84TxlbqTlHN1A6IIaQ4LO/asCKtR
	 ngCWtupyly7fuPotvWgjeCbPYN30hhsT8inXASNeWnr7dpD6YIrOwaHWkCYKkHphvM
	 6zO02ShBqjw35dr4qmrGsYjRTvnobwOfeyxrPsMqgxSSLNVa3da3rPKO9KNvIjw7Qw
	 YUzDAgQVZyCWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DE3CCD1A2
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176101379359.431.15315584928197500869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b7280a7cc20928260baa7984e8e496f65daa4246170f5f51423d606e6210c9
Date: Tue, 21 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761013793
