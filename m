Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5037D2F42
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742876994; cv=none; b=UsEDz/7M7dr85Xt53xy17q24bcrNjuDEYXXKLqIDbXFCgkLr4xRsACrpbao3yQCV1DJ1gfMtDbEkT+Y6EzlXRSEKJcJ3LGhlb0qQO07e/jMapcF6T6u2a9enBG3QveOyx8nkaJe8DDOixBwibHjAqb3oMg7k177sR0F59PnatUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742876994; c=relaxed/simple;
	bh=u2utfaj/w+uFZ2EXOpw9zZ3pGOHwDSDr6MKOFSY+gag=;
	h=To:Subject:From:Message-Id:Date; b=obaSUHDufAJD4Z0aOfjxronOf+3LveaBosMcNZro6nbYXZgPwWQOcIB2ipR1fbzvhTK4zon1dJwDRjc9xXTrxLhP94PNYtaJF96BdkASMYMRtxTEe5psiaPKmG8Xq3PGLTL68D8eukjVHxXTKfImk+MZp7ncjGSe32+Xb83Mw1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/5fPNDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/5fPNDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBE5C4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742876993;
	bh=u2utfaj/w+uFZ2EXOpw9zZ3pGOHwDSDr6MKOFSY+gag=;
	h=To:Subject:From:Date:From;
	b=e/5fPNDVjU/Lvt1h7cxNv/L6WaFOurD3iurNBSgdSTsA7Ph5nK634q/IdHnmD8i5Q
	 akMc5C4f6wuPRhFFSjUUjuUs/sU8Zc9qRNUhHojJbRRw7dkVQZCf47bFtUZQhNMIUf
	 jWBokV3CSLSB7mz5LCO1LpzXUD6gGi9O5+phabZ9zz4AEYXH1tEpYVaRl8wTVYPI05
	 BZyN/gdSJwfXphkNNKSWl+ygbF4e7EdWEvrfYGEjC7uMH/6I6PG9xy5ombhOirlGnG
	 dyP+3/BVv9CI5X41NldVUNAoDPS19pO9FXQpsBQOpz9K4uYficTQU7P+cceX+sOUL5
	 +AlnAk+ZUqRIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34A0C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174287699362.17272.8614976225319149655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6008891ef629ed3b998ed9eecbcca64efe742c043c33be223457808151580f62
Date: Tue, 25 Mar 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742876993
