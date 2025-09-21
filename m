Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0AAA41
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758413394; cv=none; b=aVee4TftKABKbWmbHJ5WJCNvrbMNsXuKtftiRqiKEbI0h3RHNzva8BDXAMGphMFhLqdU8gcLL76UgS5NazEfBD/QMjYt8ETNyhhxCc3fmVpRjaKxedrtCPJVPYPqqTC0kcbzENhu5VeaNix5tZMkZxLl9GKHgxIJww607oOL9Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758413394; c=relaxed/simple;
	bh=MZzR84RSvJdwNEos8/vi8bxQgW9mg0SWBKXxT3+1Fzw=;
	h=To:Subject:From:Message-Id:Date; b=KHuF2fGPSd6LkMZuzgnswiYNO/wpRy7CYgnBo2XenrptStA8EhZ1lWfY6E8n8dxVkKFAOBXqyM97jVSNOwTNvcfwQ5jhDXnwSvqdaf8qTODPb3yHAuR0WgBz8alTLr0yBxEgQGcWuQvEdWD7TBenCYqQyKxYOGAyw9revNubYxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6iys4Jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6iys4Jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A1EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758413393;
	bh=MZzR84RSvJdwNEos8/vi8bxQgW9mg0SWBKXxT3+1Fzw=;
	h=To:Subject:From:Date:From;
	b=a6iys4JpMkIrMWgVSfITllpyy0c8nIoL4cexSqN/sZbxbTBBBMxYUC62CHJznmz+d
	 qwsHv2myB3dELChMPM+yhDeRF424aafqMnS/BdKvCng7MI5Xmpr4hcJbILIqQHstt0
	 XymeLx8bAWn3DQ5u23pT124cgYKAQWEB4Yav3hQveEvc1jeSNjTxmEsPCYxanF/8dG
	 kFg+HqZ2KJgJav3fCXDeF3h7SqRDvx+te1Ipzjv18Po7z8mILGEx9xhQFndStX2cEl
	 psBj7MNd0KIGuCjzWgVJVlTrzSxWoQMrdZoc3P5a0dl2VKkokLfyduAEXP+vK7olgm
	 +0Q7HT0Ky9kQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F0CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841339357.26401.18160953951718679196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e52876e6cc5a6edf7cb48a2395f25ef0b2f877c133a7dea15698e69047ce88
Date: Sun, 21 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758413393
