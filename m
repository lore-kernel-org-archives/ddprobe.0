Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093891A5BB4
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765725174; cv=none; b=MUhkGzpGF++gn7bO4RaXF5a+JeNtWcb2PSbfmYaffyuzvQWvsqk0WxjBqSooxo896SKU0I0mDVCP7AaM+Na+Qm7sqtRuG0ypI6DfFvY72DWRMd08ZUtQoP9KouEAWswWE48JDvZQ7rn29Hn+vcEb4pjPXCKhBXTlz7+2yNJiIjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765725174; c=relaxed/simple;
	bh=nR0C9wg5dBk9qIWrC3MzYHKWEl+vcWxCKzMastiEARc=;
	h=To:Subject:From:Message-Id:Date; b=LTkFBu4XAlQLnXQEPIuS/0894bFz7JHUw1+S1U1R5C8x+GLTRjVnRKePRaaYRA9HVhh1iJfs3whQmPWkngPesi2leC2GuPr/Tn0m0fJ/SrkynE3sV+ZUvmJoYswmGgqYHh6k2gUHmCWzs0HnXAfXE3pfESXwKSDfu6EguayizFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhaoItH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhaoItH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80BCC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765725173;
	bh=nR0C9wg5dBk9qIWrC3MzYHKWEl+vcWxCKzMastiEARc=;
	h=To:Subject:From:Date:From;
	b=IhaoItH2VqbxH7ANGucs1VD/xZkljgF13YUYzwQKWpj3SlY4L1zbE4rRZJ4dIUEpH
	 1s+zI7I0uQturFoWM5cTmYAvsdF8GZCfih9K4gQVbS8Xz5jM5+pHd3+QEkCCq47v5V
	 hK+eemJ4GRzKqtuAwkdolxH5uj2D59KO8mCf9JO7XiwnjD3en900qXFJg23e62jgXr
	 GdnH+0/iALd8wUUe9CSKjT2Pg1mVzWpx2iGXL6ZIweSRVcpmycTrxKIK7S8RB+iL3s
	 drRy8cJ8yUVyGl7FED6NA1Eh+FO7uwtzsXQIbatYTqtOX/bMnaPz7dji4t1CcapXXZ
	 b+B305nITzoAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939FAD5B16D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572517358.31068.10326735328799428511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2973642e62218c039fc629b5c6c058da6ce261e07be9d44ecc8b8ab1f266d27
Date: Sun, 14 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765725173
