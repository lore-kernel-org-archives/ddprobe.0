Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D845547053
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792024834; cv=none; b=QaJ6JHKyKfiKaIWjQAuEhvVt7A6OkFAdTc7KZSLQ5OeDPDi6x8WaSGvoAACEgUBAG9ZiJZMA6AkUzBhUQd0BTo+Qdmsn8uwRfjIR/aPcLdDoBaFxYzlkOSU+qidWNXoOQuOiDPzWXWTcsvmVqCiKfQwH8KOwkX8F3UI/qXW5Uj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792024834; c=relaxed/simple;
	bh=5qEDV9ZlGRQO/gWwZ4Z3+UG0ak2Dnxfrv6iIxHPYGCo=;
	h=To:Subject:From:Message-Id:Date; b=fhtHlguqlMypnAM9jCZKxLJQQpFYWUp5O12287crAZ2P3IiHoYXjSbG4dRwEAIACCcDh2nD9qGGbkudyuOt0rmnFPO8PIMbKyhAFvmoNiNZUoW8kCKrAuIsp1sLi9udruggVxSdDGuwY4K9cprDMBkoi6UsLx5fpWzpTF1XvOVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoGfVfQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoGfVfQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFFDC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792024833;
	bh=5qEDV9ZlGRQO/gWwZ4Z3+UG0ak2Dnxfrv6iIxHPYGCo=;
	h=To:Subject:From:Date:From;
	b=KoGfVfQWSH9faklk9Cl0cT4EsvdVQi5s4OVNnqZoYXa0H5fqmIejJxClnhykIw9h/
	 0zIuUnD6WHdWqY2zBg0Pkz+FIo/l6UZOJU4IUOcIymiuJc50u4/mznvGFDmhKFpGUC
	 +1Xc6wgEH+KIBiy4fhe9esIab977N2MiKHvvk2eGo54GVAQXF4H1s0SY766GuBUlmk
	 q57ygtfySWa7sLX8aF+yLMcIYSVUsnS6ktvudRtXnD00ZzFqgRYyFG0XaIp6TUctG1
	 gmxwiW9ZWP+gveVEto9AP/yVXpnDPFh/u5vmn2yy8q64aFIX+ZMx4ao2LTvCoGTC3e
	 yslKuLwsHHr7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8A3CC6B30
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202483369.14023.9244079012316006128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0206659aae34da9498e54b3588f9ced1a05a44f44deb3f79019e28ae527ac0b9
Date: Thu, 15 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792024833
