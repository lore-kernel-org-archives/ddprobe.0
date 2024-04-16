Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF1A17550
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713238163; cv=none; b=uPPbVDaWWDo4EVHJHTw7jgHDn8ov74I3/F0hRtL2djGW6kXdg0ZqnIzaVtRxgviZ43LtgUu4SyK9gsXXLgdgIkvQpJ6f9s6oz6hr374Bw2CH08BW8b8e5JayJ/hhhjlUtESUSlYhHPc6R/pyDPedWzMztdUVtATUElkAd8IZhNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713238163; c=relaxed/simple;
	bh=ap8jD7YGMiKf3kZWpFWoY1bIbI/KSHGZL8tbcbL6Gvk=;
	h=To:Subject:From:Message-Id:Date; b=p2nxFeCPUuGTwPI8UAj7PxjaHGZPhf1ByHMU+piWj04nsi4ZEctWEpQYUFYiJncMuuv5fLYu1ZVieDhNci900Fd2uZmox4LNtD/EWFQmpzZxHB5YcWNaNhNhcfAECyoTlRl7OGcWlcEbnsUxw+sJ8As8eWPj7AhM0jcCyPwoNzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+rmyV5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+rmyV5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D596AC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713238162;
	bh=ap8jD7YGMiKf3kZWpFWoY1bIbI/KSHGZL8tbcbL6Gvk=;
	h=To:Subject:From:Date:From;
	b=a+rmyV5M553iF0q5/JmZCsgW/DDriSH2V3Ho9guthScFzxa9GWy8K8DGHAjm+FCoG
	 C9JdisP3MdwWBs/+8dQes5QTgjy4ELAJL9nNmepjaK6eFVYnIQWppq+BAMAQxLtL69
	 caTRimQAgw51TBN/gWyhVF4lN5aJWuV8b493YV8jL+3fGt6nlnYVMHd7/FBDGmpNll
	 pP7aAN5pnjECvrqggTsMGIJ1xehUg+7dd6Kelbfv3U7y3ELisThqZO3aO0jYx/hncJ
	 CKqrPR1wMpQiYIcGQLc3fZTvO5mkRW7+XWADuB2POgwHGHEb/82t10T2Nv6ulxkNE0
	 uc8vFQZS7RFTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF24C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 03:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171323816276.18188.8831346146683137270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b267892086fde5bd968363b5f70b23d32bb00a76d8ae8a0016e775f8887bfda3
Date: Tue, 16 Apr 2024 03:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713238162
