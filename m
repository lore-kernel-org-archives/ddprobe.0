Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396E22FF651
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755357595; cv=none; b=g4xWRhpG5MIIbV1slI7xm24pAtQWjgzj88lAdPDN+dPNG7lIEbfg9n/D/QSvqZ0rai61Ry6NpuNrwYLSXg3LKYJ+OlAZnpUAtTECCtBGWNYE3R5TX6N+GtWB80w8uhz2wIGo/gvT/9oqZRtLqGqrjxnzJR4KKTeCWHHRdUkJTgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755357595; c=relaxed/simple;
	bh=vmZ7ZdGzZGGE9Sd0aK7CwdRkxZt6rVZ5czQJalLZ9qE=;
	h=To:Subject:From:Message-Id:Date; b=AJ+5uDjWjZd2Cn+bPLmoEvDbUm4PaovMhNXIKvMYvRezW88OUjBzWIQH7qAWpqaWRUVziu543JJAzadBpleIEUqBvJpGO+V4fyx5JtGcQN5scOtEIOA+7IEqO93imptvu83Y6+BkNV0WyCiPaUnOAFqCTprNCa5VvDB6zWoZD9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oF/m7tZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oF/m7tZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3416C4CEF6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755357593;
	bh=vmZ7ZdGzZGGE9Sd0aK7CwdRkxZt6rVZ5czQJalLZ9qE=;
	h=To:Subject:From:Date:From;
	b=oF/m7tZvOQTeMcaUZO1T1QmwRU76mD5RLZ6rjKaMBE5vc3GRU4/3by/nBwYJonYWz
	 kgPmU7TkbHNCRjWvEOwk/siIBxd9/KIsOChTT0wy4LuSfBAnOoISALFW8XK+WstdIQ
	 izT5pCeoL6yoPbsVdLYSjXTQzmN1LNSTbFIFBW8GAZ2D0Ir0EuZx+8FsImvnYSOC20
	 irUhpcrGEG8RLHrK2W+kaNC/wl4UOWLJtBgeHHHWeZZIvXZhabRHSZ7OpnCfCrWFaI
	 oC5GX/VIVePewqUD5fFRngjA4Hy6H5JHKbau5sBIRvFhGw+OUWqubK6BzAnjRCqTzw
	 7KyqC0AzDPVDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904C4CA0EED
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535759358.2837.2151607124340417394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3225550ccad56de9c7d6e3c20070fb904835d150083116951e65cd14a49d2365
Date: Sat, 16 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755357593
