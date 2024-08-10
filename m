Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6C3134407
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723263954; cv=none; b=DiSIHkh7iefMubDBUHfukqu6Itf3OlAaGBmLY8avDpey9IF9Vn3xJ9SJjclfTjq3/kMw9ccBjObt2pqOfn2o8KlD4rxtIAw7quxPkHLVEsISAS2+6pU7Xa1bRHduIhS1kBC/N21oKcQ7jITe2Ge9Y5bNOFSbpz7VY3dgCB3iOKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723263954; c=relaxed/simple;
	bh=mDdJWQob2lu8nzwkynPJU/K55Fd6aOr5Zf+r5rdxqYw=;
	h=To:Subject:From:Message-Id:Date; b=b0wDXxQo0lqqfiGst29WjE8mRsWPo0lfltqV2DEAfikFo2eIZbZvX2hsTA2p0v0GakHHUxlu55rnhHPMgk+B+u/v6R7Rup7eSs8vV9uRye9njEKW0L2lzIlUoq1YC9fgWKTWd65+qS16y0JoRQLBfLrKcgvaFEMyTAqE0TShQJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q61q/JgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q61q/JgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8FBC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723263953;
	bh=mDdJWQob2lu8nzwkynPJU/K55Fd6aOr5Zf+r5rdxqYw=;
	h=To:Subject:From:Date:From;
	b=q61q/JgQeM2gOXo1GLyRXmWgcIddHuxRw5nDNu2lbluyj1C9+Wl41DXKiC0saaGf/
	 JK55uB9+GguJ9ZcHkDr5SEfpBpp1yeHS898erOnxjvPm6fOeUrdgAsTIZqFgHB7K5k
	 0dHlY5Gc1cchw9JGfakJ8zFrXpGyvxXxzRUERQUyf1SJq7UbILQzQ35sz4rLRnPuYk
	 jdj/jUtJEtWASXWMaQ8KR7P6tn0yDNLsyBMO2mG0veP+fmcuAw2U8XnSWfSWIB6P5p
	 Re+wb6aD5jHasJQZcE+RLazrMYwojD+CEfg+L3FyHYVVZ4qax7wiKLoaTQLCn8AkiX
	 0EjHChu3cVMuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977BBC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172326395360.11341.17173065000055555754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b8ba17b426053d08c5feeba00a712ea3abf616c3a574a4bd8cd07139dcf0b3
Date: Sat, 10 Aug 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723263953
