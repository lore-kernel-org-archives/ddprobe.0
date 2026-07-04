Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C31120FA81
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783169316; cv=none; b=nDx1C37bycX1ni6Ql1MGAULeUDXwXm6AhW8GnybfsrLbh3raAhT2M5gft3k7Uq47M3GNrSrqje2mULZkZ33TPTlteESjamejEmBkXfJnRl+Hh4Lbk37RT7lV+frAb4EhH+M5pf5SQrGPOxwOq0f7EpqAHh8PrcQpPeUtQfu02ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783169316; c=relaxed/simple;
	bh=fA68sYzP2MWwS3i878Prd7+g+o1I5o5ztFJ3F0G0L+o=;
	h=To:Subject:From:Message-Id:Date; b=G5IoBC1YJec9hVBETvWX4AQxXyD2+WiUEhBA3JI35bEDwsfQ4cHyUtlY52ijCD4RXVWsdZZr0SCbkVHYE1eD0i7WbXM+lrRHNMNXYFr9NvUSAcdOIduL9eu3fnKOo5DpuKzjY3hfaGkOlAL3lIp24LXjKPWuxs5oShwWv210rqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNoqQAta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNoqQAta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B45C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783169313;
	bh=fA68sYzP2MWwS3i878Prd7+g+o1I5o5ztFJ3F0G0L+o=;
	h=To:Subject:From:Date:From;
	b=nNoqQAtaxPOTBtHwswsvEVNXBePVhzQhRdEVlxp5+f6WZeVMPki9lzhoDowgjne7J
	 3/Nfz+It6LVOCz7iTaU4l1nk09fBJPJcNnhmUf9BRaWtZ2XoLCF15tGPQ5IDSPEPW8
	 qhaxRg/A+o9YCoXNDId4kJG/4vgsU5mRneqniXoETMsG+fvqaM5kZiQP2Rl7ZEzHQL
	 e6t3BaJ0lyXBSfYBVCRN5oPGqsAG/66E82sHF+hRkrVw8M4M5omsPRKHPpzFdSXnC7
	 3aZBjPkB6+wD//dpf6e9suKu20oyuYW94O16AczHBsJI+M9NSUXkoInF5JaQFuej+c
	 cj6yt14UpFxZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EEDC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316931368.11560.11615156381082089360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa17fd5cf426ae0c1ce17539ba153e780a7fe06f68284d1ebad9d1ced44d306
Date: Sat, 04 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783169313
