Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A78231327A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786116034; cv=none; b=kYp1+T9b/F6o9vigPQ8pjBDqfeg7fAj+XGq+7gn7aViP9xDsq2lD8+J4Yfwi4dSnOe6VVzA7x/Nwgw1ZEio7aKJ9XTjb4wsxcysn4cRgNd2saIB8Uvli7C0GYuLBwAxJV/m28Dizas/DQo6+KWfgb10D/ggUXbJGL4GoFfmXiGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786116034; c=relaxed/simple;
	bh=EmC9o6FppUNk0ricHMI/plgT7lD3ANgNq7J53Pq4/YY=;
	h=To:Subject:From:Message-Id:Date; b=WsiUuV8+JlIselzg0ZiHxExfBtxSVnxOa6McFZs60Z+MYN5KA7RXKQZ/bfqa8gmOx78aXtAFWMmwBHqOH5s3qv6OZ282ID7rmpagt6dPNpU4Zf/s0Uw94Jb2P0lFKEVXIHPl7ZBsMsXo0Hp1yCecG9ckYMiJcWn059rRIdhJLjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pO/45oXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pO/45oXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD47BC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786116033;
	bh=EmC9o6FppUNk0ricHMI/plgT7lD3ANgNq7J53Pq4/YY=;
	h=To:Subject:From:Date:From;
	b=pO/45oXV8EVS1lOXdWkxR1gGPC4LF2WzbJ61ml77JHCD1uYcJ+SmcOJDNP74D/SGC
	 V3Zxd0HccPLkI55SLbQsx/s2GLqtmjBsUlx24pdzbHbKR9AbQZg5ekJv5Fs/gmN6yi
	 no2V40bplXHvtk7ukOKlAkVWp19UgYW814oMgGwsDPFm54FYdiEXjLD4EU5gzo1p9d
	 YTQHeErgFCqvjAGwliqtGPnUtwft7Ed7hmfb+jlHi+9M2to49j8e4OL5Vreg5XeP6p
	 Z5Kgo2XtyofYcKE/7wIHtAYM302yFmOdWuVMDpKtH3JL7MuHbpwLvDvF1j2AgLW0/E
	 RtrJ9bgP0/36A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB4BC2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611603368.1717.13227587611662765068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8afefbf21f07d091c0c6ed52394e140d7717406a6c89c9991e5e0d6c090716
Date: Fri, 07 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786116033
