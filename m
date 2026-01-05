Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10FE3A1E7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767656033; cv=none; b=Ny6Rztt3NwIjy5hi1g21taxRXcvJywuGFvxO4EGSefCUumCr8zzVKZ4I+S4RxWmNTrNjdxJjwq3Ko6pcqXT4xQyD0oVt8orVyU57IC12qS7lSdZNS8kUlA7AtVnKRt1gmGwCyZIG8Za2KqjWWyuIEZdsYJyzvsd21XV0e5i3JrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767656033; c=relaxed/simple;
	bh=uf6e29E1IKEVQZzmVzdzm3tl/XGiSJuohgnlJswgswc=;
	h=To:Subject:From:Message-Id:Date; b=H1FjW96dUiIgH/Abuy/424BKkm+ztESjIve7zihqGyEkN5ezUQ5ftUI3CPS8tvvFKvP9jfzcoTEssJJwkd0COAbmZSrkgsU6XOamhnzEffJxOeeH7GNgNWzzXtLLe6HqBST9ZMMTJ1EYU8vZ1qV06paWnbEzX00uqTqjCipgEw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHiS+Ndk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHiS+Ndk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F224C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767656033;
	bh=uf6e29E1IKEVQZzmVzdzm3tl/XGiSJuohgnlJswgswc=;
	h=To:Subject:From:Date:From;
	b=FHiS+Ndk/CvSC2iV4fWzXpHjK3m1ccs4BLpl9s8pMjSN+kncPHjCKIZVctobfbkpc
	 QcH0W5n/5w0gwm7g8mlbBYLu2WtYEoQMAftnF6RVQ0hn9AcmkH72IUa7Y5/f2LFLhf
	 Yuqr4zL2v3+SKVnl3n81HxSV7q9YsyA4uJCLmK1RuKXuHP0/m/7+jMB8U/OG/4tWFM
	 P2z/1rFri8/rpDMHWDBuUDBNWpo3Guk6QwsfAgR/rzEyrmsb9L1pmP3qT7a+RwRunh
	 etiOn8LiMIPfUqTKIdRzMyPfQLWgaBZkUAxaSg4NQ3JZOQ12zFArl1o9HbJvd3hBYM
	 s0Qnma9K+Lp1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC40CD0425
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765603357.14918.12506563145894708901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b396741f5e52ff10d5d2f9e7ca264a12972caeb740d8bac8b3a7158e9dc239
Date: Mon, 05 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767656033
