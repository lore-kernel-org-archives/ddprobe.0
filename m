Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A7BDDC5
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783250914; cv=none; b=S7b3xGNvk3rMb2Looa/F6D/IFVCYb3k7yhNKsg7c2cVegYkgAE4v/E50wQcndB7FAKje49wdgZkggVOfxgyH+TggZHP0etK3I0W44qfqPPI7oOwr3vwnhoyKG2PSjX9hAiwK/5xJvlewTwvglmIiyT7z5YuM/YI9SYbZp3u3luE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783250914; c=relaxed/simple;
	bh=USoAVfOj+3HQ38aWXtaNdzWWxFR8AZ3VKubW5+GtX7o=;
	h=To:Subject:From:Message-Id:Date; b=pPyxEIVLMmQOZt4KshgkouWcECdWqgYmWpimkNsHwHz5/RcRXS0SLOWVNTg158JUJI1mchkrM9Bqh1NLQqai+MVyLcIIExaub2zTK0qdR8Quk5kgG+lP+OGGo64+BiP/4tYLEphmxvRs1wdSIYnPc415phGPCYCHam5KL0VsnNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lo9roUI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lo9roUI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36F8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783250913;
	bh=USoAVfOj+3HQ38aWXtaNdzWWxFR8AZ3VKubW5+GtX7o=;
	h=To:Subject:From:Date:From;
	b=Lo9roUI+YcKFcceYwz4CrqNqdYh80H7uG28oyVrwGRUL0PzMg50dwQ+l5Wz/xQC45
	 elJqTyw29JCac1OnUoUatA0OyuYkiiVRtRM90vKLj5gHOJmcRtB0FLc/dNjiBx/NI7
	 /wJSAy6rxzKKqKWqWTEog1JNjGSILc9Sc5wSid9kvJBC/XCquFDRJBXJRSCrlkNiiu
	 FVuiNLwoftTgY3Wv/NrabILJAceZpECdX9oaRJFMzmpMz4KpdsbR0g4ykDWd70lMOS
	 0aUDEtfzmt36gaQRv+0ns2wZtpqA8EgBJipVFhzUEpqccf08SjBhUBgl2NLFi4jdpV
	 WFT4v+m+mWFog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE23C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325091368.1976.8427087336819901359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1544f2c9ff805c14cff8e6e5f68877a2a0440ce7dc6ac2bcd4d5d6fadf122b79
Date: Sun, 05 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783250913
