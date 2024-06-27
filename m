Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6735223
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719453803; cv=none; b=RNBGdt7fbZ7TRT0Wc24y85AAcJEWCj1tiLcAGSbNo5tZpJdn5zuWSyGSZXPTHMIsgBgtXoq1Gc2Kq88ueaWOu71R4x0IjTT6WYCxYDCBNOvOgwbBuCZ/vawM6BDIKjvvOUEeWAtnQR8i0pzoy7VH2ZjKtFUMZi3w/HfKqgtNyL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719453803; c=relaxed/simple;
	bh=IRF8OlGAgikSdhDyTkkzq5L9FnSumCSYssLxl+K+GPY=;
	h=To:Subject:From:Message-Id:Date; b=PbHKo9B5nB+uAJ9xMn2M3ASt0bDwkktEAik1Z/D6CSArye9cLZI5q85VLStFcRQo7FlimLyTZfy4BaKQ/4gRVABE9kzAXt7Rnr0cCwnInhvEXkOuR3REs9/K/AyCmCwwSu52jUCOurApBy0bb8K0ynm/df43xXh6cc7sSbCBSn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxqKHAAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxqKHAAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E53CBC116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719453802;
	bh=IRF8OlGAgikSdhDyTkkzq5L9FnSumCSYssLxl+K+GPY=;
	h=To:Subject:From:Date:From;
	b=HxqKHAAH6qTKgHFJR0Zpzqbn4CbV8JOqzGdnsY/bMJHZMcbgV5PGFR4aE3uESFl9L
	 ZkqEbW8ykGaeMwrNAbC34BlwjSZHwUyL4w5+Qw5hAbqMk0jiOvOnrkQVu9I3eygy/T
	 J9HzmUa9eLMmegNQ1kWZJ7SzlPfzoLH8qqgTCsDxuGGy9Zaiuv11mfQhwkbuPLgObk
	 HuDYfixAVylCxxhDNukk7c84HrfZ0bJh81I2iZrL64Vur/rHJmxOaqRcKZ/Qe+3Kou
	 UIG7RmcqXkK/wXURvhYvR9f/o+ElnrQsQL6JhfaqYXORHbHmUX3nowx06WUX4QVYOz
	 BC9Vze7zJiGsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E9DC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945380283.4229.12525907649069713500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a913c2af23cf7bff95fa2156cb5d1dec7056dbc849d94ab856a07ba9e60eb93
Date: Thu, 27 Jun 2024 02:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719453802
