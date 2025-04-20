Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79067184
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745107794; cv=none; b=jqssz3Q8Ggq039Y4R5gc4n0iNNZ85Xb3phT2khR+6oqdoQ7dlncqi0f1i2fsToD0N1RbC+ioNCly+UM6tiEidhLh5H6vkFrkN63QL1Q7XchDv6p5rB8juEbnxov3GR9BcE0AJrGH1TUu4HBUGnBbwPM4X0w5ZsemCFCft2QicL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745107794; c=relaxed/simple;
	bh=RnAjTjPNTU5lRmvuhE1oz1JdasyumjlvrO0tPbVt2yE=;
	h=To:Subject:From:Message-Id:Date; b=EJvS9XvKTfbCC0QEWjcODbzKKJBk8Iks1jk2e7bYV4/U7ew9lsRQS5lWrTp4nWpibF2NQF6kBK1j6dNvKrJrNhkaPbf/VgNxctHdkxjjRLMk3L/P9ZuGbWURlbykPd/4mV2i2S6cidWT34tNs/A90YXW8+/yZjivMz3xzj9LbnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7c4iHAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7c4iHAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B451CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745107793;
	bh=RnAjTjPNTU5lRmvuhE1oz1JdasyumjlvrO0tPbVt2yE=;
	h=To:Subject:From:Date:From;
	b=g7c4iHAZ4arBmYAl4KUrb6p9sXxEwptK1BtSjdoso1iA65bq5sf37RXLK1DUfei/F
	 Gt58e7EAKeVtMxEU7MlPCJrqBEGqO4B9aTkE+rZSDZ+2CD14AuqDbV+DUQYe0ggIvE
	 SNxbLgtKH0JF4jOAr9LNs1OfAp88fnWwfOztSAXdYpGebyf//zl7L8jsbAjielbuua
	 nB184x09tY4qMWnZ1+hvSF1j8WsSAEdmpwS8eE8OnVakEtqszhphV1QiWSEZh2Ab+N
	 41MYCtSAZX3tQxl50wmGcAwjwZyAFEBFMAsvJ8mLLr9/BelRoWWJIbkd40osG2hHqq
	 nC2Udr2LmnsJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F73AC369C9
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510779361.29172.6141501084433481381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2262af5dd3d5ecb537be1e6eeb4e4a0cc4ae984d28047ec45abdeffc109827
Date: Sun, 20 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745107793
