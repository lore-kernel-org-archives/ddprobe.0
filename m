Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3266B482F2
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753793994; cv=none; b=nTiJFF432zje/eUUQ1U1/nJ8/v3fbZ+ZzJr8XR3n8J3KPB6n2i0bgcnJWV+i0gp+Qlz00+fikRfwG9Mpd6afGXM25BBjeJ3CdG3LeSSiC90G3FPUsU56OwN9uDRUG2153fnnaRjpak5y4Xv6xAWXGHYiPnmBz0iYaVmQQmvzsuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753793994; c=relaxed/simple;
	bh=xfj3RLcZ7rVdjjKFpTRHktZ3cVVkJvJRAoIWUTJ7tmY=;
	h=To:Subject:From:Message-Id:Date; b=i/otiZsLJMWDTGsQ5CYTTM+iCzhpNWDgpMaPhcGefKcT5kNY/ao94+4tn4I/GOutBxs3zkMGxWOVOXFUrBmwMiDu6bl2x7vX0H5ZnPqToz9YyHHvNvPvL+lBisyztiMrLlNPbCkAZxIYWA8AuWO3AlHFVwQtuyUS0E8CmqNdg2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/odraE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/odraE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C11C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753793993;
	bh=xfj3RLcZ7rVdjjKFpTRHktZ3cVVkJvJRAoIWUTJ7tmY=;
	h=To:Subject:From:Date:From;
	b=E/odraE0tJKRvf97ml3SEfxP4JX7ld3koa/1flonkOTwFbvWdZqE+jxsVjuWwPmRV
	 gYxYFs4nljcsnDyFSVIJB8vt/5QF9mwfBxOCac4PVdu2IlThLvSZlE7HITEAS6aCkV
	 ZzjAc1LysgJ1tmgwRdJz2F3yH0AZvsSGWZZuUWRqiDiTiJlphpL8b5d7vPKsQgBOpH
	 DWtBsszG3uxoQG860uJ/20cuNa5H1VnLjrbklEha5XBoawLGL7v9LRWd6XIb+AOwrr
	 NQeq6Is2zm08HF5RveMKhxm6KV/k6vUb/Vk2hyiU6EwPXiCV7EztvWifMGVIHg6nnt
	 0GYMP7Op+sCUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9174DC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379399357.22261.7782365166099342795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5ac91c5dfb1c907e9e2cfe732d16f7468a8b09e73bbe73bcffeeafe9ed94b5
Date: Tue, 29 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753793993
