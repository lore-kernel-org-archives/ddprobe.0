Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E64A10F9
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744566594; cv=none; b=AqjAHX7TNf9xq2uzymF9BG9aCCUbVg7rWuHyGQ3vunVK5RjJV9LDtObrw0L1ZqWeicjU+LRPLrF09tFv6w5YNfyBn+QABq1NTtxWHrxJ4t+5oOiWWK3kwfQniLYsLmmwk57QFKJZYnm2XqTZMm0GHrqAUTYHpqi2EjaCzlldTjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744566594; c=relaxed/simple;
	bh=dNHRLgsBAjcCR9oeyqPlLvDaNB6LbN8QlUbocQEnVOw=;
	h=To:Subject:From:Message-Id:Date; b=tYWWap2z5UL/OAw2EbpTitpGo9MApVQnt+ZJYaXn8bzk4iniox2J31G7qnMWZmq4RGwDmuFsvLfnTE2RETdePvH2NJE5IpDtnquRDe6+4f2/Z9XmysI6boHqxVqlcoaoDYvmZwZrq8OmBJb7OZWGAhSOasOUMtCiYRC+wjZW/RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKFRGtWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKFRGtWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCA0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744566593;
	bh=dNHRLgsBAjcCR9oeyqPlLvDaNB6LbN8QlUbocQEnVOw=;
	h=To:Subject:From:Date:From;
	b=HKFRGtWfquyR2mYrKJlrKi9q191XfB+RyQWgwXHVmcpAqBTe5Y7+7NNIGAKlPPlTl
	 WDGjgcUnP0Hm5QGvR/1zPMaNw8MHPZU0Vy5I56zlRzNixDuoZRvLskLJ/Tta4QmxqR
	 B95YPVlX9hsdTF6LL3k9qx6+kdro9PZ4G+tIYyf/z+45CdveQtkO/9uDojeCrTN7C0
	 pMjDUQOGdC/a2qdbRLetEZO3YnOD6a1zme7sDBQhd4ifxLzqXIykglWsftIVvB9Lnz
	 jHWrx2CJOzibAGcU8bQWvRLN2v2sovcDVKwXktnFXiMHL2lUQ6IJd9RbIfXuIGO/6n
	 lYNYfPgZ6rUSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11BFC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174456659363.22934.5987536549222344368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3207e52d74eb1a1beb135447e11ff92067458c2dea4f40a557b02ba187d1b2e
Date: Sun, 13 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744566593
