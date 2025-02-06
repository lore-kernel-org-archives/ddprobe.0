Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C41F18B477
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738843554; cv=none; b=Zuk6mlM+hxAn8ENzZV3r5LZNQk4+emb1rAFcZbOrCA1nmlX4MwW82otEhqH/xpvbPGzH8ds2VFPEb9gYfNTc1ppa/p73+NTJHnlVGxkDcAkZzUbphSv6shq+lApdA1YbxHYsC5wXxjNc/ueqZcNcTMkeUnjkIDnUTqmxh4H2FjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738843554; c=relaxed/simple;
	bh=H5j7t8n4MJkNfmbw7NuzxNIYK8UyHDQZreqpWC4G2Ao=;
	h=To:Subject:From:Message-Id:Date; b=N9AbVQ85vbs22wltpOJCqQtJcgpPBBqoUWrzC8KXKEecP0uD9MLpWYOuy3vQya7DfRF7UBbkz+aNjpXtsx/u50Stpah1wb4f7vFfLichuvI6x3ixsjZ31oYZLAIUgQQxccrydxF8L2x0pIhWLVGnnZpAvP0dDP4rPHkOBtoXtvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMeKAKcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMeKAKcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC96EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738843553;
	bh=H5j7t8n4MJkNfmbw7NuzxNIYK8UyHDQZreqpWC4G2Ao=;
	h=To:Subject:From:Date:From;
	b=kMeKAKcLoSK7sEC742KvUQWcRf1PNJr+jT//B9nUJWm9I+HilWvK3jQRK+hAIkTEr
	 GKdziJLwtPxww4OU4OuLJyDtyExvl1y2kXLD8gn58CSjC50NP3E4IgOyp6P8TXkMwc
	 PDIy1a5Ok2F3Qtt0XXSfDMYT12ybfGr972HbLe6Lg9kEzJDzSVvNc2SRBX9Qoaz6RX
	 bGiLIxVDerHC/lNmymNioBB9SKMqWzFUoeziBiNkQmMFMC4uvlURsG9ZWeGhwYRpIY
	 00lP/ebYsAroTRsfbQdc76bc/PxkH4F9Yhn8wSBGUk0E3b9t1MZA7t3QEJf2S7EukU
	 NwcG0b8FVcc2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92AFC02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173884355368.19327.9446393803815655926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637207988eebea9b18287a3f0b281bf3ca95d1757afd2d30444182729e0f5f75
Date: Thu, 06 Feb 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738843553
